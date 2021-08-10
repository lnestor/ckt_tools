from .probability import Probability

class SingleKeyProbability(Probability):
    def __init__(self, graph, key):
        self.graph = graph
        self.key_of_interest = key
        self.probs = dict.fromkeys(graph.nodes)

        key_gates = [n for n in graph.nodes if graph.nodes[n].vname.startswith("Key") and not "NOT" in graph.nodes[n].vname]
        self.expected_key = self._calc_expected_key(key_gates)

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

    def _calc_expected_key(self, key_gates):
        key = {}

        for node_name in key_gates:
            node = self.graph.nodes[node_name]
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
