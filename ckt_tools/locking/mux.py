import argparse
import os
from pyverilog.ast_code_generator.codegen import ASTCodeGenerator
import pyverilog.vparser.ast as vast
from pyverilog.vparser.parser import parse
import sys

sys.path.insert(1, os.path.join(sys.path[0], '..'))

from shared import *
from parsing.ast_parser import parse_ast

def find_last_input(moddef):
    for index in range(2, len(moddef.children())):
        if isinstance(moddef.children()[index].children()[0], vast.Input) and not isinstance(moddef.children()[index + 1].children()[0], vast.Input):
            return index

    return -1

def add_key(moddef, number):
    portlist = moddef.children()[1]
    ports = list(portlist.ports)

    name = "keyIn_0_%i" % (number)
    port = vast.Port(name, None, None, None)
    ports.append(port)

    portlist.ports = tuple(ports)

    last_input_index = find_last_input(moddef)
    items = list(moddef.items)
    # Not sure why it is -1, some difference between .items and .children()
    items.insert(last_input_index - 1, vast.Decl([vast.Input(name)]))
    moddef.items = tuple(items)

    return [vast.Input(name)]

def add_mux(moddef, node, primary_inputs, new_keys):
    output_name = node.children()[0].children()[0].children()[0].name
    original_signal_name = node.children()[0].children()[2].children()[0].name
    modified_signal_name = original_signal_name + "_modified"

    mux_xor = create_ilist(moddef, "xor", "MUX_XOR_0", "mux_xor", [new_keys[0].name, primary_inputs.name])
    mux_not = create_ilist(moddef, "not", "MUX_NOT_0", "mux_not", ["mux_xor"])
    mux_and_0 = create_ilist(moddef, "and", "MUX_AND_0", "mux_and_0", [original_signal_name, "mux_not"])
    mux_and_1 = create_ilist(moddef, "and", "MUX_AND_1", "mux_and_1", [modified_signal_name, "mux_xor"])
    mux_or = create_ilist(moddef, "or", "MUX_OR_1", output_name, ["mux_and_0", "mux_and_1"], add_wire=False)

    node.children()[0].children()[0].children()[0].name = modified_signal_name

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Add an Anti-SAT block to a circuit.")
    parser.add_argument("verilog_file", help="The circuit's verilog file.")
    parser.add_argument("node", help="The node to add the mux to.")
    parser.add_argument("-o", "--output", help="The verilog file to output to. Otherwise it will print to the screen.")

    args = parser.parse_args()

    ast, _ = parse([args.verilog_file], debug=False)
    moddef = ast.children()[0].children()[0]

    primary_inputs = [node for node in get_decl_names(moddef, vast.Input) if "key" not in node.name]
    key_inputs = [node for node in get_decl_names(moddef, vast.Input) if "key" in node.name]
    nodes = moddef.children()[5:]

    ilists = list(filter(lambda x: isinstance(x, vast.InstanceList), nodes))
    node_of_interest = list(filter(lambda x: x.children()[0].name == args.node, ilists))[0]

    new_keys = add_key(moddef, number=len(key_inputs))
    add_mux(moddef, node_of_interest, primary_inputs[-1], new_keys)

    codegen = ASTCodeGenerator()
    rslt = codegen.visit(ast)

    if args.output:
        with open(args.output, "w") as f:
            f.write(rslt)
    else:
        print(rslt)
