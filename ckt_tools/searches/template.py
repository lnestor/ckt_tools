class Probability:
    def __init__(self, graph):
        self.graph = graph

    def call(self, node):
        raise NotImplemented

    def should_traverse(self, node_name):
        return NotImplemented

    def results(self):
        return NotImplemented
