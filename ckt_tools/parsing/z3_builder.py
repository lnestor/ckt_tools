import z3

class Z3Builder():
    """Class to build a z3 representation of a circuit from a CircuitGraph.

    """

    def build(self, graph, key_suffix="", input_map={}, to_negate=[]):
        """Builds a z3 representation of a circuit.

        Parameters:
            graph: the CircuitGraph representing the circuit
            key_suffix: optional suffix to add to the end of all key inputs
            input_map: optional literal replacement for input values
            to_negate: optional list of nodes to add inverter to

        Returns:
            dict: outputs in the form of {output_name: z3}
            list: list of input names

        """
        self.z3_repr = {}
        self.inputs = []
        self.key_suffix = key_suffix
        self.input_map = input_map
        self.to_negate = to_negate
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

        if name in ["True", "False"]:
            return name == "True"

        if name in ["1", "0"]:
            return name == "1"

        try:
            node = nodes[name]
        except:
            import pdb; pdb.set_trace()

        if node.type == "input":
            self._build_input(node, name)
        elif node.type == "constant":
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
        if name in self.input_map:
            self.z3_repr[name] = self.input_map[name]
        else:
            bool_name = name if "key" not in name else name + self.key_suffix
            self.inputs.append(bool_name)
            self.z3_repr[name] = z3.Bool(bool_name)

    def _build_gate(self, node, fanin):
        """Builds the z3 representation for a logic gate node.

        Parameters:
            node: the node to find the z3 representation for
            fanin: the input nodes the the node

        """
        if node.type.startswith("and"):
            node_repr = z3.And(*fanin)
        elif node.type.startswith("xor"):
            total_xor = z3.Xor(fanin[0], fanin[1])

            for i in range(len(fanin) - 2):
                total_xor = z3.Xor(total_xor, fanin[i + 2])

            # self.z3_repr[node.output] = z3.Xor(*fanin)
            node_repr = total_xor
        elif node.type.startswith("or"):
            node_repr = z3.Or(*fanin)
        elif node.type == "not":
            node_repr = z3.Not(*fanin)
        elif node.type.startswith("nand"):
            node_repr = z3.Not(z3.And(*fanin))
        elif node.type.startswith("xnor"):
            total_xor = z3.Xor(fanin[0], fanin[1])

            for i in range(len(fanin) - 2):
                total_xor = z3.Xor(total_xor, fanin[i + 2])

            node_repr = z3.Not(total_xor)
        elif node.type.startswith("nor"):
            node_repr = z3.Not(z3.Or(*fanin))
        elif node.type == "buf":
            node_repr = z3.Not(z3.Not(*fanin))
        elif node.type == "assign":
            node_repr = fanin[0]
        else:
            import pdb; pdb.set_trace()
            raise

        if node.output in self.to_negate:
            self.z3_repr[node.output] = z3.Not(node_repr)
        else:
            self.z3_repr[node.output] = node_repr
