import argparse
from pyverilog.vparser.parser import parse
import z3

from ast_parser import parse_ast
from z3_builder import Z3Builder
from ckt2cnf.printer import Printer

def measure_metrics(z3_ckt, printer):
    num_clauses = []
    num_variables = []

    for name, formula in z3_ckt.items():
        printer.print_debug("Adding " + name + " to goal")
        g = z3.Goal()
        g.add(formula)

        printer.print_debug("Converting to tseitin-cnf")
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
                    print("More than one child present (%i)" % (len(child.children)))

        if len(cnf) != 0:
            num_clauses.append(len(cnf))

        num_variables.append(len(variables))

    avg_clauses = sum(num_clauses) / len(num_clauses)
    max_clauses = max(num_clauses)
    avg_variables = sum(num_variables) / len(num_variables)
    max_variables = max(num_variables)

    metrics = (avg_clauses, max_clauses, avg_variables, max_variables)
    printer.print_metrics(metrics)

if __name__ == "__main__" and __package__ is None:
    __package__ = "ckt_tools.ckt2cnf"

    parser = argparse.ArgumentParser(description="Convert a verilog circuit into a CNF formula and measure metrics on that formula")
    parser.add_argument("verilog_file", help="The circuit's verilog file")
    parser.add_argument("--csv", action="store_true", help="Output the metrics in a CSV format")
    parser.add_argument("--csv_header", action="store_true", help="Output the metric names as a header of the CSV file")
    parser.add_argument("--debug", action="store_true", help="Output debug info")

    args = parser.parse_args()

    printer = Printer(args.csv, args.csv_header, args.debug)

    printer.print_detailed("Parsing Verilog file...")
    ast, directives = parse([args.verilog_file], debug=False)
    printer.print_detailed("Parsing complete\n")

    printer.print_detailed("Parsing AST...")
    ckt_graph = parse_ast(ast)
    printer.print_detailed("Parsing complete\n")

    printer.print_detailed("Building circuit...")
    builder = Z3Builder()
    z3_ckt, inputs = builder.build(ckt_graph)
    printer.print_detailed("Building circuit complete\n")

    printer.print_detailed("Measuring metrics...\n")
    measure_metrics(z3_ckt, printer)

