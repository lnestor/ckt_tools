import os
import pyverilog.vparser.ast as vast
from pyverilog.vparser.parser import parse
import sys

# TODO: I suppose we need to move this out of locking now
#       to someplace more appropriate
sys.path.insert(1, os.path.join(sys.path[0], ".."))
from locking.shared import *

class Gate:
    def __init__(self, *args):
        if len(args) == 3:
            self.output = args[0]
            self.type = args[1]
            self.inputs = args[2]
        elif isinstance(args[0], vast.InstanceList):
            ilist = args[0]
            self.output = get_ilist_name(ilist)
            self.type = ilist.module
            self.inputs = get_ilist_inputs(ilist)
        elif isinstance(args[0], str):
            line = args[0]
            self.output = line.split("=")[0].strip()
            self.type = line.split("=")[1].split("(")[0].strip()
            self.inputs = [l.strip() for l in line[line.find("(") + 1:line.find(")")].split(",")]
        else:
            print("Unknown argsument of type %s in Gate" % args.__class__)
            exit(-1)

    def __str__(self):
        return "%s = %s(%s)" % (self.output, self.type, ", ".join(self.inputs))

    def __repr__(self):
        return "%s = %s(%s)" % (self.output, self.type, ", ".join(self.inputs))
