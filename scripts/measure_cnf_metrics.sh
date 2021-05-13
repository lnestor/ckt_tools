#!/bin/bash
# This file measures CNF metrics on all verilog files in a directory

header="--csv_header"

for FILE in $1/*.v; do
  cat $FILE | sed "s/module .*(/module $(basename $FILE .v)(/" | xargs -0 python ckt_tools/ckt2cnf.py --csv $header
  header=""
done
