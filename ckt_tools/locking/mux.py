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

# def create_mux_selectors(moddef, primary_inputs, new_keys):
#     selectors = [None] * len(new_keys)
#     for i in range(len(new_keys)):
#         xor_name = "G_mux%i_xor" % i
#         xor_output = "mux%i_xor" % i
#         xor_inputs = [new_keys[i].name, primary_inputs[-1 * i - 1].name]
#         xor = create_ilist(moddef, "xor", xor_name, xor_output, xor_inputs)

#         selectors[i] = xor

#     return selectors

def create_mux_selectors(moddef, primary_inputs, new_keys):
    selectors = [None] * int(len(new_keys) / 3)

    for i in range(len(selectors)):
        # 50% path
        p50_xor_name = "G_mux%i_xor_50" % i
        p50_xor_output = "mux%i_xor_50" % i
        p50_xor_inputs = [new_keys[3 * i].name, primary_inputs[-4 * i - 1].name]
        p50_xor = create_ilist(moddef, "xor", p50_xor_name, p50_xor_output, p50_xor_inputs)

        # 25% path
        p25_1_xor_name = "G_mux%i_xor_25_1" % i
        p25_1_xor_output = "mux%i_xor_25_1" % i
        p25_1_xor_inputs = [new_keys[3 * i + 1].name, primary_inputs[-4 * i - 2].name]
        p25_1_xor = create_ilist(moddef, "xor", p25_1_xor_name, p25_1_xor_output, p25_1_xor_inputs)

        p25_2_xor_name = "G_mux%i_xor_25_2" % i
        p25_2_xor_output = "mux%i_xor_25_2" % i
        p25_2_xor_inputs = [new_keys[3 * i + 2].name, primary_inputs[-4 * i - 3].name]
        p25_2_xor = create_ilist(moddef, "xor", p25_2_xor_name, p25_2_xor_output, p25_2_xor_inputs)

        p25_or_name = "G_mux%i_or_25" % i
        p25_or_output = "mux%i_or_25" % i
        p25_or_inputs = [p25_1_xor_output, p25_2_xor_output]
        p25_or = create_ilist(moddef, "or", p25_or_name, p25_or_output, p25_or_inputs)

        # Control
        portnames = (p50_xor_output, p25_or_output, "mux%i_control" % 99)
        mux = add_mux(moddef, portnames, primary_inputs[-4 * i - 4], 99)
        selectors[i] = mux

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

    if isinstance(selector, vast.InstanceList):
        selector_name = get_ilist_name(selector)
    else:
        selector_name = selector.name

    mux_not = create_ilist(moddef, "not", "G_mux%i_not" % count, "mux%i_not" % count, [selector_name])
    mux_and_0 = create_ilist(moddef, "and", "G_mux%i_and_0" % count, "mux%i_and_0" % count, [input1, "mux%i_not" % count])
    mux_and_1 = create_ilist(moddef, "and", "G_mux%i_and_1" % count, "mux%i_and_1" % count, [input2, selector_name])
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
