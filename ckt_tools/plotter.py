import argparse
from datetime import datetime
import numpy as np
import matplotlib.pyplot as plt
from scipy import stats

def read_csv(args):
    print("Reading in structural metrics...")
    struct = np.genfromtxt(args.structural_file, dtype=float, names=True, delimiter=",")

    struct_rows = struct.size
    struct_cols = len(struct[0])
    print("Read %i structural metrics for %i circuits" % (struct_cols, struct_rows))

    print("Reading in CNF metrics...")
    cnf = np.genfromtxt(args.cnf_file, dtype=float, names=True, delimiter=",")

    cnf_rows = cnf.size
    cnf_cols = len(cnf[0])
    print("Read %i CNF metrics for %i circuits" % (cnf_cols, cnf_rows))

    if struct_rows != cnf_rows:
        print("Different number of circuits in CSV files. Aborting")
        exit(-1)

    return struct, cnf

def print_selections(ndarray):
    for i, col_name in enumerate(ndarray.dtype.names):
        print("%i) %s" % (i + 1, col_name))

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Create a scatter plot of CNF formula vs circuit metric")
    parser.add_argument("structural_file", help="A CSV file with structure metrics")
    parser.add_argument("cnf_file", help="A CSV file with CNF metrics")
    parser.add_argument("--show", action="store_true", help="Display the figure instead of saving it")
    args = parser.parse_args()

    struct, cnf = read_csv(args)

    print_selections(struct)
    struct_sel_index = int(input("Enter number of structural metric to plot: ")) - 1
    struct_sel = struct[struct.dtype.names[struct_sel_index]]

    print_selections(cnf)
    cnf_sel_index = int(input("Enter number of CNF metric to plot: ")) - 1
    cnf_sel = cnf[cnf.dtype.names[cnf_sel_index]]

    bin_input = input("Enter number of bins to form (or hit enter to not bin): ")

    if len(bin_input) == 0:
        xdata = struct_sel
        ydata = cnf_sel
        yerror = None
    else:
        bin_count = int(bin_input)
        mean, bin_edges, _ = stats.binned_statistic(struct_sel, cnf_sel, bins=bin_count)
        std, _, _ = stats.binned_statistic(struct_sel, cnf_sel, statistic="std", bins=bin_count)
        bin_centers = [(l + r) / 2 for l, r in zip(bin_edges, bin_edges[1:])]

        xdata = bin_centers
        ydata = mean
        yerror = std

    fig = plt.figure()
    ax = fig.add_subplot(1,1,1)

    ax.errorbar(xdata, ydata, yerr=yerror, fmt=".")

    struct_name = struct.dtype.names[struct_sel_index]
    ax.set_xlabel(struct_name)
    cnf_name = cnf.dtype.names[cnf_sel_index]
    ax.set_ylabel(cnf_name)
    ax.set_title("%s vs %s" % (cnf_name, struct_name))

    if args.show:
        plt.show()
    else:
        date_name = datetime.now().strftime("%m_%d_%Y_%H%M%S")
        fig_name = input("Enter save name of figure (or leave blank for generic name): ")
        if len(fig_name) > 0:
            fig_name = fig_name + "_"

        fig.savefig("figures/%s%s" % (fig_name, date_name), bbox_inches="tight")
