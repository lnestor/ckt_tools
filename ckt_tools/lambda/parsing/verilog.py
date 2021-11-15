import os
import pyverilog.vparser.ast as vast
from pyverilog.vparser.parser import parse
import sys

# TODO: I suppose we need to move this out of locking now
#       to someplace more appropriate
sys.path.insert(1, os.path.join(sys.path[0], ".."))
from .gate import Gate
from locking.shared import *

def parse_verilog(filename):
    inputs = []
    outputs = []
    gates = {}

    ast, _ = parse([filename], debug=False)
    moddef = ast.children()[0].children()[0]

    for i in get_decl_names(moddef, vast.Input):
        inputs.append(i.name)

    for o in get_decl_names(moddef, vast.Output):
        outputs.append(o.name)

    for ilist in get_ilists(moddef):
        gate = Gate(ilist)
        gates[gate.output] = gate

    return inputs, outputs, gates
