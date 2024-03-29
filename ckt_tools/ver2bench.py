import argparse
import pyverilog.vparser.ast as vast
from pyverilog.vparser.parser import parse

from locking.shared import *

def print_header(moddef):
    rslt = ""
    rslt += "# %s\n" % moddef.name
    rslt += "#\n"
    return rslt

def print_inputs(inputs):
    rslt = "\n"
    for i in inputs:
        rslt += "INPUT(%s)\n" % i.name
    return rslt

def print_outputs(outputs):
    rslt = "\n"
    for o in outputs:
        rslt += "OUTPUT(%s)\n" % o.name
    return rslt

def print_gates(moddef):
    add_false_const = False
    add_true_const = False
    const_map = {"0": "FALSE_CONST", "1": "TRUE_CONST"}

    rslt = "\n"
    for ilist in get_ilists(moddef):
        module = ilist.module
        output = get_ilist_name(ilist)
        inputs = [const_map.get(i, i) for i in get_ilist_inputs(ilist)]

        rslt += "%s = %s(%s)\n" % (output, module, ", ".join(inputs))

        if "FALSE_CONST" in inputs:
            add_false_const = True
        if "TRUE_CONST" in inputs:
            add_true_const = True

    if add_false_const or add_true_const:
        rslt += add_consts(add_false_const, add_true_const)

    return rslt

def add_consts(add_false_const, add_true_const):
    rslt = ""
    rslt += "INPUT(TF_CONST)\n"
    rslt += "TF_CONST_NOT = not(TF_CONST)\n"

    if add_false_const:
        rslt += "FALSE_CONST = and(TF_CONST, TF_CONST_NOT)\n"
    if add_true_const:
        rslt += "TRUE_CONST = nand(TF_CONST, TF_CONST_NOT)\n"

    return rslt

def convert(verilog, output):
    ast, _ = parse([verilog], debug=False)
    moddef = ast.children()[0].children()[0]

    inputs = get_decl_names(moddef, vast.Input)
    outputs = get_decl_names(moddef, vast.Output)

    rslt = ""
    rslt += print_header(moddef)
    rslt += print_inputs(inputs)
    rslt += print_outputs(outputs)
    rslt += print_gates(moddef)

    if output is not None:
        with open(output, "w") as f:
            f.write(rslt)
    else:
        print(rslt)


def main():
    parser = argparse.ArgumentParser(description="Convert a verilog file to a .bench file")
    parser.add_argument("verilog", help="The verilog file")
    parser.add_argument("-o", "--output", help="The output .bench file. Otherwise it will print to the screen.")

    args = parser.parse_args()
    convert(args.verilog, args.output)

if __name__ == "__main__":
    main()
