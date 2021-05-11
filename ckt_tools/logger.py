class Logger:
    """Generic logging class with varying logging levels.

    This class has different modes that handle if something should be printed
    to the screen. The following modes are:

    Detailed Mode: prints human readable messages, otherwise prints csv
    Debug Mode: prints useful messaging for debugging.

    """
    def __init__(self, detailed, debug):
        self.detailed = detailed
        self.debug = debug

    def log_detailed(self, text):
        if self.detailed:
            print(text)

    def log_debug(self, text):
        if self.debug:
            print(text)

    def log_terse(self, text):
        if not self.detailed:
            print(text)
