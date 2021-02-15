import argparse
from pyverilog.vparser.parser import parse
from statistics import stdev as std
import z3

from ast_parser import parse_ast
from z3_builder import Z3Builder

def get_filename():
    parser = argparse.ArgumentParser(description="Convert a verilog circuit into a CNF formula andm easure metrics on that formula")
    parser.add_argument("verilog", help="The Verilog file")

    args = parser.parse_args()

    return args.verilog

def measure_depth(ckt_graph, node_name, depth):
    node = ckt_graph.nodes[node_name]

    if len(node.inputs) == 0:
        return depth
    else:
        depths = [measure_depth(ckt_graph, i, depth) for i in node.inputs]
        return max(depths) + (1 if node.type != "assign" else 0)

def measure_depth_2(ckt_graph, node_name, depth):
    node = ckt_graph.nodes[node_name]

    if len(node.inputs) == 0:
        node.depth = 0
        return node.depth
    else:
        depths = [measure_depth(ckt_graph, i, depth) for i in node.inputs]
        node.depth = max(depths) + (1 if node.type != "assign" else 0)
        return node.depth

def measure_depths(ckt_graph):
    depths = [measure_depth(ckt_graph, o, 0) for o in ckt_graph.outputs]
    return depths

def measure_fanin(ckt_graph):
    num_nodes = 0
    total = 0
    for name, node in ckt_graph.nodes.items():
        if node.type != "assign" and len(node.inputs) > 1:
            total += len(node.inputs)
            num_nodes += 1

    return total / num_nodes

def measure_fanout(ckt_graph):
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
    print(ckt_graph.outputs)
    print("Number of inputs: %i" % (len(ckt_graph.inputs)))
    print("Number of outputs: %i" % (len(ckt_graph.outputs)))

    fanin = measure_fanin(ckt_graph)
    print("Average fanin: %.2f" % (fanin))

    fanout = measure_fanout(ckt_graph)
    print("Average fanout: %.2f" % (fanout))
    # depths = measure_depths(ckt_graph)
    # print("Depth Dist: %.1f +/- %.1f, Max: %i" % (sum(depths) / len(depths), std(depths), max(depths)))
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

    # print("Building circuit")
    # builder = Z3Builder()
    # z3_ckt, inputs = builder.build(ckt_graph)
    # print("Building circuit complete")

    measure_metrics(ckt_graph)
