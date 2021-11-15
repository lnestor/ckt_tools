from .gate import Gate

def parse_bench(filename):
    inputs = []
    outputs = []
    gates = {}

    with open(filename) as f:
        lines = f.readlines()

    for line in lines:
        if line.startswith("#"):
            continue
        elif line.strip() == "":
            continue
        elif line.startswith("INPUT"):
            inputs.append(line[line.find("(") + 1:line.find(")")])
        elif line.startswith("OUTPUT"):
            outputs.append(line[line.find("(") + 1:line.find(")")])
        else:
            gate = Gate(line)
            gates[gate.output] = gate

    return inputs, outputs, gates

