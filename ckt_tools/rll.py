import argparse
from pyverilog.ast_code_generator.codegen import ASTCodeGenerator
import pyverilog.vparser.ast as vast
from pyverilog.vparser.parser import parse
import random

def key_input_name(index):
    return "keyIn_0_%i" % (index)

def key_gate_wire_name(index):
    return "KeyWire_0_%i" % (index)

def key_gate_type(negated):
    return "xor" if negated == 0 else "xnor"

def build_key_node(module, output_name, index):
    xor_instance_name = "KeyGate_0_%i" % (index)

    id1 = vast.Identifier(output_name)
    port1 = vast.PortArg(None, id1)
    id2 = vast.Identifier(key_input_name(index))
    port2 = vast.PortArg(None, id2)
    id3 = vast.Identifier(key_gate_wire_name(index))
    port3 = vast.PortArg(None, id3)

    portlist = (port1, port2, port3)
    parameterlist = ()
    instance = vast.Instance(module, xor_instance_name, portlist, parameterlist)
    ilist = vast.InstanceList(module, (), (instance,))

    return ilist

# Add in NOT gates at some point
# Do I need to worry about line numbers?
def add_key_nodes(base, index, moddef, negated):
    portargs = base.children()[0].children()
    # This won't work if output is not in first spot
    output_name = portargs[0].argname.name
    module = base.module

    key_node = build_key_node(key_gate_type(negated), output_name, index)
    portargs[0].argname.name = key_gate_wire_name(index)

    input_decl = moddef.children()[2]
    inputs = list(input_decl.list)
    inputs.append(vast.Input(key_input_name(index)))
    input_decl.list = tuple(inputs)

    wire_decl = moddef.children()[4]
    wires = list(wire_decl.list)
    wires.append(vast.Wire(key_gate_wire_name(index)))
    wire_decl.list = tuple(wires)

    items = list(moddef.items)
    items.append(key_node)
    moddef.items = tuple(items)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Convert a verilog circuit into a CNF formula and measure metrics on that formula")
    parser.add_argument("verilog_file", help="The circuit's verilog file")
    parser.add_argument("--key_length", default=32, type=int, help="The length of the key to add")

    args = parser.parse_args()

    ast, directives = parse([args.verilog_file], debug=False)
    moddef = ast.children()[0].children()[0]

    if not isinstance(moddef.children()[5], vast.InstanceList):
        import pdb; pdb.set_trace()

    nodes = moddef.children()[5:]
    chosen = list(map(nodes.__getitem__, random.sample(range(0, len(nodes)), args.key_length)))

    for i, node in enumerate(chosen):
        negated = random.randint(0, 1) # 0 = xor, 1 = xnor
        add_key_nodes(node, i, moddef, negated)

    codegen = ASTCodeGenerator()
    rslt = codegen.visit(ast)
    print(rslt)
