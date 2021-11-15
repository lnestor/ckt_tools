import subprocess

def get_test_patterns(filenames, node):
    create_fault_file(filenames.fault, node)
    run_atalanta(filenames)
    test_patterns = parse_test_file(filenames.output, node)
    return test_patterns

def create_fault_file(fname, node):
    with open(fname, "w") as f:
        f.write("%s /0\n" % node)
        f.write("%s /1\n" % node)

def run_atalanta(filenames):
    rslt = subprocess.run(["bin/atalanta", "-A", filenames.bench, "-f", filenames.fault], capture_output=True, text=True)

    # TODO: parse stderr for error
    with open(filenames.log, "w") as f:
        f.write("%s\n" % rslt.stdout)
        f.write("----\n")
        f.write(rslt.stderr)

def parse_pattern(line):
    pattern = line.split(":")[1]
    pattern = pattern.split()[0]
    return pattern

def parse_test_file(fname, node):
    with open(fname) as f:
        lines = f.readlines()
    start = [i for i, line in enumerate(lines) if line.startswith(node)][0]

    patterns = []
    for line in [l for l in lines[start:] if not l.startswith(node)]:
        test_pattern = parse_pattern(line)
        patterns.append(test_pattern)

    return patterns
