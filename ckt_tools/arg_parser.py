import argparse

def get_filename():
    parser = argparse.ArgumentParser(description="Convert a verilog circuit into a CNF formula andm easure metrics on that formula")
    parser.add_argument("verilog", help="The Verilog file")

    args = parser.parse_args()

    return args.verilog
