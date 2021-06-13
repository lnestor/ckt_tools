#!/bin/bash
# This file measures CNF metrics on all verilog files in a directory

header="--csv_header"

for FILE in $1/*.v; do
  cat $FILE | sed "s/module .*(/module $(basename $FILE .v)(/" > measure_cnf_temp.v
  python ckt_tools/ckt2cnf.py measure_cnf_temp.v --csv $header
  rm measure_cnf_temp.v

  header=""
done
