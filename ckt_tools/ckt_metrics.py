from pyverilog.vparser.parser import parse
from statistics import stdev as std
import z3

from arg_parser import get_filename
from ast_parser import parse_ast
from node_type import NodeType
from z3_builder import Z3Builder

def measure_fanin1(ckt_graph, node, depth):
    depth_1 = set(node.inputs)

    if depth == 1:
        return depth_1
    else:
        inputs = filter(lambda x: x.type != NodeType.INPUT, [ckt_graph.nodes[i] for i in node.inputs])
        fanins = set().union(*[measure_fanin1(ckt_graph, i, depth - 1) for i in inputs])

        return depth_1 | fanins

def measure_fanin2(ckt_graph, depth):
    non_inputs = filter(lambda x: x.type != NodeType.INPUT, ckt_graph.nodes.values())
    fanins = [len(measure_fanin1(ckt_graph, node, depth)) for node in non_inputs]

    return sum(fanins) / len(fanins)

def measure_fanin(ckt_graph):
    total = 0

    for name, node in ckt_graph.nodes.items():
        fanin = len(set(node.inputs))
        total += fanin

    return total / ckt_graph.size

def measure_fanout(ckt_graph):
    # Maybe change this to be calculated when parsing
    fanout = {}

    for name, node in ckt_graph.nodes.items():
        if node.type != "assign" and len(node.inputs) > 0:
            for input in node.inputs:
                if input in fanout:
                    fanout[input] += 1
                else:
                    fanout[input] = 1

    total = 0
    for name, num in fanout.items():
        total += num

    return total / len(fanout)

def measure_metrics(ckt_graph):
    print("\nNumber of gates: %i" % (ckt_graph.size))
    print("Number of inputs: %i" % (len(ckt_graph.inputs)))
    print("Number of outputs: %i" % (len(ckt_graph.outputs)))

    t = measure_fanin2(ckt_graph, 2)
    print("Average fanin test: %.2f" % (t))
    fanin = measure_fanin(ckt_graph)
    print("Average fanin: %.2f" % (fanin))

    fanout = measure_fanout(ckt_graph)
    print("Average fanout: %.2f" % (fanout))

    # Gate distribution
    # Average fanout - multiple levels
    # Average fanin
    # Depth - maybe make each node have a depth attribute on it
    #   then the children are given depth + 1. In the case that it
    #   already has a depth through a different path, choose
    #   the larger one

    # import pdb; pdb.set_trace()

if __name__ == "__main__":
    filename = get_filename()

    print("Parsing Verilog file")
    ast, directives = parse([filename])
    print("Parsing complete")

    print("Parsing AST")
    ckt_graph = parse_ast(ast)
    print("Parsing complete")

    measure_metrics(ckt_graph)
