import argparse
import multiprocessing as mp
import os
import re
import sys
import time

import sat_attack

def progress_bar(current, total, bar_length=30):
    percent = float(current) * 100 / total
    hashes = "#" * int(percent/100 * bar_length)
    spaces = "." * (bar_length - len(hashes))

    print("[%s%s]\n" % (hashes, spaces))

def filenames(args, f):
    locked_file = os.path.join(args.locked_dir, f)
    oracle_file = os.path.join(args.oracle_dir, f)
    csv_file = os.path.join(args.locked_dir, "metrics/sat.csv") if args.csv else None

    return locked_file, oracle_file, csv_file

def run(locked_file, oracle_file, csv_file):
    sat_attack.run(locked_file, oracle_file, csv_file=csv_file)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Run SAT attacks against all benchmarks in a directory")
    parser.add_argument("locked_dir", help="The directory with the locked benchmarks.")
    parser.add_argument("oracle_dir", help="The directory with the oracle benchmarks.")
    parser.add_argument("--csv", action="store_true", help="Logs metrics in metrics/sat.csv file when present.")
    parser.add_argument("-t", "--timeout", type=int, default=3600, help="Maximum time for a SAT attack to run.")

    args = parser.parse_args()

    files = [f for f in os.listdir(args.locked_dir) if f.endswith(".v")]
    files.sort(key=lambda x: int(re.search("\d+", x).group()))

    to_retry = []
    for i, f in enumerate(files):
        locked_file, oracle_file, csv_file = filenames(args, f)

        print("\nRunning SAT attack %i/%i (%.0f%%) " % (i + 1, len(files), i / len(files)), end="")
        progress_bar(i + 1, len(files))

        p = mp.Process(target=run, args=(locked_file, oracle_file, csv_file,))
        p.start()

        start = time.time()
        while p.is_alive():
            if time.time() - start > args.timeout:
                p.kill()
                to_retry.append(f)
                print("\nTERMINATED")
                break

        p.join()

    for i, f in enumerate(to_retry):
        locked_file, oracle_file, csv_file = filenames(args, f)

        print("\nRunning SAT attack %i/%i (%.0f%%) " % (i + 1, len(to_retry), 100 * float(i) / len(to_retry)), end="")
        progress_bar(i + 1, len(to_retry))

        p = mp.Process(target=run, args=(locked_file, oracle_file, csv_file,))
        p.start()
        p.join()
