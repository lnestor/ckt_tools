import z3

sys.path.insert(1, os.path.join(sys.path[0], '..'))

from model import extract
from parsing.z3_builder import Z3Builder

class DipFinder:
    def __init__(self, locked_graph):
        self.locked_graph = locked_graph
        self.solver = z3.Solver()

        builder = Z3Builder()
        self.miter_half0, _ = builder.build(locked_graph, key_suffix="_half0")
        self.miter_half1, _ = builder.build(locked_graph, key_suffix="_half1")
        self.miter = self._build_miter(self.miter_half0, self.miter_half1)

        self.solver.add(self.miter["diff"] == True)

    def can_find_dip(self):
        return self.solver.check() == z3.sat

    def find_dip(self):
        model = self.solver.model()
        primary_inputs = self.locked_graph.primary_inputs()
        return extract(model, primary_inputs, completion=True)

    def add_constraint(self, dip, outputs):
        builder = Z3Builder()

        circuit_half0, _ = builder.build(self.locked_graph, key_suffix="_half0", input_map=dip)
        circuit_half1, _ = builder.build(self.locked_graph, key_suffix="_half1", input_map=dip)

        constraints_half0 = [circuit_half0[name] == outputs[name] for name in circuit_half0]
        constraints_half1 = [circuit_half1[name] == outputs[name] for name in circuit_half1]

        self.solver.add(*constraints_half0)
        self.solver.add(*constraints_half1)

        # Why doesn't this work?
        # input_bit_constraints = [z3.Bool(name) == v for name, v in dip.items()]
        # input_constraint = z3.And(*input_bit_constraints)
        # miter_half0_constraints = [self.miter_half0[name] == outputs[name] for name in outputs]
        # miter_half1_constraints = [self.miter_half1[name] == outputs[name] for name in outputs]
        # self.solver.add(z3.Implies(input_constraint, z3.And(*miter_half0_constraints)))
        # self.solver.add(z3.Implies(input_constraint, z3.And(*miter_half1_constraints)))

    def _build_miter(self, miter_half0, miter_half1):
        """Builds a miter circuit given two halfs of the miter circuit

        A miter circuit is when you take two copies of a circuit and XOR
        their outputs. Then you OR the results of that to be given a single
        differential signal which indicates if the circuits produce the same
        outputs or not. If the signal is 1, the circuit don't produce the
        same outputs.

        Parameters:
            miter_half0: the first half of the miter circuit
            miter_half1: the second half of the miter circuit

        Returns:
            the miter circuit
        """
        output_xors = [z3.Xor(miter_half0[name], miter_half1[name]) for name in miter_half0]
        diff = z3.Or(*output_xors)
        return {"diff": diff}

