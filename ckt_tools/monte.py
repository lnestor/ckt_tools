import argparse
from pyverilog.vparser.parser import parse
import random

from parsing.ast_parser import parse_ast
from parsing.z3_builder import Z3Builder
from sat.circuit_solver import CircuitSolver

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Perfrom a Monte Carlo simulation to determine output signal probabilities")
    parser.add_argument("verilog", help="The verilog file with the circuit to simulate")
    parser.add_argument("negate", help="The node to negate as if it had been flipped by a key")

    args = parser.parse_args()

    ast, _ = parse([args.verilog], debug=False)
    ckt_graph = parse_ast(ast)

    oracle_ckt = Z3Builder().build(ckt_graph)[0]
    modified_ckt = Z3Builder().build(ckt_graph, to_negate=[args.negate])[0]

    oracle_solver = CircuitSolver(oracle_ckt)
    modified_solver = CircuitSolver(modified_ckt)

    iterations = 1000
    difference_count = 0

    for i in range(iterations):
        input_map = {name: random.choice([True, False]) for name in ckt_graph.inputs}
        expected_output = oracle_solver.solve(input_map)
        modified_output = modified_solver.solve(input_map)

        if expected_output != modified_output:
            difference_count += 1

    percent_diff = difference_count / iterations
    print(percent_diff)
    # import pdb; pdb.set_trace()
