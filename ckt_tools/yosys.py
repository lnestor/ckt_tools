import argparse
import subprocess

LINE1_TEMPLATE = "read_verilog "
LINE2 = "techmap; opt"
LINE3_TEMPLATE = "abc -liberty "
LINE4 = "clean"
LINE5_TEMPLATE = "write_verilog -noattr "

DEFAULT_LIBERTY = "ckt_tools/techmaps/complete_2.lib"

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Change standard libraries and optimize a circuit using Yosys")
    parser.add_argument("input", help="The input verilog file")
    parser.add_argument("--liberty", help="The liberty file")
    parser.add_argument("output", help="The output verilog file")

    args = parser.parse_args()

    liberty = args.liberty if args.liberty else DEFAULT_LIBERTY

    line1 = LINE1_TEMPLATE + args.input
    line3 = LINE3_TEMPLATE + liberty
    line5 = LINE5_TEMPLATE + args.output

    commands = "\n".join([line1, LINE2, line3, LINE4, line5])
    subprocess.run(["yosys"], input=commands, text=True)
