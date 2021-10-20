class BenchFile:
    def __init__(self, filename):
        self.filename = filename
        self.inputs = []
        self.outputs = []
        self.gates = {}

        self._parse(filename)

    def add_input(self, i):
        self.inputs.append(i)

    def clear_inputs(self, inputs=None):
        if inputs is None:
            self.inputs = []
        else:
            self.inputs = [i for i in self.inputs if not i in inputs]

    def add_gate(self, line):
        gate = Gate(line)
        self.gates[gate.output] = gate

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

    def apply_pattern(self, pattern_map):
        for output, gate in self.gates.items():
            gate.inputs = [pattern_map.get(i, i) for i in gate.inputs]

    def __str__(self):
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
            s += "%s\n" % gate

        return s

    def write(self, filename):
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
                f.write("%s\n" % gate)

    def _parse(self, filename):
        with open(filename) as f:
            lines = f.readlines()

        for line in lines:
            if line.startswith("#"):
                continue
            elif line.strip() == "":
                continue
            elif line.startswith("INPUT"):
                self.inputs.append(line[line.find("(") + 1:line.find(")")])
            elif line.startswith("OUTPUT"):
                self.outputs.append(line[line.find("(") + 1:line.find(")")])
            else:
                gate = Gate(line)
                self.gates[gate.output] = gate

class Gate:
    def __init__(self, line):
        self.output = line.split("=")[0].strip()
        self.type = line.split("=")[1].split("(")[0].strip()
        self.inputs = [l.strip() for l in line[line.find("(") + 1:line.find(")")].split(",")]

    def __str__(self):
        return "%s = %s(%s)" % (self.output, self.type, ", ".join(self.inputs))

    def __repr__(self):
        return "%s = %s(%s)" % (self.output, self.type, ", ".join(self.inputs))
