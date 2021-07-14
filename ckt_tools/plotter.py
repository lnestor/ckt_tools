import argparse
import numpy as np
import os
import random
from sklearn.decomposition import PCA
from sklearn.preprocessing import StandardScaler

from plotting import *

# from datetime import datetime
# from scipy import stats

def get_filter_percentage_f(cnf, o_cnf, index, percentage):
    """ Returns an anonymous function to filter an iterable such that they all
        have a specified decrease in the size of their CNF formula.

    """
    return lambda x: cnf[x[0]][index] / o_cnf[x[0]][index] < percentage

def max_inf_times(sat, value):
    """ Sets all infinite SAT attack times to a specified value so they can be
        plotted.

    """
    return {k: sat[k][0] if sat[k][0] < value else value for k in sat}

def read_csv_with_labels(filename):
    labels = np.genfromtxt(filename, usecols=0, dtype=str, delimiter=",")
    labels[1:] = [os.path.basename(name) for name in labels[1:]]
    data = np.genfromtxt(filename, delimiter=",", names=True)
    return {label: list(row)[1:] for label, row in zip(labels[1:], data)}

def apply_pca_transform(data, scaler, pca):
    scaled_data = scaler.transform(list(data.values()))
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
        a_sats = [read_csv_with_labels("%s/metrics/sat.csv" % (s)) for s in args.append]

    f = get_filter_percentage_f(cnf, o_cnf, 0, 0.55)

    cnf = dict(filter(f, cnf.items()))
    o_cnf = dict(filter(f, o_cnf.items()))
    pc1 = dict(filter(f, pc1.items()))
    o_pc1 = dict(filter(f, o_pc1.items()))

    ### Plot below here ###
    obf_change.plot_obf_change(o_pc1, pc1, o_cnf, cnf, 0)
