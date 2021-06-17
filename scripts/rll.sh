#!/bin/bash
# This file locks all Verilog files in a directory with RLL

for FILE in $1/*.v; do
  cat $FILE | sed "s/module .*(/module $(basename $FILE .v)(/" > rll_temp.v
  python ckt_tools/rll.py rll_temp.v > $2/$(basename $FILE)
  rm rll_temp.v
done
