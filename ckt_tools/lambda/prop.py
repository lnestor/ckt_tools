import argparse
import copy
import math
import os
import random
import subprocess
import sys

sys.path.insert(1, os.path.join(sys.path[0], ".."))
import ver2bench
from bench import BenchFile

def get_args():
    parser = argparse.ArgumentParser(description="Calculate p(prop) for a circuit")
    parser.add_argument("verilog", help="The verilog file")
    parser.add_argument("locked", help="The locked verilog file")
    parser.add_argument("node", help="The node where the key is implemented")
    parser.add_argument("-p", "--percentage", type=float, help="The percentage of input patterns to use to estimate p(prop). Cannot be used with --number.")
    parser.add_argument("-n", "--number", type=int, help="The number of input patterns to use to estimate p(prop). Cannot be used with --percentage.")

    args = parser.parse_args()
    verify(args)

    return args

def verify(args):
    if args.percentage is not None and args.number is not None:
        print("Error: cannot use --percentage and --number together")
        sys.exit(-1)

def sample_number(input_patterns, args):
    if args.percentage:
        return math.ceil(args.percentage * len(input_patterns))
    elif args.number:
        return args.number
    else:
        return len(input_patterns)

def get_sample(input_patterns, number):
    return random.sample(input_patterns, number)

def clean(fname):
    os.remove(fname)

def create_bench_file(filename, verilog):
    ver2bench.convert(verilog, filename)

def create_fault_file(filename, node):
    with open(filename, "w") as f:
        f.write("%s /0\n" % node)
        f.write("%s /1\n" % node)

def run_atalanta(bench_fname, fault_fname, log_fname):
    rslt = subprocess.run(["bin/atalanta", "-A", bench_fname, "-f", fault_fname], capture_output=True, text=True)

    with open(log_fname, "w") as f:
        f.write("%s\n" % rslt.stdout)
        f.write(rslt.stderr)

def parse_pattern(line):
    pattern = line.split(":")[1]
    pattern = pattern.split()[0]
    return pattern

def parse_test_patterns(pattern_fname, node):
    with open(pattern_fname) as f:
        lines = f.readlines()

    for i, line in enumerate(lines):
        if line.startswith(node):
            start = i
            break

    patterns = []
    for line in [l for l in lines[start:] if not l.startswith(node)]:
        test_pattern = parse_pattern(line).replace("x", "0")
        patterns.append(test_pattern)

    return patterns

def synthesize(bench_fname, locked_bench_fname, output_fname, pattern):
    bench = BenchFile(locked_bench_fname)

    inputs = copy.copy(BenchFile(bench_fname).inputs)
    bench.clear_inputs(inputs)

    # Don't hardcode these
    bench.recursive_rm("mask_output")
    bench.remove_gate("flipped_signal")
    bench.add_gate("flipped_signal = buf(signal_from_circuit)")

    # bench.recursive_rm("key_block_output")
    # bench.remove_gate("flipped_signal")
    # bench.add_gate("flipped_signal = buf(unmodified_output)")

    bench.add_input("TF_CONST")
    bench.add_gate("TF_CONST_NOT = not(TF_CONST)")

    if "0" in pattern:
        bench.add_gate("FALSE_CONST = and(TF_CONST, TF_CONST_NOT)")
    if "1" in pattern:
        bench.add_gate("TRUE_CONST = nand(TF_CONST, TF_CONST_NOT)")

    def tf_val(s):
        return "FALSE_CONST" if s == "0" else "TRUE_CONST"

    pattern_map = {in_name: tf_val(val) for in_name, val in zip(inputs, pattern)}
    bench.apply_pattern(pattern_map)
    bench.write(output_fname)

def get_input_patterns(base_fname, node):
    bench_fname = "%s_tmp.bench" % base_fname
    fault_fname = "%s_tmp.flt" % base_fname
    log_fname = "%s_tmp.log" % base_fname
    pattern_fname = "%s_tmp.test" % base_fname

    create_fault_file(fault_fname, node)
    run_atalanta(bench_fname, fault_fname, log_fname)
    test_patterns = parse_test_patterns(pattern_fname, node)

    clean(fault_fname)
    clean(log_fname)
    clean(pattern_fname)

    return list(set(test_patterns))

def get_key_patterns(base_fname, input_pattern, i):
    bench_fname = "%s_tmp.bench" % base_fname
    locked_fname = "%s_locked_tmp.bench" % base_fname
    output_fname = "%s_p%i_tmp.bench" % (base_fname, i)
    fault_fname = "%s_p%i_tmp.flt" % (base_fname, i)
    log_fname = "%s_p%i_tmp.log" % (base_fname, i)
    pattern_fname = "%s_p%i_tmp.test" % (base_fname, i)

    synthesize(bench_fname, locked_fname, output_fname, input_pattern)
    # Don't hardcode flipped signal
    create_fault_file(fault_fname, "flipped_signal")
    run_atalanta(output_fname, fault_fname, log_fname)
    key_patterns = parse_test_patterns(pattern_fname, "flipped_signal")
    key_patterns = [p[0:-1] for p in key_patterns]

    clean(output_fname)
    clean(fault_fname)
    clean(log_fname)
    clean(pattern_fname)

    return list(set(key_patterns))

def main():
    args = get_args()

    # I think this fails when there are logical constants in the verilog
    print("\nFinding p(prop) for %s" % args.locked)

    base_fname = os.path.splitext(os.path.basename(args.verilog))[0]
    bench_fname = "%s_tmp.bench" % base_fname
    locked_fname = "%s_locked_tmp.bench" % base_fname

    create_bench_file(bench_fname, args.verilog)
    create_bench_file(locked_fname, args.locked)

    input_patterns = get_input_patterns(base_fname, args.node)
    print("%i input patterns found to propagate %s" % (len(input_patterns), args.node))

    pprops = []
    print("Sampling %i input patterns" % sample_number(input_patterns, args))
    sample = get_sample(input_patterns, sample_number(input_patterns, args))
    for i, pattern in enumerate(sample):
        key_patterns = get_key_patterns(base_fname, pattern, i)
        pprop = len(key_patterns) / 2**len(key_patterns[0])
        pprops.append(pprop)

    avg_pprop = sum(pprops) / len(pprops)
    print("\nEstimated p(prop): %.5f\n" % avg_pprop)

    clean(bench_fname)
    clean(locked_fname)

if __name__ == "__main__":
    main()
