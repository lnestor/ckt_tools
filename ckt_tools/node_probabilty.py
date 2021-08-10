import argparse
from itertools import combinations
import json
import numpy as np
import os
from pyverilog.vparser.parser import parse

from ast_parser import parse_ast
from searches.postorder import Postorder
from searches.key_in_output import KeyInOutput
from searches.probability import Probability
from searches.single_key_probability import SingleKeyProbability

DESCRIPTION = "Calculate the probability a node is 0 or 1 assuming randomized inputs."

def calc_prob(f, single_key=False):
    ast, _ = parse([f], debug=False)
    ckt_graph = parse_ast(ast, ignore_assigns=False)

    if single_key:
        output_search = Postorder(ckt_graph, KeyInOutput(ckt_graph))
        output_search.traverse_outputs()
        key_in_output = output_search.results()

        single_key_probs = {}
        for key in ckt_graph.key_inputs():
            search = Postorder(ckt_graph, SingleKeyProbability(ckt_graph, key))

            for output in key_in_output[key]:
                search.traverse(output)

            single_key_probs[key] = search.results()

        return single_key_probs
    else:
        search = Postorder(ckt_graph, Probability(ckt_graph))
        search.traverse_outputs()

        return search.results()

def progress_bar(current, total, bar_length=30):
    percent = float(current) * 100 / total
    hashes = "#" * int(percent/100 * bar_length)
    spaces = "." * (bar_length - len(hashes))

    print("[%s%s]" % (hashes, spaces))

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=DESCRIPTION)
    parser.add_argument("directory", help="The directory with the benchmarks")
    parser.add_argument("--json", action="store_true", help="Log metrics in metrics/prob.json file when present.")
    parser.add_argument("--single_key", "-sk", action="store_true", help="Calculate a single key's effect on probability")

    args = parser.parse_args()

    files = [os.path.join(args.directory, f) for f in os.listdir(args.directory) if f.endswith(".v")]

    probs = {}
    for i, f in enumerate(files):
        index = i
        total = len(files)
        percent = 100 * float(index) / total

        print("Running %s %i/%i (%.0f%%) " % (os.path.basename(f), index + 1, total, percent), end="")
        progress_bar(i + 1, len(files))

        probs[os.path.basename(f)] = calc_prob(f, single_key=args.single_key)

    if args.json:
        with open(os.path.join(args.directory, "metrics/prob.json"), "w") as f:
            json.dump(probs, f)
