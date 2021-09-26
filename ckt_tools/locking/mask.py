class ComparatorCircuit:
    def __init__(self, moddef, unique_name):
        self.moddef = moddef
        self.name = unique_name
        self.xor0_gates = {}
        self.xor1_gates = {}

    def create(self, inputs, patterns):
        """Creates a circuit that compares inputs to a set of defined patterns.

        If the inputs match any pattern, a 1 is returned. If the inputs don't
        match any patterns, a 0 is returned.
        """

        or_gates = [None] * len(patterns)
        for pattern in patterns:
            xor_gates = [None] * len(inputs)
            for bit_pos, bit in enumerate(pattern):
                xor_gate = self.get_xor_gate(bit_pos, bit, inputs[bit_pos])
                xor_gates[bit_pos] = xor_gate

            gate_name = self.name + "_or_%i" % (i)
            gate_input_names = [get_ilist_name(x) for x in xor_gates]
            or_gate = create_ilist(self.moddef, "or", gate_name, gate_name, gate_input_names)
            or_gates.append(or_gate)

        gate_name = self.name + "_output" % (i)
        gate_input_names = [get_ilist_name(x) for x in or_gates]
        final_output = create_ilist(self.moddef, "or", gate_name, gate_name, gate_input_names)

        return final_output

    def _get_xor_gate(self, bit_pos, bit, _input):
        if bit == "0":
            if self.xor0_gates[bit_pos] is None:
                gate_name = self.name + "_xor0_%i" % (bit_pos)
                self.xor0_gates[bit_pos] = create_ilist(self.moddef, "xor", gate_name, gate_name, [get_ilist_name(_input), "0"])

            return xor0_gates[bit_pos]
        else:
            if self.xor1_gates[bit_pos] is None:
                gate_name = self.name + "_xor1_%i" % (bit_pos)
                self.xor1_gates[bit_pos] = create_ilist(self.moddef, "xor", gate_name, gate_name, [get_ilist_name(_input), "1"])

            return xor1_gates[bit_pos]

