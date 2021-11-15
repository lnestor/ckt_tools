from floating import find_floating
from parsing.bench import parse_bench
from parsing.verilog import parse_verilog
from parsing.gate import Gate

import os

TF_INPUT_NAME = "TF_CONST"
TF_NEG_NAME = "TF_CONST_NOT"
TRUE = "TRUE_CONST"
FALSE = "FALSE_CONST"

class BenchFile:
    def __init__(self, filename):
        self.filename = filename

        _, extension = os.path.splitext(filename)

        if extension == ".bench":
            self.inputs, self.outputs, self.gates = parse_bench(filename)
        elif extension == ".v":
            self.inputs, self.outputs, self.gates = parse_verilog(filename)
        else:
            print("Error: unknown file extension %s in BenchFile" % filename)
            exit(-1)

    def add_input(self, i):
        self.inputs.append(i)

    def remove_inputs(self, inputs=None):
        if inputs is None:
            self.inputs = []
        else:
            self.inputs = [i for i in self.inputs if not i in inputs]

    def add_gate(self, output, gate_type, inputs):
        gate = Gate(output, gate_type, inputs)
        self.gates[output] = gate

    def remove_gate(self, node):
        del self.gates[node]

    def recursive_rm(self, node):
        if node in self.inputs:
            self.inputs.remove(node)
        elif node in self.gates:
            gate = self.gates[node]
            inputs = gate.inputs

            for i in inputs:
                self.recursive_rm(i)

            del self.gates[node]

    def apply_pattern(self, inputs, pattern):
        # Create T/F constants
        self.add_input(TF_INPUT_NAME)
        self.add_gate(TF_NEG_NAME, "not", [TF_INPUT_NAME])

        if "0" in pattern:
            self.add_gate(FALSE, "and", [TF_INPUT_NAME, TF_NEG_NAME])
        if "1" in pattern:
            self.add_gate(TRUE, "nand", [TF_INPUT_NAME, TF_NEG_NAME])

        def tf_val(s):
            return FALSE if s == "0" else TRUE

        pattern_map = {name: tf_val(val) for name, val in zip(inputs, pattern)}

        for output, gate in self.gates.items():
            gate.inputs = [pattern_map.get(i, i) for i in gate.inputs]

    # def apply_pattern(self, pattern_map):
    #     for output, gate in self.gates.items():
    #         gate.inputs = [pattern_map.get(i, i) for i in gate.inputs]

    def write(self, filename):
        floating = find_floating(self.outputs, self.gates)

        with open(filename, "w") as f:
            f.write("# %s\n" % filename)
            f.write("#\n")

            f.write("\n")
            for i in self.inputs:
                f.write("INPUT(%s)\n" % i)

            f.write("\n")
            for o in self.outputs:
                f.write("OUTPUT(%s)\n" % o)

            f.write("\n")
            for output, gate in self.gates.items():
                if output not in floating:
                    f.write("%s\n" % gate)

    def __str__(self):
        floating = find_floating(self.outputs, self.gates)

        s = ""
        s += "# %s\n" % self.filename
        s += "#\n"

        s += "\n"
        for i in self.inputs:
            s += "INPUT(%s)\n" % i

        s += "\n"
        for o in self.outputs:
            s += "OUTPUT(%s)\n" % o

        s += "\n"
        for output, gate in self.gates.items():
            if output not in floating:
                s += "%s\n" % gate

        return s
