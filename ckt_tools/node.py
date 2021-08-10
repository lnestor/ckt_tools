class Node:
    """Class representing a node in a circuit graph.

    Note that this is different than a node of a circuit. Whereas a node
    in a circuit is the connection between gates, a node in the circuit graph
    is the gate itself.

    Parameters:
        output: the name of the output wire
        inputs: the names of the input wires
        type: the type of gate
        vname: the verilog name of the gate

    """
    def __init__(self, output, inputs, type, vname=""):
        self.output = output
        self.inputs = inputs
        self.type = type
        self.vname = vname

    def __eq__(self, other):
        if isinstance(self, other.__class__):
            return self.output == other.output and self.inputs == other.inputs and self.type == other.type
        else:
            return False

    def __repr__(self):
        return "%s = %s(%s)" % (self.output, self.type, ",".join(map(str, self.inputs)))

    def __str__(self):
        return "%s = %s(%s)" % (self.output, self.type, ",".join(map(self.inputs)))
