#!/bin/bash
# This file locks all Verilog files in a directory with Anti-SAT

for FILE in $1/*.v; do
  python ckt_tools/antisat.py $FILE --output $2/$(basename $FILE)
done
