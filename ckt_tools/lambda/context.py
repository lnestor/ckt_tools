import yaml

class Context:
    def __init__(self, args):
        self.circuit = args.circuit

        self._parse_ctx_file(args.context)

    def _parse_ctx_file(self, fname):
        with open(fname) as stream:
            try:
                data = yaml.safe_load(stream)
            except yaml.YAMLError as exc:
                print("Error parsing context file")
                print(exc)
                exit(-1)

        self.oracle = data["oracle"]
        self.node = data["node"]
        self.samples = data["number-samples"]
        self.key_block_output = data["key-block-output"]
        self.key_gate_output = data["key-gate-output"]
        self.original_signal_name = data["original-signal-name"]
