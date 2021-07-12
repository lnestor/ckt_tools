import argparse
import multiprocessing as mp
import os
import queue
import re
import sys
import time

import sat_attack

class ProcessArgs:
    def __init__(self, args, f, index, total):
        self.locked_file = os.path.join(args.locked_dir, f)
        self.oracle_file = os.path.join(args.oracle_dir, f)
        self.csv_file = os.path.join(args.locked_dir, "metrics/sat.csv") if args.csv else None
        self.i = index
        self.timeout = args.timeout
        self.total = total

class SATProcess:
    def __init__(self, args):
        self.process = mp.Process(target=run, args=(args.locked_file, args.oracle_file, args.csv_file,))
        self.args = args
        self.basename = os.path.splitext(os.path.basename(self.args.locked_file))[0]

    def start(self):
        index = self.args.i
        total = self.args.total
        percent = 100 * float(index) / total

        print("(%s) Running SAT attack %i/%i (%.0f%%) " % (self.basename, index + 1, total, percent), end="")
        progress_bar(index + 1, total)

        self.start_time = time.time()
        self.process.start()

    def kill(self):
        print("(%s) TERMINATED" % (self.basename))
        self.process.kill()

    def join(self):
        self.process.join()

    def timed_out(self):
        return time.time() - self.start_time > self.args.timeout

    def is_alive(self):
        return self.process.is_alive()

def progress_bar(current, total, bar_length=30):
    percent = float(current) * 100 / total
    hashes = "#" * int(percent/100 * bar_length)
    spaces = "." * (bar_length - len(hashes))

    print("[%s%s]" % (hashes, spaces))

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
    parser.add_argument("-p", "--processes", type=int, default=2, help="The number of processes to run SAT attacks on. Note that each SAT attack actually requires two processes, so double this number to find the actual number of processes.")

    args = parser.parse_args()

    files = [f for f in os.listdir(args.locked_dir) if f.endswith(".v")]
    files.sort(key=lambda x: int(re.search("\d+", x).group()))

    p_args = [ProcessArgs(args, f, i, len(files)) for i, f in enumerate(files)]
    p_args = p_args[0:12]

    processes = queue.Queue()
    for i in range(args.processes):
        processes.put(SATProcess(p_args[i]))
    i_next = args.processes

    for i in range(args.processes):
        p = processes.get()
        p.start()
        processes.put(p)

    while not processes.empty():
        p = processes.get()

        if p.timed_out():
            p.kill()
            p.join()

        if p.is_alive():
            processes.put(p)
        else:
            p.join()

            if i_next < len(p_args):
                p = SATProcess(p_args[i_next])
                processes.put(p)
                p.start()

                i_next += 1
