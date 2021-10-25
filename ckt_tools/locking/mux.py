import argparse
import os
from pyverilog.ast_code_generator.codegen import ASTCodeGenerator
import pyverilog.vparser.ast as vast
from pyverilog.vparser.parser import parse
import sys

sys.path.insert(1, os.path.join(sys.path[0], '..'))

from shared import *
from parsing.ast_parser import parse_ast

def add_keys(moddef, number, start):
    return [create_key(moddef, "keyIn_0_%i" % (start + i)) for i in range(number)]

def create_mux_selectors(moddef, primary_inputs, new_keys):
    selectors = [None] * len(new_keys)
    for i in range(len(new_keys)):
        xor_name = "G_mux%i_xor" % i
        xor_output = "mux%i_xor" % i
        xor_inputs = [new_keys[i].name, primary_inputs[-1 * i - 1].name]
        xor = create_ilist(moddef, "xor", xor_name, xor_output, xor_inputs)

        selectors[i] = xor

    return selectors

def add_muxes(moddef, node_of_interest, selectors):
    # Note: this assumes the muxes are hooked up to a key gate where the
    # key bit is the first argument and the circuit signal is the second
    input1 = node_of_interest.children()[0].children()[2].children()[0].name
    input2 = "flipped_signal"
    output = get_ilist_name(node_of_interest)

    node_of_interest.children()[0].children()[0].children()[0].name = input2

    for i in range(len(selectors)):
        portnames = (input1, input2, output)
        mux_output = add_mux(moddef, portnames, selectors[i], i)

        if i < len(selectors) - 1:
            mux_output.children()[0].children()[0].children()[0].name = "mux%i_output" % i
            input2 = mux_output.children()[0].children()[0].children()[0].name
            # input1 = mux_output.children()[0].children()[0].children()[0].name

def add_mux(moddef, portnames, selector, count):
    input1, input2, output = portnames

    mux_not = create_ilist(moddef, "not", "G_mux%i_not" % count, "mux%i_not" % count, [get_ilist_name(selector)])
    mux_and_0 = create_ilist(moddef, "and", "G_mux%i_and_0" % count, "mux%i_and_0" % count, [input1, "mux%i_not" % count])
    mux_and_1 = create_ilist(moddef, "and", "G_mux%i_and_1" % count, "mux%i_and_1" % count, [input2, get_ilist_name(selector)])
    mux_or = create_ilist(moddef, "or", "G_mux%i_or" % count, output, ["mux%i_and_0" % count, "mux%i_and_1" % count], add_wire=False)

    return mux_or

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Add an Anti-SAT block to a circuit.")
    parser.add_argument("verilog_file", help="The circuit's verilog file.")
    parser.add_argument("node", help="The node to add the mux to.")
    parser.add_argument("-o", "--output", help="The verilog file to output to. Otherwise it will print to the screen.")
    parser.add_argument("-n", "--number", type=int, default=1, help="The number of multiplexeres to add.")

    args = parser.parse_args()

    ast, _ = parse([args.verilog_file], debug=False)
    moddef = ast.children()[0].children()[0]

    primary_inputs = [node for node in get_decl_names(moddef, vast.Input) if "key" not in node.name]
    key_inputs = [node for node in get_decl_names(moddef, vast.Input) if "key" in node.name]
    node_of_interest = get_node_from_name(moddef, args.node)

    new_keys = add_keys(moddef, args.number, len(key_inputs))
    mux_selectors = create_mux_selectors(moddef, primary_inputs, new_keys)
    add_muxes(moddef, node_of_interest, mux_selectors)

    codegen = ASTCodeGenerator()
    rslt = codegen.visit(ast)

    if args.output:
        with open(args.output, "w") as f:
            f.write(rslt)
    else:
        print(rslt)
