import argparse
import numpy as np
import os
import random
from sklearn.decomposition import PCA
from sklearn.preprocessing import StandardScaler

from plotting import *

def key_missing_warning(original, new):
    _, original_only, new_only = key_venn(original, new)

    if len(new_only) > 0:
        print("WARNING: Missing from original:")
        for k in new_only:
            print(k)

    if len(original_only) > 0:
        print("WARNING: Missing from new:")
        for k in original_only:
            print(k)


def percent_decrease(original, new):
    shared, _, _ = key_venn(original, new)
    key_missing_warning(original, new)
    decrease = {k: (original[k] - new[k]) / original[k] for k in shared}
    return decrease

def abs_decrease(original, new):
    shared, _, _ = key_venn(original, new)
    # key_missing_warning(original, new)
    decrease = {k: original[k] - new[k] for k in shared}
    return decrease

def key_venn(dict1, dict2):
    dict1_only = list(set(dict1) - set(dict2))
    dict2_only = list(set(dict2) - set(dict1))
    shared = set(dict1).intersection(set(dict2))

    return shared, dict1_only, dict2_only

def key_diff(dict1, dict2):
    missing_from_dict1 = list(set(dict2) - set(dict1))
    missing_from_dict2 = list(set(dict1) - set(dict2))

    return missing_from_dict1, missing_from_dict2

def max_missing_times(sat, other, value):
    return {k: sat[k][0] if k in sat else value for k in other}

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
        sat_all = read_csv_with_labels(sat_filename)
        sat = {k: v[0] for k, v in sat_all.items()}

    # Note: This assumes that all appended directories have struct and CNF metrics
    if args.append is not None:
        a_structs = [read_csv_with_labels("%s/metrics/struct.csv" % (s)) for s in args.append]
        a_pcs = [apply_pca_transform(s, scaler, pca) for s in a_structs]
        a_pc1s = [{k: v[0] for k, v in pc.items()} for pc in a_pcs]
        a_cnfs = [read_csv_with_labels("%s/metrics/cnf.csv" % (s)) for s in args.append]
        a_sats_all = [read_csv_with_labels("%s/metrics/sat.csv" % (s)) for s in args.append]
        a_sats = [{k: v[0] for k, v in s.items()} for s in a_sats_all]

    ### Processing below here ###
    sat_decrease = percent_decrease(sat, a_sats[0])
    pc1_decrease = abs_decrease(pc1, a_pc1s[0])

    points = sorted(sat_decrease.items(), key=lambda x: x[1])
    labels = [p[0] for p in points]

    # increase = ["Stat_4000_402.v"]
    increase = []
    increase.extend(labels[0:9])
    import pdb; pdb.set_trace()

    original_cnf = [sat_all[l] for l in increase]
    rerun_cnf = [a_sats_all[0][l] for l in increase]
    to_print = list(zip(original_cnf, rerun_cnf))
    for pair in to_print:
        print(",".join(map(str, pair[0])))
        print(",".join(map(str, pair[1])))

    # import pdb; pdb.set_trace()


    ### Plot below here ###
    # categorical.scatter_with_labels(sat_decrease, to_plot="all")
    # sat_attack_times.plot_decrease(sat_decrease, pc1_decrease)
