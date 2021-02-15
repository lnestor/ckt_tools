class CircuitGraph:
    """Graph representation of a circuit.

    The nodes in the graph represent the gates of the circuits. The edges
    between nodes represent the wires connecting the gates.

    """
    def __init__(self, nodes, outputs, inputs, assign_count):
        self.nodes = nodes
        self.outputs = outputs
        self.inputs = inputs
        self.size = len(nodes) - assign_count - len(inputs)

    def __eq__(self, other):
        if isinstance(self, other.__class__):
            return self.nodes == other.nodes and self.outputs == other.outputs
        else:
            return False
