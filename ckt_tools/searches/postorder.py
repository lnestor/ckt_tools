class Postorder:
    def __init__(self, graph, logger):
        self.graph = graph
        self.visited = dict.fromkeys(graph.nodes, False)
        self.logger = logger

    def traverse_outputs(self):
        for output in self.graph.outputs:
            self.traverse(output)

    def traverse(self, node_name):
        node = self.graph.nodes[node_name]
        self.visited[node_name] = True

        for i in node.inputs:
            if not self.visited[i] and self.logger.should_traverse(i):
                self.traverse(i)

        self.logger.call(node)

    def results(self):
        return self.logger.results()

    def raw_results(self):
        return self.logger.raw_results()
