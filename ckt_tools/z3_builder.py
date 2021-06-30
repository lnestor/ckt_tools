import z3
from node_type import NodeType

class Z3Builder():
    """Class to build a z3 representation of a circuit from a CircuitGraph.

    """

    def build(self, graph):
        """Builds a z3 representation of a circuit.

        Parameters:
            graph: the CircuitGraph representing the circuit

        Returns:
            dict: outputs in the form of {output_name: z3}
            list: list of input names

        """
        self.z3_repr = {}
        self.inputs = []
        outputs = {}

        for name in graph.outputs:
            outputs[name] = self._build_node(graph.nodes, name)

        return outputs, self.inputs

    def _build_node(self, nodes, name):
        """Returns the z3 representation for a single node.

        Parameters:
            nodes: a list of all nodes in the circuit
            name: the name of the node to build

        Returns:
            z3_obj: the z3 representation of the circuit

        """
        if name in self.z3_repr:
            return self.z3_repr[name]

        if isinstance(name, int):
            return name == 1

        try:
            node = nodes[name]
        except:
            import pdb; pdb.set_trace()

        if node.type == NodeType.INPUT:
            self._build_input(node, name)
        elif node.type == NodeType.CONSTANT:
            self.z3_repr[name] = node.inputs[0] == 1
        else:
            fanin = [self._build_node(nodes, child_name) for child_name in node.inputs]
            self._build_gate(node, fanin)

        return self.z3_repr[name]

    def _build_input(self, node, name):
        """Builds the z3 representation for a input node

        Parameters:
            node: the node to find the z3 representation for
            name: the name of the input

        """
        self.inputs.append(name)
        self.z3_repr[name] = z3.Bool(name)

    def _build_gate(self, node, fanin):
        """Builds the z3 representation for a logic gate node.

        Parameters:
            node: the node to find the z3 representation for
            fanin: the input nodes the the node

        """
        if node.type.startswith("and"):
            self.z3_repr[node.output] = z3.And(*fanin)
        elif node.type.startswith("xor"):
            total_xor = z3.Xor(fanin[0], fanin[1])

            for i in range(len(fanin) - 2):
                total_xor = z3.Xor(total_xor, fanin[i + 2])

            # self.z3_repr[node.output] = z3.Xor(*fanin)
            self.z3_repr[node.output] = total_xor
        elif node.type.startswith("or"):
            self.z3_repr[node.output] = z3.Or(*fanin)
        elif node.type == "not":
            self.z3_repr[node.output] = z3.Not(*fanin)
        elif node.type.startswith("nand"):
            self.z3_repr[node.output] = z3.Not(z3.And(*fanin))
        elif node.type.startswith("xnor"):
            total_xor = z3.Xor(fanin[0], fanin[1])

            for i in range(len(fanin) - 2):
                total_xor = z3.Xor(total_xor, fanin[i + 2])

            self.z3_repr[node.output] = z3.Not(total_xor)
        elif node.type.startswith("nor"):
            self.z3_repr[node.output] = z3.Not(z3.Or(*fanin))
        elif node.type == "buf":
            self.z3_repr[node.output] = z3.Not(z3.Not(*fanin))
        elif node.type == "assign":
            self.z3_repr[node.output] = fanin[0]
        else:
            import pdb; pdb.set_trace()
            raise
