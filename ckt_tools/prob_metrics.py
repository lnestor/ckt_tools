import argparse
import json
import os
import statistics

from metrics.prob import *
from helpers.table import *

HEADER = "Circuit,Key Bits,Outputs,# Outputs No Keys,# Outputs Some Keys,Mean # Keys,Stdev # Keys,# Keys No Outputs,# Keys Some Outputs,Mean # Outputs,Stdev # Outputs,Total # Key/Output Pairs,Min Max Diff,Mean Max Diff,Stdev Max Diff,Min OR Diff,Mean OR Diff,Stdev OR Diff"

def stdev(values):
    if len(values) > 1:
        return statistics.stdev(values)
    else:
        return float("NaN")

def mean(values):
    if len(values) == 0:
        return float("NaN")
    else:
        return sum(values) / len(values)

def load_rawp(filename):
    if not os.path.isfile(filename):
        print("ERROR: %s not present" % (filename))
        exit()

    with open(filename) as f:
        rawp = json.load(f)

    return rawp

def calc_prob_diff(probs, o_probs):
    diffs = {}

    for ckt_input in probs:
        prob = probs[ckt_input]

        input_diff = {}
        for output in o_probs:
            if prob[output] is not None:
                input_diff[output] = abs(prob[output] - o_probs[output])
            else:
                input_diff[output] = 0

        diffs[ckt_input] = input_diff

    return diffs

def calc_metrics(probs, o_probs):
        key_bit_count = len(probs.keys())
        output_count = len(o_probs.keys())

#         outputs = sorted(o_probs, key=lambda x: int(x[1:]))
#         table = dict_to_table(prob_diffs, outputs, first_col_label="Input")
#         print_in_sections(table, 8)

        prob_diffs = calc_prob_diff(probs, o_probs)

        key_count_per_output = keys_per_output(prob_diffs)
        outputs_0_keys = [o for o in key_count_per_output if key_count_per_output[o] == 0]
        outputs_some_keys = [o for o in key_count_per_output if key_count_per_output[o] != 0]

        no_key_count = len(outputs_0_keys)
        some_key_count = len(outputs_some_keys)

        mean_key_count = mean([key_count_per_output[o] for o in outputs_some_keys])
        stdev_key_count = stdev([key_count_per_output[o] for o in outputs_some_keys])

        output_count_per_key = outputs_per_key(prob_diffs)
        keys_0_outputs = [k for k in output_count_per_key if output_count_per_key[k] == 0]
        keys_some_outputs = [k for k in output_count_per_key if output_count_per_key[k] != 0]

        no_output_count = len(keys_0_outputs)
        some_output_count = len(keys_some_outputs)

        mean_output_count = mean([output_count_per_key[k] for k in keys_some_outputs])
        stdev_output_count = stdev([output_count_per_key[k] for k in keys_some_outputs])

        key_output_pair_count = sum(output_count_per_key.values())

        max_diffs = max_per_key(prob_diffs)
        or_diffs = or_per_key(prob_diffs)

        min_max_diff = min([max_diffs[k] for k in keys_some_outputs], default=float("NaN"))
        mean_max_diff = mean([max_diffs[k] for k in keys_some_outputs])
        stdev_max_diff = stdev([max_diffs[k] for k in keys_some_outputs])

        min_or_diff = min([or_diffs[k] for k in keys_some_outputs], default=float("NaN"))
        mean_or_diff = mean([or_diffs[k] for k in keys_some_outputs])
        stdev_or_diff = stdev([or_diffs[k] for k in keys_some_outputs])

        row = [circuit, key_bit_count, output_count, no_key_count, some_key_count, mean_key_count, stdev_key_count, no_output_count, some_output_count, mean_output_count, stdev_output_count, key_output_pair_count, min_max_diff, mean_max_diff, stdev_max_diff, min_or_diff, mean_or_diff, stdev_or_diff]

        return row

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Calculate metrics on raw output probability data")
    parser.add_argument("dir", help="The directory of benchmarks to calculate probability metrics on")

    args = parser.parse_args()

    rawp = load_rawp("%s/metrics/rawp.json" % (args.dir))
    o_rawp = load_rawp("benchmarks/generated/original/metrics/rawp.json")

    f = open("%s/metrics/prob.csv" % (args.dir), "w")
    f.write(HEADER)
    f.write("\n")

    for circuit in rawp:
        print(circuit)

        probs = rawp[circuit]
        o_probs = o_rawp[circuit]

        row = calc_metrics(probs, o_probs)
        f.write(",".join(str(v) for v in row))
        f.write("\n")

    f.close()
