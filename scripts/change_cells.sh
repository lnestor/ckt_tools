#!/bin/bash
# This file changes the standard cell library for all verilog files in a directory

liberty=""

if [ ! -z $3 ]
then
  liberty="--liberty $3"
fi

for FILE in $1/*.v; do
  filename="$(basename $FILE .v)__lib_$(basename $3 .lib).v"
  python ckt_tools/yosys.py $FILE $2/$filename $liberty
done
