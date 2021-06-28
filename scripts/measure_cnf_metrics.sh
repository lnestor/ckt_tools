#!/bin/bash
# This file measures CNF metrics on all verilog files in a directory

header="--csv_header"

for FILE in $1/*.v; do
  python ckt_tools/ckt2cnf.py $FILE --csv $header

  header=""
done
