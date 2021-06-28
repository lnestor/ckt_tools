#!/bin/bash
# This file renames the module for all Verilog files in a directory.
# This is necessary because the generation tool names the module with
# a file path, meaning it has slashes and colons in it. Usually I have
# just renamed the module with sed into a temporary file, but it gets
# annoying when I'm trying to run a tool a single time and have to use
# sed every time.

for FILE in $1/*.v; do
  cat $FILE | sed "s/module .*(/module $(basename $FILE .v)(/" > $2/$(basename $FILE)
done
