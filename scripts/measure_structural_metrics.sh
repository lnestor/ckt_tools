#!/bin/bash
# This file measures CNF metrics on all verilog files in a directory

header="--csv_header"

for FILE in $1/*.v; do
  # cat $FILE | sed "s/module .*(/module $(basename $FILE .v)(/" | xargs -0 python ckt_tools/ckt_metrics.py --csv $header $2
  cat $FILE | sed "s/module .*(/module $(basename $FILE .v)(/" > measure_struct_temp.v
  python ckt_tools/ckt_metrics.py measure_struct_temp.v --csv $header $2
  rm measure_struct_temp.v

  header=""
done
