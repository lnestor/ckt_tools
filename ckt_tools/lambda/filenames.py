import os

def basename(fname):
    return os.path.splitext(os.path.basename(fname))[0]

class Filenames:
    """Add doc. These are the files needed to run ATPG. Other files
    shouldn't be added here."""
    def __init__(self, ctx):
        base_fname = basename(ctx.circuit)

        self.bench = "%s_tmp.bench" % base_fname
        self.fault = "%s_tmp.fault" % base_fname
        self.log = "%s_tmp.log" % base_fname
        self.output = "%s_tmp.test" % base_fname

    def __iter__(self):
        return iter([self.bench, self.fault, self.log, self.output])
