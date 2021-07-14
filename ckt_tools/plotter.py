import argparse
import numpy as np
import os
import random
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

    ### Plot below here ###
    # import pdb; pdb.set_trace()
    # obf_change.plot_obf_change(o_pc1, pc1, o_cnf, cnf, 0)
    # o_pc1 = dict(filter(lambda k: o_pc1[k[0]] > 5, o_pc1.items()))
    # import pdb; pdb.set_trace()
    # o_pc1 = dict(random.sample(list(o_pc1.items()), 16))

    inf_times = list(filter(lambda k: sat[k][0] > 8000, sat))
    for name in inf_times:
        sat[name][0] = 8000

    # sat_attack_times.plot_sat_times_3D(sat, o_pc1, o_pc2)
    # sat_attack_times.plot_2D(sat, o_pc1)
    sat_attack_times.plot_diff(sat, a_sats[0], pc1, a_pc1s[0])

    ###
    # Function to copy values from one dict to another
    # pc1 = {k: pc1[k] for k in o_pc1}
    # a_pc1s[0] = {k: a_pc1s[0][k] for k in o_pc1}
    # a_pc1s[1] = {k: a_pc1s[1][k] for k in o_pc1}

    # o_cnf = {k: o_cnf[k] for k in o_pc1}
    # cnf = {k: cnf[k] for k in o_pc1}
    # a_cnfs[0] = {k: a_cnfs[0][k] for k in o_pc1}
    # a_cnfs[1] = {k: a_cnfs[1][k] for k in o_pc1}
    # # import pdb; pdb.set_trace()
    # obf_change.plot_multi_obf_change([o_pc1, pc1, a_pc1s[0], a_pc1s[1]], [o_cnf, cnf, a_cnfs[0], a_cnfs[1]], 0, ["Original", "RLL16", "RLL32", "RLL64"])

    # import pdb; pdb.set_trace()
