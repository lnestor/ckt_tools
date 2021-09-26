import argparse
import math
import os
from pyverilog.ast_code_generator.codegen import ASTCodeGenerator
from pyverilog.vparser.parser import parse
import sys

sys.path.insert(1, os.path.join(sys.path[0], '..'))

from shared import *
from parsing.ast_parser import parse_ast
from helpers.ckt_equivalence import check_eq_with_key

# def get_key(key_inputs):
#     """Gets the key value for the Anti-SAT circuit.

#     Currently, since we only use XOR gates when combining the inputs with
#     the key bits, all that matters is that the corresponding bits to
#     g and gbar are equal. Therefore, we just choose a random value to assign.

#     """
#     key = {}

#     for i in range(int(len(key_inputs) / 2)):
#         value = random.choice([True, False])
#         key[key_inputs[i].name] = value
#         key[key_inputs[i + int(len(key_inputs) / 2)].name] = value

#     return key


def create_xor_gates(moddef, key_inputs, primary_inputs):
    xor_gates = [None] * len(key_inputs)

    for i in range(len(key_inputs)):
        instance = "xor_0_%i" % (i)
        output = "xor_output_0_%i" % (i)
        xor = create_ilist(moddef, "xor", instance, output, [key_inputs[i].name, primary_inputs[i].name])

        xor_gates[i] = xor

    return xor_gates

# def create_fa(moddef, A, B, Cin, unique_name):
#     xor_AB = create_ilist(moddef, "xor", unique_name + "_xor_AB", unique_name + "_xor_AB_output", [A, B])
#     xor_ABC = create_ilist(moddef, "xor", unique_name + "_xor_ABC", unique_name + "_sum", [unique_name + "_xor_AB_output", Cin])
#     and_abc = create_ilist(moddef, "and", unique_name + "_and_ABC", unique_name + "_and_ABC_output", [unique_name + "_xor_AB", Cin])
#     and_ab = create_ilist(moddef, "and", unique_name + "_and_AB", unique_name + "_and_AB_output", [A, B])
#     or_cout = create_ilist(moddef, "or", unique_name + "_or", unique_name + "_carry", [unique_name + "_and_ABC", unique_name + "_and_AB"])

#     return xor_ABC, or_cout

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
        bit = h_bits[i] == "1"
        xor = create_ilist(moddef, "xor", "comparator_0_%i" % (i), "comparator_0_%i" % (i), [get_ilist_name(adder_outputs[i]), str(bit)])
        xor_gates[i] = xor

    c_or = create_ilist(moddef, "or", "comparator_or", "comparator_output", [get_ilist_name(x) for x in xor_gates])

    return c_or

def create_hamming_distance_calc(moddef, h, key_inputs, primary_inputs):
    xor_gates = create_xor_gates(moddef, key_inputs, primary_inputs)
    adder_outputs = create_adder(moddef, xor_gates)
    compare_signal = create_h_comparator(moddef, adder_outputs, h)
    return compare_signal

def create_mask(moddef, percent_wrong, key_inputs):
    num_keys = 2**len(key_inputs)
    num_wrong_keys = math.floor(percent_wrong * num_keys)
    num_bits_needed = math.floor(math.log2(num_keys))

    wrong_key_vals = random.sample(range(0, num_keys), num_wrong_keys)
    wrong_keys = [bin(v)[2:].rjust(num_bits_needed, "0") for v in wrong_key_vals]

    # Create all needed XOR gates. If some aren't used, they'll still be present.
    # But they won't be factored in to the SAT attack
    xor_0_gates = [None] * len(key_inputs)
    xor_1_gates = [None] * len(key_inputs)
    for i, key_input in enumerate(key_inputs):
        xor_0 = create_ilist(moddef, "xor", "mask_xor0_0_%i" % (i), "mask_xor0_0_%i" % (i), [key_input.name, "0"])
        xor_1 = create_ilist(moddef, "xor", "mask_xor1_0_%i" % (i), "mask_xor1_0_%i" % (i), [key_input.name, "1"])
        xor_0_gates[i] = xor_0
        xor_1_gates[i] = xor_1

    masks = [None] * len(wrong_keys)
    for i, key in enumerate(wrong_keys):
        bit_comparisons = [None] * len(key)

        for j, bit in enumerate(key[::-1]):
            if bit == "0":
                bit_comparisons[j] = xor_0_gates[j]
            else:
                bit_comparisons[j] = xor_1_gates[j]

        or_gate = create_ilist(moddef, "or", "mask_0_%i" % (i), "mask_0_%i" % (i), [get_ilist_name(g) for g in bit_comparisons])
        masks[i] = or_gate

    mask = create_ilist(moddef, "or", "mask_final", "mask_final", [get_ilist_name(g) for g in masks])
    return mask

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

    Y = find_Y_candidate(moddef, args.randomize_Y)
    key_inputs = create_key_inputs(moddef, args.keybits if args.keybits is not None else len(primary_inputs))
    hd_calc = create_hamming_distance_calc(moddef, args.h, key_inputs, primary_inputs)
    mask = create_mask(moddef, args.percent_wrong, key_inputs)
    insert_into_circuit(moddef, Y, hd_calc, mask)

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
