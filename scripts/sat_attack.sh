#!/bin/bash
# This file runs a SAT attack on a directory of locked files. The oracles
# must be named the same as the locked files and be in their own directory.
#
# Usage: scripts/sat_attack.sh <locked dir> <oracle dir>

for FILE in $1/*.v; do
  echo $FILE
  echo "$2/$(basename $FILE)"
  python3 ../sat_attack/sat_attack/run.py $FILE $2/$(basename $FILE)
done
