import argparse
import numpy as np
import os
from statistics import stdev

def read_csv_with_labels(filename):
    labels = np.genfromtxt(filename, usecols=0, dtype=str, delimiter=",")
    labels[1:] = [os.path.basename(name) for name in labels[1:]]
    data = np.genfromtxt(filename, delimiter=",", names=True)
    return {label: list(row)[1:] for label, row in zip(labels[1:], data)}

def mean(l):
    return sum(l) / len(l)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Calculate mean/stdev of SAT attack trials")
    parser.add_argument("dir", help="The benchmark directory to calculate statistics on.")
    parser.add_argument("--csv", action="store_true", help="Store the statistics in a CSV file")

    args = parser.parse_args()

    path = os.path.join(args.dir, "metrics/trials")
    files = [os.path.join(path, f) for f in os.listdir(path) if os.path.isfile(os.path.join(path, f))]


    # This has potential for some SAT attacks to finish while others don't
    # To fix, just need to find intersection of keys for all trials
    sats = [read_csv_with_labels(f) for f in files]
    means = {label: mean([sat[label][0] for sat in sats]) for label in sats[0]}

    if len(sats) > 0:
        stdevs = {label: stdev([sat[label][0] for sat in sats]) for label in sats[0]}
    else:
        stdevs = {label: float("NaN") for label in sats[0]}

    if args.csv:
        csv_path = os.path.join(args.dir, "metrics/sat.csv")

        with open(csv_path, "w") as f:
            f.write("Name,Mean Time,Stdev Time,Iterations\n")
            for label in means:
                f.write("%s,%f,%f,%i\n" % (label, means[label], stdevs[label], sats[0][label][2]))
