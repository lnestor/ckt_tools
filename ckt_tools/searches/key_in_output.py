class KeyInOutput:
    def __init__(self, graph):
        self.graph = graph
        self.subckt_keys = {name: set() for name in graph.nodes}

    def call(self, node):
        self.subckt_keys[node.output] = set().union(*[self.subckt_keys[i] for i in node.inputs])

        if node.type == "input"  and "key" in node.output:
            self.subckt_keys[node.output].add(node.output)

    def should_traverse(self, node_name):
        return True

    def results(self):
        keys = {k: [] for k in self.graph.key_inputs()}

        for output in self.graph.outputs:
            for k in self.subckt_keys[output]:
                keys[k].append(output)

        return keys
