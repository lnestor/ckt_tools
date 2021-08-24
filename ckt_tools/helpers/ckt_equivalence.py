import z3

from parsing.z3_builder import Z3Builder

def check_eq_with_key(key, locked_graph, unlocked_graph):
    builder = Z3Builder()

    locked_half, _ = builder.build(locked_graph, input_map=key)
    unlocked_half, _ = builder.build(unlocked_graph)
    output_xors = [z3.Xor(locked_half[name], unlocked_half[name]) for name in locked_half]
    miter = {"diff": z3.Or(*output_xors)}

    s = z3.Solver()
    s.add(miter["diff"] == True)
    return s.check() == z3.unsat
