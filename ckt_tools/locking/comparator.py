from shared import *

class ComparatorCircuit:
    def __init__(self, moddef, unique_name, inputs):
        self.moddef = moddef
        self.name = unique_name
        self.inputs = inputs
        self.xor0_gates = [None] * len(inputs)
        self.xor1_gates = [None] * len(inputs)

    def create(self, patterns):
        """Creates a circuit that compares inputs to a set of defined patterns.

        If the inputs match any pattern, a 1 is returned. If the inputs don't
        match any patterns, a 0 is returned.
        """

        or_gates = [None] * len(patterns)
        for i, pattern in enumerate(patterns):
            xor_gates = [None] * len(self.inputs)
            for bit_pos, bit in enumerate(pattern):
                xor_gate = self._get_xor_gate(bit_pos, bit, self.inputs[bit_pos])
                xor_gates[bit_pos] = xor_gate

            gate_name = self.name + "_and_%i" % (i)
            gate_input_names = [get_ilist_name(x) for x in xor_gates]
            or_gate = create_ilist(self.moddef, "and", gate_name, gate_name, gate_input_names)
            or_gates[i] = or_gate

        gate_name = self.name + "_output"
        gate_input_names = [get_ilist_name(x) for x in or_gates]
        final_output = create_ilist(self.moddef, "nor", gate_name, gate_name, gate_input_names)

        return final_output

    def _get_xor_gate(self, bit_pos, bit, _input):
        if bit == "0":
            if self.xor0_gates[bit_pos] is None:
                gate_name = self.name + "_xnor0_%i" % (bit_pos)
                self.xor0_gates[bit_pos] = create_ilist(self.moddef, "xnor", gate_name, gate_name, [_input.name, "0"])

            return self.xor0_gates[bit_pos]
        else:
            if self.xor1_gates[bit_pos] is None:
                gate_name = self.name + "_xnor1_%i" % (bit_pos)
                self.xor1_gates[bit_pos] = create_ilist(self.moddef, "xnor", gate_name, gate_name, [_input.name, "1"])

            return self.xor1_gates[bit_pos]

