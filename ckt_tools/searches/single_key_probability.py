from .probability import Probability

class SingleKeyProbability(Probability):
    def __init__(self, graph, key, expected_key):
        self.graph = graph
        self.key_of_interest = key
        self.probs = dict.fromkeys(graph.nodes)
        self.expected_key = expected_key

    def call(self, node):
        if node.output == self.key_of_interest:
            self.probs[node.output] = 0.5
        elif node.type == "input" and "key" in node.output:
            self.probs[node.output] = self.expected_key[node.output]
        elif node.type == "input":
            self.probs[node.output] = 0.5
        else:
            self.probs[node.output] = self._gate_prob(node)

    def should_traverse(self, node_name):
        return True
