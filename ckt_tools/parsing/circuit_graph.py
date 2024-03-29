class CircuitGraph:
    """Graph representation of a circuit.

    The nodes in the graph represent the gates of the circuits. The edges
    between nodes represent the wires connecting the gates.

    """
    def __init__(self, nodes, outputs, inputs):
        self.nodes = nodes
        self.outputs = outputs
        self.inputs = inputs
        self.size = len(nodes) - len(inputs)

    def non_inputs(self):
        return dict(filter(lambda x: x[1].type != "input", self.nodes.items()))

    def key_inputs(self):
        return list(filter(lambda x: "key" in x, self.inputs))

    def primary_inputs(self):
        return list(filter(lambda x: "key" not in x, self.inputs))

    def __eq__(self, other):
        if isinstance(self, other.__class__):
            return self.nodes == other.nodes and self.outputs == other.outputs
        else:
            return False
