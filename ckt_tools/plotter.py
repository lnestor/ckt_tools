import argparse

from dir_metrics import DirectoryMetrics
from helpers.array import remove_cols
from helpers.dict import filter_by_list
from helpers.table import dict_to_table, print_in_sections, table_to_csv
from plotting import *

ORIGINAL_DIR = "benchmarks/generated/original"

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

def percent_diff(data1, data2, error1=None, error2=None):
    shared, _, _ = key_venn(data1, data2)
    # key_missing_warning(data1, data2)
    diff = {k: 2 * (data1[k] - data2[k]) / (data1[k] + data2[k]) for k in shared}

    diff = {}
    error = {}
    for k in shared:
        A = 2 * (data1[k] - data2[k])
        B = data1[k] + data2[k]
        diff[k] = A / B

        if error1 is not None:
            dA = 2 * (error1[k] + error2[k])
            dB = error1[k] + error2[k]
            error[k] = abs(diff[k]) * (dA / abs(A) + dB / abs(B))

    return diff, error

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

def max_missing_times(sat, other, value):
    return {k: sat[k][0] if k in sat else value for k in other}

def prob_diff(metrics, o_metrics, circuit):
    diffs = {}

    for ckt_input in metrics.probs[circuit]:
        probs = metrics.probs[circuit][ckt_input]

        input_diff = {}
        for output in o_metrics.probs[circuit]:
            if probs[output] is not None:
                input_diff[output] = probs[output] - o_metrics.probs[circuit][output]
            else:
                input_diff[output] = 0

        diffs[ckt_input] = input_diff

    return diffs

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Generic plotting tool. Modify this to create the specific plot you want.")
    parser.add_argument("directory", help="A directory for the verilog files you want to plot.")
    parser.add_argument("-a", "--append", action="append", help="Additional directories to consider")
    args = parser.parse_args()

    o_metrics = DirectoryMetrics(ORIGINAL_DIR)
    o_metrics.calc_pcs()
    metrics = DirectoryMetrics(args.directory)
    metrics.calc_pcs(scaler=o_metrics.scaler, pca=o_metrics.pca)

    if args.append is not None:
        a_metrics = [DirectoryMetrics(s) for s in args.append]

        for i in range(len(a_metrics)):
            a_metrics[i].calc_pcs(scaler=o_metrics.scaler, pca=o_metrics.pca)

    ckt = "Stat_1000_203.v"
    diffs = prob_diff(metrics, o_metrics, ckt)

    outputs = sorted(o_metrics.probs[ckt], key=lambda x: int(x[1:]))
    table = dict_to_table(diffs, outputs, first_col_label="Input")
    # table, deleted = remove_cols(table, key=lambda col: all(float(x) == 0 for x in col))

    # print_in_sections(table, 8)
    print(table_to_csv(table))

    # print("Matched for all keys: %s" % (", ".join(deleted)))
    print("Circuit: %s" % (ckt))
    # print("SAT attack time: %s" % (metrics.sat_mean[ckt]))
    # print("SAT iterations: %s" % (m.sat_iter[ckt]))



"""
    ### Processing below here ###
    diff, unc = percent_diff(metrics.sat_iter, a_metrics[0].sat_iter)
    # diff, unc = percent_diff(metrics.sat_mean, a_metrics[0].sat_mean, metrics.sat_unc, a_metrics[0].sat_unc)
    shared, first_only, rerun_only = key_venn(metrics.sat_mean, a_metrics[0].sat_mean)
    sorted_labels = list(sorted(diff, key=lambda x: diff[x]))

    num_to_analyze = 10

    decrease = first_only.copy()
    decrease.extend(sorted_labels[-num_to_analyze + len(decrease):][::-1])

    increase = rerun_only.copy()
    increase.extend(sorted_labels[0:num_to_analyze - len(increase)])

    def get_metrics(labels):
        # CNF
        m_cnf1 = filter_by_list(cnf, labels)
        m_cnf2 = filter_by_list(a_cnfs[0], labels)

        # SAT
        m_sat1 = filter_by_list(sat_all, labels[1:])
        m_sat1[labels[0]] = [float("NaN")] * len(m_sat1[labels[1]])
        m_sat2 = filter_by_list(a_sats_all[0], labels[1:])
        m_sat2[labels[0]] = [float("NaN")] * len(m_sat2[labels[1]])

        # PC1
        m_pc11 = filter_by_list(pc1, labels)
        m_pc12 = filter_by_list(a_pc1s[0], labels)

        # Miter circuit
        # Struct
        # How close are key gates to inputs/outputs?
        # How much to key gates interfere with each other?
        # What does fan-in and fan-out look like for each key gate?

    # import pdb; pdb.set_trace()
    # get_metrics(increase)
    # get_metrics(decrease)

    m = metrics
    # m = a_metrics[0]
    ckt = decrease[3]

    diffs = prob_diff(m, o_metrics, ckt)

    outputs = sorted(o_metrics.probs[ckt], key=lambda x: int(x[1:]))
    table = dict_to_table(diffs, outputs, first_col_label="Input")
    # table, deleted = remove_cols(table, key=lambda col: all(float(x) == 0 for x in col))

    # print_in_sections(table, 8)
    print(table_to_csv(table))

    # print("Matched for all keys: %s" % (", ".join(deleted)))
    print("Circuit: %s" % (ckt))
    print("SAT attack time: %s" % (m.sat_mean[ckt]))
    print("SAT iterations: %s" % (m.sat_iter[ckt]))

    ### Plot below here ###
"""
