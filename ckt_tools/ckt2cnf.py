import argparse
from pyverilog.vparser.parser import parse
import z3

from ast_parser import parse_ast
from logger import Logger
from z3_builder import Z3Builder

HEADERS = [
    "Clauses/Output (Avg)",
    "Clauses/Output (Max)",
    "Variables/Output (Avg)",
    "Variables/Output (Max)",
    "Clause/Variable Ratio"
]

def measure_metrics(z3_ckt, logger):
    num_clauses = []
    num_variables = []

    for name, formula in z3_ckt.items():
        logger.log_debug("Adding " + name + " to goal")
        g = z3.Goal()
        g.add(formula)

        logger.log_debug("Converting to tseitin-cnf")
        tactic = z3.Tactic("tseitin-cnf")
        cnf = tactic(g)[0]

        variables = set()
        for clause in cnf:
            if len(clause.children()) == 0:
                input_name = str(clause)
                variables.add(input_name)

            for child in clause.children():
                if len(child.children()) == 0:
                    input_name = str(child)
                    variables.add(input_name)
                elif len(child.children()) == 1:
                    input_name = str(child.children()[0])
                    variables.add(input_name)
                else:
                    log("More than one child present (%i)" % (len(child.children)))

        if len(cnf) != 0:
            num_clauses.append(len(cnf))

        if len(variables) != 0:
            num_variables.append(len(variables))

    if len(num_clauses) != len(num_variables):
        # This might happen but I'm not sure, adding this in
        # to make debugging easier
        import pdb; pdb.set_trace()

    ratio = [c / v for c, v in zip(num_clauses, num_variables)]

    avg_clauses = sum(num_clauses) / len(num_clauses)
    max_clauses = max(num_clauses)
    avg_variables = sum(num_variables) / len(num_variables)
    max_variables = max(num_variables)
    avg_ratio = sum(ratio) / len(ratio)

    metrics = (avg_clauses, max_clauses, avg_variables, max_variables, avg_ratio)
    logger.log_detailed("Average number of clauses: %.2f" % (metrics[0]))
    logger.log_detailed("Max number of clauses: %i" % (metrics[1]))

    logger.log_detailed("Average number of variables: %.2f" % (metrics[2]))
    logger.log_detailed("Max number of variables: %i" % (metrics[3]))

    logger.log_detailed("Average clause/variable ratio: %.2f" % (metrics[4]))

    logger.log_terse("%.2f,%i,%.2f,%i,%.2f" % metrics)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Convert a verilog circuit into a CNF formula and measure metrics on that formula")
    parser.add_argument("verilog_file", help="The circuit's verilog file")
    parser.add_argument("--csv", action="store_true", help="Output the metrics in a CSV format")
    parser.add_argument("--csv_header", action="store_true", help="Output the metric names as a header of the CSV file")
    parser.add_argument("--debug", action="store_true", help="Output debug info")

    args = parser.parse_args()

    logger = Logger(not args.csv, args.debug)

    logger.log_detailed("Parsing Verilog file...")
    ast, directives = parse([args.verilog_file], debug=False)
    logger.log_detailed("Parsing complete\n")

    logger.log_detailed("Parsing AST...")
    ckt_graph = parse_ast(ast, ignore_assigns=False)
    logger.log_detailed("Parsing complete\n")

    logger.log_detailed("Building circuit...")
    builder = Z3Builder()
    z3_ckt, inputs = builder.build(ckt_graph)
    logger.log_detailed("Building circuit complete\n")

    logger.log_detailed("Measuring metrics...\n")

    if args.csv_header:
        logger.log_terse(",".join(HEADERS))

    measure_metrics(z3_ckt, logger)

