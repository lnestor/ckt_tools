import argparse
import os
from pyverilog.ast_code_generator.codegen import ASTCodeGenerator
import pyverilog.vparser.ast as vast
from pyverilog.vparser.parser import parse
import random
import sys

sys.path.insert(1, os.path.join(sys.path[0], '..'))

from ast_parser import parse_ast
from ckt_equivalence import check_eq_with_key

def get_decl_names(moddef, cls):
    decl = [n for n in moddef.children() if len(n.children()) > 0 and isinstance(n.children()[0], cls)]

    names = [c for n in decl for c in n.children()]

    return names

def find_Y_candidate(moddef):
    primary_outputs = get_decl_names(moddef, vast.Output)
    return random.choice(primary_outputs)

def create_key_inputs(moddef, count):
    portlist = moddef.children()[1]
    ports = list(portlist.ports)
    input_decl = moddef.children()[2]
    inputs = list(input_decl.list)

    keys = [None] * count

    for index in range(count):
        name = "keyIn_0_%i" % (index)
        port = vast.Port(name, None, None, None)
        ports.append(port)

        keys[index] = vast.Input(name)
        inputs.append(keys[index])

    portlist.ports = tuple(ports)
    input_decl.list = tuple(inputs)

    return keys

def create_ilist(module, name, output, inputs):
    out_port = vast.PortArg(None, vast.Identifier(output))
    in_ports = [vast.PortArg(None, vast.Identifier(name)) for name in inputs]

    portlist = (out_port, *in_ports)
    parameterlist = ()
    instance = vast.Instance(module, name, portlist, parameterlist)
    ilist = vast.InstanceList(module, (), (instance,))

    return ilist

# def create_single_xor(instance, output, in1, in2):
#     id1 = vast.Identifier(output)
#     port1 = vast.PortArg(None, id1)
#     id2 = vast.Identifier(in1)
#     port2 = vast.PortArg(None, id2)
#     id3 = vast.Identifier(in2)
#     port3 = vast.PortArg(None, id3)

#     portlist = (port1, port2, port3)
#     parameterlist = ()
#     instance = vast.Instance("xor", instance, portlist, parameterlist)
#     ilist = vast.InstanceList("xor", (), (instance,))

#     return ilist

def create_xor_gates(moddef, key_inputs, primary_inputs):
    g_gates = []
    gbar_gates = []

    wire_decl = moddef.children()[4]
    wires = list(wire_decl.list)

    items = list(moddef.items)

    for i in range(len(primary_inputs)):
        output_g = "g_input_0_%i" % (i)
        instance_g = "KeyPIGate_0_%i" % (i)
        xor1 = create_ilist("xor", instance_g, output_g, [key_inputs[i].name, primary_inputs[i].name])
        wires.append(vast.Wire(output_g))
        g_gates.append(xor1)
        items.append(xor1)

        output_gbar = "gbar_input_0_%i" % (i)
        instance_gbar = "KeyPIGate_0_%i" % (i + len(primary_inputs))
        xor2 = create_ilist("xor", instance_gbar, output_gbar, [key_inputs[i + len(primary_inputs)].name, primary_inputs[i].name])
        wires.append(vast.Wire(output_gbar))
        gbar_gates.append(xor2)
        items.append(xor2)

    wire_decl.list = tuple(wires)
    moddef.items = tuple(items)

    return g_gates, gbar_gates

def create_antisat_block(moddef, g_gates, gbar_gates):
    wire_decl = moddef.children()[4]
    wires = list(wire_decl.list)

    items = list(moddef.items)

    def f(v):
        return v.children()[0].children()[0].children()[0].name

    f_g_output = "f_g_wire"
    f_g = create_ilist("and", "f_g", f_g_output, map(f, g_gates))
    wires.append(vast.Wire(f_g_output))
    items.append(f_g)

    f_gbar_output = "f_gbar_wire"
    f_gbar = create_ilist("nand", "f_gbar", f_gbar_output, map(f, gbar_gates))
    wires.append(vast.Wire(f_gbar_output))
    items.append(f_gbar)

    G_output = "AntiSAT_output"
    G = create_ilist("and", "G", G_output, [f_g_output, f_gbar_output])
    wires.append(vast.Wire(G_output))
    items.append(G)

    wire_decl.list = tuple(wires)
    moddef.items = tuple(items)

    return G

def insert_antisat(moddef, Y, G):
    for n in moddef.children()[5:]:
        name = n.children()[0].children()[0].children()[0].name

        if name == Y.name:
            node = n

    input1 = G.children()[0].children()[0].children()[0].name
    input2 = "AntiSAT_key_wire"
    node.children()[0].children()[0].children()[0].name = input2

    items = list(moddef.items)
    xor = create_ilist("xor", "flip_it", Y.name, [input1, input2])
    items.append(xor)

    moddef.items = tuple(items)

def get_key(key_inputs):
    """Gets the key value for the Anti-SAT circuit.

    Currently, since we only use XOR gates when combining the inputs with
    the key bits, all that matters is that the corresponding bits to
    g and gbar are equal. Therefore, we just choose a random value to assign.

    """
    key = {}

    for i in range(int(len(key_inputs) / 2)):
        value = random.choice([True, False])
        key[key_inputs[i].name] = value
        key[key_inputs[i + int(len(key_inputs) / 2)].name] = value

    return key

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Add an Anti-SAT block to a circuit.")
    parser.add_argument("verilog_file", help="The circuit's verilog file.")
    parser.add_argument("-o", "--output", help="The verilog file to output to. Otherwise it will print to the screen.")
    parser.add_argument("-ce", "--check_equivalence", action="store_true", help="Check that the locked circuit has equivalent logic to the unlocked circuit.")

    args = parser.parse_args()

    ast, _ = parse([args.verilog_file], debug=False)
    moddef = ast.children()[0].children()[0]

    if not isinstance(moddef.children()[5], vast.InstanceList):
        import pdb; pdb.set_trace()

    primary_inputs = get_decl_names(moddef, vast.Input)
    nodes = moddef.children()[5:]

    Y = find_Y_candidate(moddef)
    key_inputs = create_key_inputs(moddef, 2 * len(primary_inputs))
    g_gates, gbar_gates = create_xor_gates(moddef, key_inputs, primary_inputs)
    G = create_antisat_block(moddef, g_gates, gbar_gates)
    insert_antisat(moddef, Y, G)

    if args.check_equivalence:
        expected_key = get_key(key_inputs)
        locked_graph = parse_ast(ast)

        unlocked_ast, _ = parse([args.verilog_file], debug=False)
        unlocked_graph = parse_ast(unlocked_ast)

        match = check_eq_with_key(expected_key, locked_graph, unlocked_graph)
        import pdb; pdb.set_trace()

    codegen = ASTCodeGenerator()
    rslt = codegen.visit(ast)

    if args.output:
        with open(args.output, "w") as f:
            f.write(rslt)
    else:
        print(rslt)
