import argparse
from pyverilog.vparser.parser import parse
from pyverilog.vparser.parser import VerilogCodeParser
import random
import time
import z3

from ast_parser import parse_ast
from sat.circuit_solver import CircuitSolver
from sat.dip_finder import DipFinder
from sat.logger import Logger
from sat.model import extract
from z3_builder import Z3Builder

def attack(locked_graph, oracle_graph, logger):
    dip_finder = DipFinder(locked_graph)
    oracle_solver = CircuitSolver(Z3Builder().build(oracle_graph)[0])

    key_constraints = []
    iterations = 0

    while dip_finder.can_find_dip():
        dip = dip_finder.find_dip()
        oracle_output = oracle_solver.solve(dip)
        dip_finder.add_constraint(dip, oracle_output)
        key_constraints.append((dip, oracle_output))

        iterations += 1
        logger.log("DIPs found: %i" % (iterations))

    logger.log("Finding final key. ")
    key = find_key(key_constraints, locked_graph)

    key_string = key_str(key)
    logger.log("Key found: %s" % (key_string))

    match = check_key(key, locked_graph, oracle_graph)
    if match:
        logger.log("Circuits match!")
    else:
        logger.log("ERROR: Circuits do not match")

    return iterations, match

def find_key(key_constraints, locked_graph):
    s = z3.Solver()
    builder = Z3Builder()

    for dip, output in key_constraints:
        circuit, _ = builder.build(locked_graph, input_map=dip)
        constraints = [circuit[name] == output[name] for name in circuit]

        s.add(*constraints)

    s.check()
    return extract(s.model(), locked_graph.key_inputs(), completion=True)

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

def run(locked_file, oracle_file, csv_file=None):
    logger = Logger(locked_file)

    logger.log("Reading in circuits. ")
    locked_ast, _ = my_parse([locked_file], debug=False)
    oracle_ast, _ = my_parse([oracle_file], debug=False)

    locked_graph = parse_ast(locked_ast)
    oracle_graph = parse_ast(oracle_ast)

    start = time.time()
    iterations, match = attack(locked_graph, oracle_graph, logger)
    end = time.time()

    if csv_file is not None:
        with open(csv_file, "a") as f:
            f.write("%s,%f,%i,%i\n" % (locked_file, end - start, iterations, match))

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Run a SAT attack.")
    parser.add_argument("locked_file", help="The locked verilog file.")
    parser.add_argument("oracle", help="The unlocked verilog file.")
    parser.add_argument("--csv", help="A CSV file to log metrics to.")

    args = parser.parse_args()

    run(args.locked_file, args.oracle, csv_file=args.csv)

