import argparse
from pyverilog.vparser.parser import parse
from pyverilog.vparser.parser import VerilogCodeParser
import random
import time
import z3

from parsing.ast_parser import parse_ast
from helpers.ckt_equivalence import check_eq_with_key
from sat.circuit_solver import CircuitSolver
from sat.dip_finder import DipFinder
from sat.key_history import KeyHistory
from sat.logger import Logger
from sat.model import extract
from parsing.z3_builder import Z3Builder

CIRCUITS_DONT_MATCH = 0
CIRCUITS_MATCH = 1
EQUIVALENCE_NOT_CHECKED = 2

def attack(locked_graph, oracle_graph, logger, check_correct=True):
    dip_finder = DipFinder(locked_graph)
    oracle_solver = CircuitSolver(Z3Builder().build(oracle_graph)[0])
    history = KeyHistory(locked_graph.key_inputs())

    key_constraints = []
    iterations = 0

    while dip_finder.can_find_dip():
        dip = dip_finder.find_dip()
        oracle_output = oracle_solver.solve(dip)
        dip_finder.add_constraint(dip, oracle_output)
        key_constraints.append((dip, oracle_output))

        key_candidate = find_key(key_constraints, locked_graph, completion=False)
        history.save(key_candidate)

        iterations += 1
        logger.log("DIPs found: %i" % (iterations))

    logger.log("Finding final key. ")
    key = find_key(key_constraints, locked_graph)
    history.save(key)

    key_string = key_str(key)
    logger.log("Key found: %s" % (key_string))

    if check_correct:
        logger.log("Checking key correctness.")
        match = check_eq_with_key(key, locked_graph, oracle_graph)
        if match:
            logger.log("Correct key!")
        else:
            logger.log("ERROR: Key does not make circuits equivalent")
    else:
        match = EQUIVALENCE_NOT_CHECKED

    return iterations, match

def find_key(key_constraints, locked_graph, completion=True):
    s = z3.SimpleSolver()
    s.set(auto_config=False, relevancy=2)
    builder = Z3Builder()

    for dip, output in key_constraints:
        circuit, _ = builder.build(locked_graph, input_map=dip)
        constraints = [circuit[name] == output[name] for name in circuit]

        s.add(*constraints)

    s.check()
    key = extract(s.model(), locked_graph.key_inputs(), completion=completion)
    return key

def check_key(key, locked_graph, oracle_graph):
    builder = Z3Builder()

    locked_half, _ = builder.build(locked_graph, input_map=key)
    oracle_half, _ = builder.build(oracle_graph)
    output_xors = [z3.Xor(locked_half[name], oracle_half[name]) for name in locked_half]
    miter = {"diff": z3.Or(*output_xors)}

    s = z3.Solver()
    s.add(miter["diff"] == True)
    return s.check() == z3.unsat

def key_str(key):
    ordered_names = sorted(key.keys(), key=lambda name: int(name[8:]))
    key_string = ""

    for name in ordered_names:
        if key[name]:
            key_string += "1"
        else:
            key_string += "0"

    return key_string

def my_parse(filelist, debug=True):
    preprocess_output = "preprocess_%x.output" % (random.randint(0, 16777215))
    codeparser = VerilogCodeParser(filelist, preprocess_output=preprocess_output, debug=debug)
    ast = codeparser.parse()
    directives = codeparser.get_directives()

    return ast, directives

def run(locked_file, oracle_file, check_correct=True):
    logger = Logger(locked_file)

    logger.log("Reading in circuits. ")
    locked_ast, _ = my_parse([locked_file], debug=False)
    oracle_ast, _ = my_parse([oracle_file], debug=False)

    locked_graph = parse_ast(locked_ast)
    oracle_graph = parse_ast(oracle_ast)

    start = time.time()
    iterations, match = attack(locked_graph, oracle_graph, logger, check_correct=check_correct)
    end = time.time()

    return end - start, iterations, match

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Run a SAT attack.")
    parser.add_argument("locked_file", help="The locked verilog file.")
    parser.add_argument("oracle", help="The unlocked verilog file.")
    parser.add_argument("--csv", help="A CSV file to log metrics to.")
    parser.add_argument("-cc", "--check_correctness", action="store_true", help="Check for final key correctness. This can cause issues when timing the SAT attack because it takes a different amount of time for different circuits.")

    args = parser.parse_args()

    runtime, iterations, match = run(args.locked_file, args.oracle, check_correct=args.check_correctness)

    if args.csv is not None:
        with open(args.csv, "a") as f:
            f.write("%s,%f,%i,%i\n" % (locked_file, runtime, iterations, match))

