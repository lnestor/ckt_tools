import os

class Logger:
    def __init__(self, filename):
        basename = os.path.basename(filename)
        self.filename = os.path.splitext(basename)[0]

    def log(self, text, end="\n"):
        print("(%s) %s" % (self.filename, text), end=end)

    def log_raw(self, text, end="\n"):
        print(text, end="\n")

    def newline(self):
        print()

