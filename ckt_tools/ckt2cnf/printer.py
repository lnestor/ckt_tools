class Printer:
    def __init__(self, is_csv, add_header, debug):
        self.is_csv = is_csv
        self.add_header = add_header
        self.debug = debug

        if not self.is_csv and self.add_header:
            print("WARNING: requested CSV header without CSV output. Ignoring CSV header request.")

    def print_detailed(self, text):
        """Print text when in detailed mode (not CSV mode)."

        This function will immediately return if in CSV mode.

        """
        if self.is_csv:
            return

        print(text)

    def print_metrics(self, metrics):
        """Prints CNF metrics either as detailed view of CSV view

        Also prints the CSV header if requested.

        """
        if self.is_csv:
            if self.add_header:
                print("Avg Clauses,Max Clauses,Avg Vars,Max Vars")

            print("%.2f,%i,%.2f,%i" % metrics)

        else:
            print("Average number of clauses: %.2f" % (metrics[0]))
            print("Max number of clauses: %i" % (metrics[1]))

            print("Average number of variables: %.2f" % (metrics[2]))
            print("Max number of variables: %i" % (metrics[3]))

    def print_debug(self, text):
        """Print text debug text when in debug mode."

        This function will immediately return if not in debug mode.

        """
        if not self.debug:
            return

        print(text)


    def print_dist(self, dist):
        """Prints distribution of clauses/variables.

        This function will print the # clauses/vars for every output in
        a circuit if not in CSV mode.

        """
        raise NotImplemented

