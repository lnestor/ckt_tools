import argparse
import os
from pyverilog.ast_code_generator.codegen import ASTCodeGenerator
import pyverilog.vparser.ast as vast
from pyverilog.vparser.parser import parse
import sys

sys.path.insert(1, os.path.join(sys.path[0], '..'))

from parsing.ast_parser import parse_ast

def find_last_input(moddef):
    for index in range(2, len(moddef.children())):
        if isinstance(moddef.children()[index].children()[0], vast.Input) and not isinstance(moddef.children()[index + 1].children()[0], vast.Input):
            return index

    return -1

def add_key(moddef):
    portlist = moddef.children()[1]
    ports = list(portlist.ports)

    name = "keyIn_mux_0_0"
    port = vast.Port(name, None, None, None)
    ports.append(port)

    portlist.ports = tuple(ports)

    last_input_index = find_last_input(moddef)
    items = list(moddef.items)
    # Not sure why it is -1, some difference between .items and .children()
    items.insert(last_input_index - 1, vast.Decl([vast.Input(name)]))
    moddef.items = tuple(items)

def create_ilist(module, name, output, inputs):
    out_port = vast.PortArg(None, vast.Identifier(output))
    in_ports = [vast.PortArg(None, vast.Identifier(name)) for name in inputs]

    portlist = (out_port, *in_ports)
    parameterlist = ()
    instance = vast.Instance(module, name, portlist, parameterlist)
    ilist = vast.InstanceList(module, (), (instance,))

    return ilist

def add_mux(node, moddef):
    output_name = node.children()[0].children()[0].children()[0].name
    original_signal_name = node.children()[0].children()[2].children()[0].name
    modified_signal_name = original_signal_name + "_modified"

    # Need to add wire names to wire declarations
    mux_not = create_ilist("not", "MUX_NOT_0", "mux_not", ["keyIn_mux_0_0"])
    mux_and_0 = create_ilist("and", "MUX_AND_0", "mux_and_0", [original_signal_name, "mux_not"])
    mux_and_1 = create_ilist("and", "MUX_AND_1", "mux_and_1", [modified_signal_name, "keyIn_mux_0_0"])
    mux_or = create_ilist("or", "MUX_OR_1", output_name, ["mux_and_0", "mux_and_1"])

    items = list(moddef.items)
    items.extend([mux_not, mux_and_0, mux_and_1, mux_or])
    moddef.items = tuple(items)

    node.children()[0].children()[0].children()[0].name = modified_signal_name

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Add an Anti-SAT block to a circuit.")
    parser.add_argument("verilog_file", help="The circuit's verilog file.")
    parser.add_argument("node", help="The node to add the mux to.")
    parser.add_argument("-o", "--output", help="The verilog file to output to. Otherwise it will print to the screen.")

    args = parser.parse_args()

    ast, _ = parse([args.verilog_file], debug=False)
    moddef = ast.children()[0].children()[0]

    nodes = moddef.children()[5:]

    ilists = list(filter(lambda x: isinstance(x, vast.InstanceList), nodes))
    node_of_interest = list(filter(lambda x: x.children()[0].name == args.node, ilists))[0]

    add_key(moddef)
    add_mux(node_of_interest, moddef)

    codegen = ASTCodeGenerator()
    rslt = codegen.visit(ast)

    if args.output:
        with open(args.output, "w") as f:
            f.write(rslt)
    else:
        print(rslt)
