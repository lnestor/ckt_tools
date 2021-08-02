import argparse
from itertools import combinations
import json
import numpy as np
import os
from pyverilog.vparser.parser import parse

from ast_parser import parse_ast
from node_type import NodeType

DESCRIPTION = "Calculate the probability a node is 0 or 1 assuming randomized inputs."

class Traverser:
    def __init__(self, graph):
        self.nodes = graph.nodes
        self.visited = dict.fromkeys(graph.nodes, False)
        self.probabilities = dict.fromkeys(graph.nodes)

    def traverse(self, node_name):
        """Returns the probability a node is 1"""
        node = self.nodes[node_name]
        self.visited[node_name] = True

        if node.type == NodeType.INPUT:
            self.probabilities[node_name] = 0.5
        elif node.type == NodeType.CONSTANT:
            self.probabilities[node_name] = node.inputs[0] == 1
        else:
            for i in node.inputs:
                if not self.visited[i]:
                    self.traverse(i)

            self.probabilities[node_name] = self.gate_prob(node)

    def gate_prob(self, node):
        input_prob = [self.probabilities[i] for i in node.inputs]

        if node.type.startswith("and"):
            output_prob = np.prod(input_prob)
        elif node.type.startswith("or"):
            output_prob = self.or_prob(node)
        elif node.type.startswith("xor"):
            output_prob = sum(input_prob[0:2]) - 2 * np.prod(input_prob[0:2])

            for i in range(len(node.inputs) - 2):
                output_prob = input_prob[i + 2] + output_prob - 2 * input_prob[i + 2] * output_prob

            # output_prob = sum(input_prob) - 2 * np.prod(input_prob)
        elif node.type.startswith("not"):
            output_prob = 1 - input_prob[0]
        elif node.type.startswith("nand"):
            output_prob = 1 - np.prod(input_prob)
        elif node.type.startswith("nor"):
            output_prob = 1 - self.or_prob(node)
        elif node.type.startswith("xnor"):
            output_prob = sum(input_prob[0:2]) - 2 * np.prod(input_prob[0:2])

            for i in range(len(node.inputs) - 2):
                output_prob = input_prob[i + 2] + output_prob - 2 * input_prob[i + 2] * output_prob

            # output_prob = 1 - (sum(input_prob) - 2 * np.prod(input_prob))
            output_prob = 1 - output_prob
        elif node.type.startswith("buf"):
            output_prob = input_prob[0]
        elif node.type.startswith("assign"):
            output_prob = input_prob[0]
        else:
            import pdb; pdb.set_trace()
            raise

        return output_prob

    def or_prob(self, node):
        parity = 1
        prob = 0

        for i in range(len(node.inputs)):
            combos = list(combinations(node.inputs, i + 1))
            inter_prob = [np.prod([self.probabilities[c] for c in combo]) for combo in combos]
            prob += parity * sum(inter_prob)
            parity *= -1

        return prob

def calc_prob(f):
    ast, _ = parse([f], debug=False)
    ckt_graph = parse_ast(ast, ignore_assigns=False)

    traverser = Traverser(ckt_graph)

    for output in ckt_graph.outputs:
        traverser.traverse(output)

    return {l: traverser.probabilities[l] for l in ckt_graph.outputs}

def build_table(*probs):
    header = ["Node"]
    for i in range(len(probs)):
        header.append("Circuit %i" % (i + 1))

    if len(probs) > 1:
        header.append("Diff")

    table = [header]

    for node in sorted(probs[0], key=lambda x: int(x[1:])):
        row = [node]
        for i in range(len(probs)):
            row.append(probs[i][node])

        if len(probs) > 1:
            row.append(probs[0][node] - probs[1][node])

        table.append(row)

    return table

def progress_bar(current, total, bar_length=30):
    percent = float(current) * 100 / total
    hashes = "#" * int(percent/100 * bar_length)
    spaces = "." * (bar_length - len(hashes))

    print("[%s%s]" % (hashes, spaces))

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=DESCRIPTION)
    parser.add_argument("directory", help="The directory with the benchmarks")
    parser.add_argument("--json", action="store_true", help="Log metrics in metrics/prob.json file when present.")

    args = parser.parse_args()

    files = [os.path.join(args.directory, f) for f in os.listdir(args.directory) if f.endswith(".v")]

    probs = {}
    for i, f in enumerate(files):
        index = i
        total = len(files)
        percent = 100 * float(index) / total

        print("Running %s %i/%i (%.0f%%) " % (os.path.basename(f), index + 1, total, percent), end="")
        progress_bar(i + 1, len(files))

        probs[os.path.basename(f)] = calc_prob(f)

    if args.json:
        with open(os.path.join(args.directory, "metrics/prob.json"), "w") as f:
            json.dump(probs, f)
