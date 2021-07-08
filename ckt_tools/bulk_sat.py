import argparse
import re
import os

import time

import sat_attack

def progress_bar(current, total, bar_length=30):
    percent = float(current) * 100 / total
    hashes = "#" * int(percent/100 * bar_length)
    spaces = "." * (bar_length - len(hashes))

    print("[%s%s]\n" % (hashes, spaces))


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Run SAT attacks against all benchmarks in a directory")
    parser.add_argument("locked_dir", help="The directory with the locked benchmarks.")
    parser.add_argument("oracle_dir", help="The directory with the oracle benchmarks.")

    args = parser.parse_args()

    files = [f for f in os.listdir(args.locked_dir) if f.endswith(".v")]
    files.sort(key=lambda x: int(re.search("\d+", x).group()))

    for i, f in enumerate(files):
        locked_file = os.path.join(args.locked_dir, f)
        oracle_file = os.path.join(args.oracle_dir, f)
        csv_file = os.path.join(args.locked_dir, "metrics/sat.csv")

        print("\nRunning SAT attack %i/%i (%.0f%%) " % (i + 1, len(files), i / len(files)), end="")
        progress_bar(i + 1, len(files))

        sat_attack.run(locked_file, oracle_file, csv_file=csv_file)



