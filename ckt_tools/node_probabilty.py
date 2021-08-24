import argparse
from itertools import combinations
import json
import numpy as np
import os
from pyverilog.vparser.parser import parse

from parsing.ast_parser import parse_ast
from helpers.progress import progress_bar
from searches.postorder import Postorder
from searches.key_in_output import KeyInOutput
from searches.probability import Probability
from searches.single_key_probability import SingleKeyProbability

DESCRIPTION = "Calculate the probability a node is 0 or 1 assuming randomized inputs."

def get_expected_key(graph, antisat):
    if antisat:
        return dict.fromkeys(graph.key_inputs(), 0)

    key_gates = [n for n in graph.nodes if graph.nodes[n].vname.startswith("Key") and not "NOT" in graph.nodes[n].vname]
    key = {}

    for node_name in key_gates:
        node = graph.nodes[node_name]
        index = int(node.vname[8:])
        not_wire = "KeyNOTWire_0_%i" % (index)

        gate_type = node.type
        has_not = not_wire in key_gates

        bit = gate_type == "xnor"
        if has_not:
            bit = not bit

        key_name = "keyIn_0_%i" % (index)
        key[key_name] = 1 if bit is True else 0

    return key

def calc_prob(f, single_key=False, antisat=False):
    ast, _ = parse([f], debug=False)
    ckt_graph = parse_ast(ast, ignore_assigns=False)

    if single_key:
        output_search = Postorder(ckt_graph, KeyInOutput(ckt_graph))
        output_search.traverse_outputs()
        key_in_output = output_search.results()

        single_key_probs = {}
        for key_name in ckt_graph.key_inputs():
            expected_key = get_expected_key(ckt_graph, antisat)
            search = Postorder(ckt_graph, SingleKeyProbability(ckt_graph, key_name, expected_key))

            for output in key_in_output[key_name]:
                search.traverse(output)

            single_key_probs[key_name] = search.results()

        return single_key_probs
    else:
        search = Postorder(ckt_graph, Probability(ckt_graph))
        search.traverse_outputs()

        return search.results()

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=DESCRIPTION)
    parser.add_argument("directory", help="The directory with the benchmarks")
    parser.add_argument("--json", action="store_true", help="Log metrics in metrics/prob.json file when present.")
    parser.add_argument("--single_key", "-sk", action="store_true", help="Calculate a single key's effect on probability")
    parser.add_argument("--antisat", action="store_true", help="Sets the key to all 0s for an Anti-SAT circuit")

    args = parser.parse_args()

    files = [os.path.join(args.directory, f) for f in os.listdir(args.directory) if f.endswith(".v")]

    probs = {}
    for i, f in enumerate(files):
        index = i
        total = len(files)
        percent = 100 * float(index) / total

        print("Running %s %i/%i (%.0f%%) " % (os.path.basename(f), index + 1, total, percent), end="")
        progress_bar(i + 1, len(files))

        probs[os.path.basename(f)] = calc_prob(f, single_key=args.single_key, antisat=args.antisat)

    if args.json:
        with open(os.path.join(args.directory, "metrics/prob.json"), "w") as f:
            json.dump(probs, f, indent=2)
