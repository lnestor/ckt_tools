import argparse
import numpy as np
import os
from sklearn.decomposition import PCA
from sklearn.preprocessing import StandardScaler

from plotting import *

# from datetime import datetime
# from scipy import stats

def read_csv_with_labels(filename):
    labels = np.genfromtxt(filename, usecols=0, dtype=str, delimiter=",")
    labels[1:] = [os.path.basename(name) for name in labels[1:]]
    data = np.genfromtxt(filename, delimiter=",", names=True)
    return {label: list(row)[1:] for label, row in zip(labels[1:], data)}

def apply_pca_transform(data, scaler, pca):
    scaled_data = scaler.fit_transform(list(data.values()))
    scaled = {k: v for k, v in zip(list(data.keys()), scaled_data)}

    pc_data = pca.transform(list(scaled.values()))
    pcs = {k: v for k, v in zip(list(data.keys()), pc_data)}
    return pcs

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Generic plotting tool. Modify this to create the specific plot you want.")
    parser.add_argument("directory", help="A directory for the verilog files you want to plot.")
    parser.add_argument("-a", "--append", action="append", help="Additional directories to consider")
    args = parser.parse_args()

    metrics_dir = "%s/metrics" % (args.directory)
    if not os.path.isdir(metrics_dir):
        print("Metrics directory not present")
        exit(-1)

    o_struct_filename = "benchmarks/generated/original/metrics/struct.csv"
    if os.path.isfile(o_struct_filename):
        o_struct = read_csv_with_labels(o_struct_filename)

        scaler = StandardScaler()
        scaled_data = scaler.fit_transform(list(o_struct.values()))
        o_scaled = {k: v for k, v in zip(list(o_struct.keys()), scaled_data)}

        pca = PCA()
        pc_data = pca.fit_transform(list(o_scaled.values()))
        o_pcs = {k: v for k, v in zip(list(o_struct.keys()), pc_data)}
        o_pc1 = {k: v[0] for k, v in zip(list(o_struct.keys()), pc_data)}
        o_pc2 = {k: v[1] for k, v in zip(list(o_struct.keys()), pc_data)}

    o_cnf_filename = "benchmarks/generated/original/metrics/cnf.csv"
    if os.path.isfile(o_cnf_filename):
        o_cnf = read_csv_with_labels(o_cnf_filename)

    struct_filename = "%s/struct.csv" % (metrics_dir)
    if os.path.isfile(struct_filename):
        struct = read_csv_with_labels(struct_filename)

        pcs = apply_pca_transform(struct, scaler, pca)
        pc1 = {k: v[0] for k, v in pcs.items()}
        pc2 = {k: v[1] for k, v in pcs.items()}

    cnf_filename = "%s/cnf.csv" % (metrics_dir)
    if os.path.isfile(cnf_filename):
        cnf = read_csv_with_labels(cnf_filename)

    sat_filename = "%s/sat.csv" % (metrics_dir)
    if os.path.isfile(sat_filename):
        sat = read_csv_with_labels(sat_filename)

    # Note: This assumes that all appended directories have struct and CNF metrics
    if args.append is not None:
        a_structs = [read_csv_with_labels("%s/metrics/struct.csv" % (s)) for s in args.append]
        a_pcs = [apply_pca_transform(s, scaler, pca) for s in a_structs]
        a_pc1s = [{k: v[0] for k, v in pc.items()} for pc in a_pcs]
        a_cnfs = [read_csv_with_labels("%s/metrics/cnf.csv" % (s)) for s in args.append]

    ### Plot below here ###
    # import pdb; pdb.set_trace()
    # obf_change.plot_obf_change(o_pc1, pc1, o_cnf, cnf, 0)
    obf_change.plot_multi_obf_change([o_pc1, pc1, a_pc1s[0], a_pc1s[1]], [o_cnf, cnf, a_cnfs[0], a_cnfs[1]], 0)

    # import pdb; pdb.set_trace()

# if __name__ == "__main__":
#     parser = argparse.ArgumentParser(description="Create a scatter plot of CNF formula vs circuit metric")
#     parser.add_argument("structural_file", help="A CSV file with structure metrics")
#     parser.add_argument("cnf_file", help="A CSV file with CNF metrics")
#     parser.add_argument("--show", action="store_true", help="Display the figure instead of saving it")
#     args = parser.parse_args()

#     struct, cnf = read_csv(args)

#     print_selections(struct)
#     struct_sel_index = int(input("Enter number of structural metric to plot: ")) - 1
#     struct_sel = struct[struct.dtype.names[struct_sel_index]]

#     print_selections(cnf)
#     cnf_sel_index = int(input("Enter number of CNF metric to plot: ")) - 1
#     cnf_sel = cnf[cnf.dtype.names[cnf_sel_index]]

#     bin_input = input("Enter number of bins to form (or hit enter to not bin): ")

#     if len(bin_input) == 0:
#         xdata = struct_sel
#         ydata = cnf_sel
#         yerror = None
#     else:
#         bin_count = int(bin_input)
#         mean, bin_edges, _ = stats.binned_statistic(struct_sel, cnf_sel, bins=bin_count)
#         std, _, _ = stats.binned_statistic(struct_sel, cnf_sel, statistic="std", bins=bin_count)
#         bin_centers = [(l + r) / 2 for l, r in zip(bin_edges, bin_edges[1:])]

#         xdata = bin_centers
#         ydata = mean
#         yerror = std

#     fig = plt.figure()
#     ax = fig.add_subplot(1,1,1)

#     ax.errorbar(xdata, ydata, yerr=yerror, fmt=".")

#     struct_name = struct.dtype.names[struct_sel_index]
#     ax.set_xlabel(struct_name)
#     cnf_name = cnf.dtype.names[cnf_sel_index]
#     ax.set_ylabel(cnf_name)
#     ax.set_title("%s vs %s" % (cnf_name, struct_name))

#     if args.show:
#         plt.show()
#     else:
#         date_name = datetime.now().strftime("%m_%d_%Y_%H%M%S")
#         fig_name = input("Enter save name of figure (or leave blank for generic name): ")
#         if len(fig_name) > 0:
#             fig_name = fig_name + "_"

#         fig.savefig("figures/%s%s" % (fig_name, date_name), bbox_inches="tight")
