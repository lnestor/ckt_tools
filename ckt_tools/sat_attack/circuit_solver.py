import z3

class CircuitSolver:
    def __init__(self, circuit):
        self.circuit = circuit

    def solve(self, inputs):
        """Gets the outputs after applying specified inputs to the circuit.

        Parameters:
            inputs: the inputs to apply to the circuit

        Returns:
            the output values

        """
        s = z3.Solver()

        for name, value in inputs.items():
            input_obj = z3.Bool(name)
            s.add(input_obj == value)

        values = {}
        for name in self.circuit:
            s.push()
            s.add(self.circuit[name] == True)
            values[name] = s.check() == z3.sat
            s.pop()

        return values


