import math
import numpy as np
from tabulate import tabulate

def dict_to_table(d, headers, first_col_label=""):
    table = [[first_col_label, *headers]]

    for label in d:
        row = [label, *[d[label][h] for h in headers]]
        table.append(row)

    return np.array(table)

def print_in_sections(table, cols_per_print):
    for i in range(math.ceil(len(table[0][1:]) / cols_per_print)):
        first_col = i * cols_per_print + 1
        last_col = min((i + 1) * cols_per_print + 1, len(table[0]))
        cols_to_print = [0, *[*range(first_col, last_col)]]

        print(tabulate(table[:,cols_to_print], headers="firstrow"))
        print("\n")

def table_to_csv(table):
    csv = ""

    for row in table:
        csv += ",".join(row)
        csv += "\n"

    return csv

