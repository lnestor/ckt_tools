class Node:
    """Class representing a node in a circuit graph.

    Note that this is different than a node of a circuit. Whereas a node
    in a circuit is the connection between gates, a node in the circuit graph
    is the gate itself.

    Parameters:
        output: the name of the output wire
        inputs: the names of the input wires
        type: the type of gate

    """
    def __init__(self, output, inputs, type):
        self.output = output
        self.inputs = inputs
        self.type = type

    def __eq__(self, other):
        if isinstance(self, other.__class__):
            return self.output == other.output and self.inputs == other.inputs and self.type == other.type
        else:
            return False
