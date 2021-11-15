import argparse
import os
import sys

from atalanta import get_test_patterns
from context import Context
from filenames import Filenames
from pattern_generator import PatternGenerator
from synthesis import synthesize

sys.path.insert(1, os.path.join(sys.path[0], ".."))
import ver2bench

def get_args():
    # TODO: add context overrides as input arguments
    parser = argparse.ArgumentParser(description="Calculate p(prop) for a circuit")
    parser.add_argument("circuit", help="The locked circuit to calculate p(prop) on")
    parser.add_argument("-ctx", "--context", help="The context file containing meta information about the circuit")

    args = parser.parse_args()
    return args

def get_context(args):
    return Context(args)

def clean(filenames):
    for fname in filenames:
        if os.path.exists(fname):
            os.remove(fname)
        else:
            print("Warning: attempted to clean file %s but it doens't exist. Skipping." % fname)

def remove_duplicates(l):
    return list(set(l))

def create_bench_file(bench_fname, verilog_fname):
    # TODO: change this to single circuit object repr and output as bench
    ver2bench.convert(verilog_fname, bench_fname)

def get_input_patterns(ctx):
    filenames = Filenames(ctx)

    create_bench_file(filenames.bench, ctx.oracle)
    test_patterns = get_test_patterns(filenames, ctx.node)

    clean(filenames)
    return test_patterns

def get_key_patterns(input_pattern, cached_fnames, ctx):
    filenames = Filenames(ctx)

    synthesize(cached_fnames, filenames.bench, input_pattern, ctx)
    test_patterns = get_test_patterns(filenames, ctx.key_gate_output)
    key_patterns = remove_duplicates([p[0:-1] for p in test_patterns])

    clean(filenames)
    return key_patterns

def estimate_pprop(pattern_generator, ctx):
    pprops = []

    locked_fname = "locked_tmp.bench"
    oracle_fname = "oracle_tmp.bench"
    create_bench_file(locked_fname, ctx.circuit)
    create_bench_file(oracle_fname, ctx.oracle)

    for input_pattern in pattern_generator.sample(ctx.samples):
        key_patterns = get_key_patterns(input_pattern, (locked_fname, oracle_fname), ctx)
        num_patterns = sum(2**pattern.count("x") for pattern in key_patterns)
        pprops.append(num_patterns / 2**len(key_patterns[0]))

    clean([locked_fname, oracle_fname])
    return sum(pprops) / len(pprops)

def main():
    args = get_args()
    ctx = get_context(args)

    print("\nFinding p(prop) for %s" % ctx.circuit)

    seed_patterns = get_input_patterns(ctx)
    generator = PatternGenerator(seed_patterns)
    print("%i input patterns found to propagate %s" % (generator.size(), ctx.node))
    # TODO: what if ctx.samlpes > size(generator)?
    print("Sampling %i input patterns" % ctx.samples)


    # TODO: test with several circiuts (c17, sarlock w/ many muxes, and varying p(prop)
    #       after that we can start adding nifty features 

    avg_pprop = estimate_pprop(generator, ctx)
    print("\nEstimated p(prop): %.5f\n" % avg_pprop)

if __name__ == "__main__":
    main()
