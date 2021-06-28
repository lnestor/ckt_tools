#!/bin/bash
# This file locks all Verilog files in a directory with RLL

for FILE in $1/*.v; do
  python ckt_tools/rll.py $file > $2/$(basename $FILE)
done
