from pyverilog.vparser.parser import parse
import z3

from arg_parser import get_filename
from ast_parser import parse_ast
from z3_builder import Z3Builder

def measure_metrics(z3_ckt):
    num_clauses = []
    num_variables = []

    for name, formula in z3_ckt.items():
        # print("Adding " + name + " to goal")
        g = z3.Goal()
        g.add(formula)

        # print("Converting to tseitin-cnf")
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

    print("\nNumber of clauses: " + repr(num_clauses))
    print("Average number of clauses: " + str(sum(num_clauses) / len(num_clauses)))
    print("Max number of clauses: " + str(max(num_clauses)))
    print("Average number of variables: " + str(sum(num_variables) / len(num_variables)))
    print("Max number of variables: " + str(max(num_variables)))

if __name__ == "__main__":
    filename = get_filename()

    print("Parsing Verilog file")
    ast, directives = parse([filename])
    print("Parsing complete")

    print("Parsing AST")
    ckt_graph = parse_ast(ast)
    print("Parsing complete")

    print("Building circuit")
    builder = Z3Builder()
    z3_ckt, inputs = builder.build(ckt_graph)
    print("Building circuit complete")

    print("Measuring metrics")
    measure_metrics(z3_ckt)

