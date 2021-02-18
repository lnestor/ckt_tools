from pyverilog.vparser.parser import parse
from statistics import stdev as std
import z3

from arg_parser import get_filename
from ast_parser import parse_ast
from dfs import find_depth
from node_type import NodeType
from z3_builder import Z3Builder

def measure_fanin_single_gate(ckt_graph, node, depth):
    if depth == 1:
        return set(node.inputs)
    else:
        children = [ckt_graph.nodes[i] for i in node.inputs]
        input_children = filter(lambda x: x.type == NodeType.INPUT, children)
        non_input_children = filter(lambda x: x.type != NodeType.INPUT, children)

        child_fanins = [measure_fanin_single_gate(ckt_graph, c, depth - 1) for c in children]
        total_fanin = set().union(*child_fanins, [i.output for i in input_children])

        return total_fanin

def measure_fanin(ckt_graph, depth):
    non_inputs = filter(lambda x: x.type != NodeType.INPUT, ckt_graph.nodes.values())
    fanins = [len(measure_fanin_single_gate(ckt_graph, node, depth)) for node in non_inputs]

    return sum(fanins) / len(fanins)

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

    fanin = measure_fanin(ckt_graph, 1)
    print("Average fanin: %.2f" % (fanin))

    fanout = measure_fanout(ckt_graph)
    print("Average fanout: %.2f" % (fanout))

    longest_output, depth = find_depth(ckt_graph)
    print("Depth: %i (%s)" % (depth, longest_output))

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
