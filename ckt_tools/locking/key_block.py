import argparse
import math
import os
from pyverilog.ast_code_generator.codegen import ASTCodeGenerator
from pyverilog.vparser.parser import parse
import sys

sys.path.insert(1, os.path.join(sys.path[0], '..'))

from shared import *
from comparator import ComparatorCircuit
from parsing.ast_parser import parse_ast
from helpers.ckt_equivalence import check_eq_with_key

def create_xor_gates(moddef, key_inputs, primary_inputs):
    key_input_names = [i.name for i in key_inputs]
    primary_input_names = [i.name for i in primary_inputs]
    xor_gates = verilog_zip(moddef, "xor", key_input_names, primary_input_names, "zip")
    return xor_gates

def create_ha(moddef, A, B, unique_name):
    ha_sum = create_ilist(moddef, "xor", unique_name + "_sum", unique_name + "_sum", [A, B])
    ha_cout = create_ilist(moddef, "and", unique_name + "_carry", unique_name + "_carry", [A, B])
    return ha_sum, ha_cout

def create_adder(moddef, xor_gates):
    num_stages = len(xor_gates) - 1

    A_input_index = 0
    B_inputs = [xor_gates[1]]
    for i in range(num_stages):
        num_HAs = i + 1

        A_input = xor_gates[A_input_index]
        next_B_inputs = [None] * (num_HAs + 1)
        for j in range(num_HAs):
            ha_sum, ha_cout = create_ha(moddef, get_ilist_name(A_input), get_ilist_name(B_inputs[j]), "ha_%i_%i" % (i, j))
            next_B_inputs[j] = ha_sum
            A_input = ha_cout

        next_B_inputs[-1] = A_input
        B_inputs = next_B_inputs
        A_input_index = i + 2

    num_bits_needed = math.floor(math.log2(len(xor_gates))) + 1
    last_stage_outputs = B_inputs[0:num_bits_needed]
    return last_stage_outputs

def create_h_comparator(moddef, adder_outputs, h):
    h_bits = bin(h)[2:].rjust(10, "0")

    xor_gates = [None] * len(adder_outputs)
    for i in range(len(adder_outputs)):
        bit = h_bits[::-1][i]
        xor = create_ilist(moddef, "xnor", "comparator_0_%i" % (i), "comparator_0_%i" % (i), [get_ilist_name(adder_outputs[i]), str(bit)])
        xor_gates[i] = xor

    c_or = create_ilist(moddef, "and", "comparator_and", "comparator_output", [get_ilist_name(x) for x in xor_gates])

    return c_or

def create_hamming_distance_calc(moddef, h, key_inputs, primary_inputs):
    xor_gates = create_xor_gates(moddef, key_inputs, primary_inputs)
    adder_outputs = create_adder(moddef, xor_gates)
    compare_signal = create_h_comparator(moddef, adder_outputs, h)
    return compare_signal

def create_mask(moddef, percent_masked, key_inputs):
    num_keys = 2**len(key_inputs)
    num_masked = math.ceil(percent_masked * num_keys)

    masked_vals = random.sample(range(0, num_keys), num_masked)
    masked_patterns = [bin(v)[2:].rjust(len(key_inputs), "0") for v in masked_vals]

    mask = ComparatorCircuit(moddef, "mask", key_inputs).create(masked_patterns)
    return mask, masked_patterns

def insert_into_circuit(moddef, Y, hd_calc, mask):
    and_gate = create_ilist(moddef, "and", "key_block_output", "key_block_output", [get_ilist_name(hd_calc), get_ilist_name(mask)])

    for n in moddef.children()[5:]:
        name = n.children()[0].children()[0].children()[0].name

        if name == Y.name:
            node = n
            break

    input1 = and_gate.children()[0].children()[0].children()[0].name
    wires = list(moddef.children()[4].list)
    input2 = "unmodified_output"
    wires.append(vast.Wire(input2))
    moddef.children()[4].list = tuple(wires)
    node.children()[0].children()[0].children()[0].name = input2

    xor = create_ilist(moddef, "xor", "flip_it", Y.name, [input1, input2], add_wire=False)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Add an Anti-SAT block to a circuit.")
    parser.add_argument("verilog_file", help="The circuit's verilog file.")
    parser.add_argument("percent_wrong", type=float, help="The percentage of keys that are incorrect")
    parser.add_argument("h", type=int, help="The hamming distance to flip the signal")
    parser.add_argument("-o", "--output", help="The verilog file to output to. Otherwise it will print to the screen.")
    parser.add_argument("-ce", "--check_equivalence", action="store_true", help="Check that the locked circuit has equivalent logic to the unlocked circuit.")
    parser.add_argument("-kb", "--keybits", type=int, help="The number of key bits to use for a single function block. If omitted, defaults to len(inputs) as is normal in Anti-SAT")
    parser.add_argument("--randomize_Y", action="store_true", help="Randomize where the output of the Anti-SAT block will be placed")

    args = parser.parse_args()

    ast, _ = parse([args.verilog_file], debug=False)
    moddef = ast.children()[0].children()[0]

    if not isinstance(moddef.children()[5], vast.InstanceList):
        import pdb; pdb.set_trace()

    primary_inputs = get_decl_names(moddef, vast.Input)
    nodes = moddef.children()[5:]

    key_inputs = create_key_inputs(moddef, args.keybits if args.keybits is not None else len(primary_inputs))
    if(args.h > len(key_inputs)):
        print("Error: Hamming distance requested larger than key length")
        exit()

    hd_calc = create_hamming_distance_calc(moddef, args.h, key_inputs, primary_inputs)
    mask, masked_patterns = create_mask(moddef, args.percent_wrong, key_inputs)

    Y = find_Y_candidate(moddef, args.randomize_Y)
    insert_into_circuit(moddef, Y, hd_calc, mask)

    if args.check_equivalence:
        expected_key = {key.name: bit == "1" for key, bit in zip(key_inputs, masked_patterns[0])}
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
