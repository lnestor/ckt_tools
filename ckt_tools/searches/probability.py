from itertools import combinations
import numpy as np

class Probability:
    # Assumed to be used in postorder
    def __init__(self, graph):
        self.graph = graph
        self.probs = dict.fromkeys(graph.nodes)

    def call(self, node):
        if node.type == "input":
            self.probs[node.output] = 0.5
        elif node.type == "constant":
            import pdb; pdb.set_trace()
        else:
            self.probs[node.output] = self._gate_prob(node)

    def should_traverse(self, node_name):
        return True

    def results(self):
        return {output: self.probs[output] for output in self.graph.outputs}

    def raw_results(self):
        return self.probs

    def _gate_prob(self, node):
        input_prob = [self.probs[i] for i in node.inputs]

        if node.type.startswith("and"):
            output_prob = np.prod(input_prob)
        elif node.type.startswith("or"):
            output_prob = self._or_prob(node)
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
            output_prob = 1 - self._or_prob(node)
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

    def _or_prob(self, node):
        parity = 1
        prob = 0

        for i in range(len(node.inputs)):
            combos = list(combinations(node.inputs, i + 1))
            inter_prob = [np.prod([self.probs[c] for c in combo]) for combo in combos]
            prob += parity * sum(inter_prob)
            parity *= -1

        return prob

