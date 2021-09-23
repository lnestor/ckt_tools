import argparse
import copy
import os
from pyverilog.ast_code_generator.codegen import ASTCodeGenerator
import pyverilog.vparser.ast as vast
from pyverilog.vparser.parser import parse
import random
import sys

sys.path.insert(1, os.path.join(sys.path[0], '..'))

from parsing.ast_parser import parse_ast
from helpers.ckt_equivalence import check_eq_with_key

def get_decl_names(moddef, cls):
    decl = [n for n in moddef.children() if len(n.children()) > 0 and isinstance(n.children()[0], cls)]

    names = [c for n in decl for c in n.children()]

    return names

def get_ilist_names(moddef):
    names = [n.children()[0].children()[0].children()[0] for n in moddef.children() if isinstance(n, vast.InstanceList)]
    return names

def find_Y_candidate(moddef, randomize):
    if randomize:
        candidates = get_ilist_names(moddef)
    else:
        candidates = get_decl_names(moddef, vast.Output)

    return copy.deepcopy(random.choice(candidates))

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

def create_comparator(moddef, key_inputs, primary_inputs):
    wire_decl = moddef.children()[4]
    wires = list(wire_decl.list)
    items = list(moddef.items)
    xor_outputs = []

    for i in range(len(key_inputs)):
        output = "sl_xor_0_%i" % (i)
        xor_outputs.append(output)
        instance = "KeyPIGate_0_%i" % (i)
        xor = create_ilist("xnor", instance, output, [key_inputs[i].name, primary_inputs[i].name])
        wires.append(vast.Wire(output))
        items.append(xor)


    or_gate = create_ilist("and", "Comparator_And", "comparator_output", xor_outputs)
    wires.append(vast.Wire("comparator_output"))
    items.append(or_gate)

    wire_decl.list = tuple(wires)
    moddef.items = tuple(items)

    return or_gate

def add_mask(moddef, comparator, key_inputs):
    wire_decl = moddef.children()[4]
    wires = list(wire_decl.list)
    items = list(moddef.items)

    input_names = list(map(lambda x: x.name, key_inputs))
    key_or = create_ilist("or", "Mask_Or", "mask_or_output", input_names)
    mask_and = create_ilist("and", "Mask_And", "mask_output", ["comparator_output", "mask_or_output"])

    wires.append(vast.Wire("mask_or_output"))
    wires.append(vast.Wire("mask_output"))
    items.append(key_or)
    items.append(mask_and)

    wire_decl.list = tuple(wires)
    moddef.items = tuple(items)

    return mask_and

def insert_mask(moddef, mask, Y):
    for n in moddef.children()[5:]:
        name = n.children()[0].children()[0].children()[0].name

        if name == Y.name:
            node = n
            break

    input1 = mask.children()[0].children()[0].children()[0].name
    input2 = "signal_from_circuit"
    node.children()[0].children()[0].children()[0].name = input2

    items = list(moddef.items)
    wire_decl = moddef.children()[4]
    wires = list(wire_decl.list)
    xor = create_ilist("xor", "flip_it", Y.name, [input1, input2])
    items.append(xor)
    wires.append(vast.Wire("signal_from_circuit"))
    wire_decl.list = tuple(wires)
    moddef.items = tuple(items)

def get_key(key_inputs):
    """Gets the key value for the SARLock circuit.

    """
    key = {}

    for i in range(len(key_inputs)):
        key[key_inputs[i].name] = False

    return key

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Add a SARLock block to a circuit.")
    parser.add_argument("verilog_file", help="The circuit's verilog file.")
    parser.add_argument("-o", "--output", help="The verilog file to output to. Otherwise it will print to the screen.")
    parser.add_argument("-ce", "--check_equivalence", action="store_true", help="Check that the locked circuit has equivalent logic to the unlocked circuit.")
    parser.add_argument("-kb", "--keybits", type=int, help="The number of key bits to use. If omitted, defaults to len(inputs) as is normal in SARLock")
    parser.add_argument("--randomize_Y", action="store_true", help="Randomize where the output of the SARLock block will be placed")

    args = parser.parse_args()

    ast, _ = parse([args.verilog_file], debug=False)
    moddef = ast.children()[0].children()[0]

    if not isinstance(moddef.children()[5], vast.InstanceList):
        import pdb; pdb.set_trace()

    primary_inputs = get_decl_names(moddef, vast.Input)
    nodes = moddef.children()[5:]

    Y = find_Y_candidate(moddef, args.randomize_Y)
    key_inputs = create_key_inputs(moddef, args.keybits if args.keybits is not None else len(primary_inputs))
    comparator = create_comparator(moddef, key_inputs, primary_inputs)
    mask = add_mask(moddef, comparator, key_inputs)
    insert_mask(moddef, mask, Y)

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
