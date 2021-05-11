import argparse
import copy
from pyverilog.vparser.parser import parse
from statistics import stdev as std
import z3

from ast_parser import parse_ast
from dfs import find_depth
from node_type import NodeType
from logger import Logger
from z3_builder import Z3Builder

HEADERS = [
    "Size",
    "Inputs",
    "Outputs",
    "Fanin-1",
    "Fanin-2",
    "Fanin-3",
    "Fanout-1",
    "Fanout-2",
    "Fanout-3",
    "Depth",
    "Input Size (Avg)",
    "Input Size (Max)",
    "Output Size (Avg)",
    "Output Size (Max)",
    "Wire Complexity"
]

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

def measure_fanout(ckt_graph, depth, prev_fanout_nodes):
    if depth == 0:
        return prev_fanout_nodes
    else:
        fanout = copy.deepcopy(prev_fanout_nodes)

        for name, node in ckt_graph.non_inputs().items():
            for input in node.inputs:
                if input in fanout:
                    # We aren't considering inputs as nodes here, so we have
                    # this check
                    fanout[input].add(name)

        for node_of_interest, current_fanouts in prev_fanout_nodes.items():
            for f in current_fanouts:
                fanout[node_of_interest] = prev_fanout_nodes[node_of_interest] | prev_fanout_nodes[f]

        return measure_fanout(ckt_graph, depth - 1, fanout)

def measure_input_propagation(fanout_nodes, ckt_graph):
    nodes_affected = []

    for input in ckt_graph.inputs:
        nodes_explored = set()
        nodes_to_explore = set()

        for name, node in ckt_graph.nodes.items():
            if input in node.inputs:
                nodes_to_explore.add(name)

        while len(nodes_to_explore) != 0:
            to_explore = nodes_to_explore.pop()

            for fanout in fanout_nodes[to_explore]:
                nodes_to_explore.add(fanout)

            nodes_explored.add(to_explore)

        nodes_affected.append(len(nodes_explored))

    return nodes_affected

def measure_gate_types(ckt_graph):
    types = dict()

    for name, node in ckt_graph.non_inputs().items():
        if node.type in types:
            types[node.type] += 1
        else:
            types[node.type] = 1

    return types

def measure_wire_complexity(ckt_graph):
    wire_count = 0

    for name, node in ckt_graph.nodes.items():
        # Do not need to consider non circuit inputs because
        # circuit inputs have no node inputs
        wire_count += len(node.inputs)

    # We are counting wires from circuit inputs to nodes, which should
    # not be considered
    return wire_count - len(ckt_graph.inputs)

def display_results(metrics, logger):
    logger.log_detailed("Number of gates: %i" % (metrics["size"]))
    logger.log_detailed("Number of inputs: %s" % (str(metrics["input_count"])))
    logger.log_detailed("Number of outputs: %s" % (str(metrics["output_count"])))

    logger.log_detailed("\nAverage fanin (1): %.2f" % (metrics["fanin_1"]))
    logger.log_detailed("Average fanin (2): %.2f" % (metrics["fanin_2"]))
    logger.log_detailed("Average fanin (3): %.2f" % (metrics["fanin_3"]))

    logger.log_detailed("\nAverage fanout (1): %.2f" % (metrics["fanout_1"]))
    logger.log_detailed("Average fanout (2): %.2f" % (metrics["fanout_2"]))
    logger.log_detailed("Average fanout (3): %.2f" % (metrics["fanout_3"]))

    logger.log_detailed("\nDepth: %s (%s)" % (str(metrics["depth"]), "LONGEST OUTPUT PLACEHOLDER"))

    logger.log_detailed("\nAverage number of nodes affected by input: %.2f" % (metrics["input_size_avg"]))
    logger.log_detailed("Max number of nodes affected by input: %s" % (str(metrics["input_size_max"])))

    logger.log_detailed("Average size of output sub-tree: %.2f" % (metrics["output_size_avg"]))
    logger.log_detailed("Max size of output sub-tree: %s (%s)" % (str(metrics["output_size_max"]), "OUTPUT SIZE NAME PLACEHOLDER"))

    # logger.log_detailed("\nDistribution of types of gates:")
    # types = measure_gate_types(ckt_graph)
    # for t in types:
    #     logger.log_detailed(" - %s: %i" % (t, types[t]))

    logger.log_detailed("\nWire complexity: %s" % (str(metrics["wire_complexity"])))

    logger.log_terse(",".join(str(x) for x in metrics.values()))
    # logger.log_terse("%i,%i,%i,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%i,%.2f,%i,%.2f,%i,%i" % (size, input_count, output_count, fanin_1, fanin_2, fanin_3, fanout_1, fanout_2, fanout_3, depth, input_size_avg, input_size_max, output_size_avg, output_size_max, wire_complexity))


def measure_metrics(ckt_graph, logger, normalized):
    size = ckt_graph.size
    input_count = len(ckt_graph.inputs)
    output_count = len(ckt_graph.outputs)

    fanin_1 = measure_fanin(ckt_graph, 1)
    fanin_2 = measure_fanin(ckt_graph, 2)
    fanin_3 = measure_fanin(ckt_graph, 3)

    fanout_nodes_1 = measure_fanout(ckt_graph, 1, {key: set() for key in ckt_graph.non_inputs()})
    fanout_count_1 = [len(v) for v in fanout_nodes_1.values()]
    fanout_1 = sum(fanout_count_1) / len(fanout_count_1)

    fanout_nodes_2 = measure_fanout(ckt_graph, 2, {key: set() for key in ckt_graph.non_inputs()})
    fanout_count_2 = [len(v) for v in fanout_nodes_2.values()]
    fanout_2 = sum(fanout_count_2) / len(fanout_count_2)

    fanout_nodes_3 = measure_fanout(ckt_graph, 3, {key: set() for key in ckt_graph.non_inputs()})
    fanout_count_3 = [len(v) for v in fanout_nodes_3.values()]
    fanout_3 = sum(fanout_count_3) / len(fanout_count_3)

    longest_output, depth, output_tree_sizes = find_depth(ckt_graph)

    input_size = measure_input_propagation(fanout_nodes_1, ckt_graph)
    input_size_avg = sum(input_size) / len(input_size)
    input_size_max = max(input_size)

    output_size_avg = sum(output_tree_sizes.values()) / len(output_tree_sizes)
    output_size_max = max(output_tree_sizes.values())
    output_size_max_name = max(output_tree_sizes, key=output_tree_sizes.get)

    wire_complexity = measure_wire_complexity(ckt_graph)

    metrics = {
        "size": size,
        "input_count": input_count,
        "output_count": output_count,
        "fanin_1": fanin_1,
        "fanin_2": fanin_2,
        "fanin_3": fanin_3,
        "fanout_1": fanout_1,
        "fanout_2": fanout_2,
        "fanout_3": fanout_3,
        "depth": depth,
        "input_size_avg": input_size_avg,
        "input_size_max": input_size_max,
        "output_size_avg": output_size_avg,
        "output_size_max": output_size_max,
        "wire_complexity": wire_complexity
    }

    normalized_metrics = {k: v/metrics["size"] for k, v in metrics.items()}
    normalized_metrics["size"] = size

    if normalized:
        display_results(normalized_metrics, logger)
    else:
        display_results(metrics, logger)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Measure structural metrics on a circuit.")
    parser.add_argument("verilog_file", help="The circuit's verilog file")
    parser.add_argument("--csv", action="store_true", help="Output the metrics in a CSV format")
    parser.add_argument("--csv_header", action="store_true", help="Output the metric names as a header of the CSV file")
    parser.add_argument("--debug", action="store_true", help="Output debug info")
    parser.add_argument("--normalized", action="store_true", help="Output normalized metrics with respect to the number of gates in the circuit")

    args = parser.parse_args()

    logger = Logger(not args.csv, args.debug)

    logger.log_detailed("Parsing Verilog file...")
    ast, directives = parse([args.verilog_file], debug=args.debug)
    logger.log_detailed("Parsing complete\n")

    logger.log_detailed("Parsing AST...")
    ckt_graph = parse_ast(ast)
    logger.log_detailed("Parsing complete\n")

    if args.csv_header:
        logger.log_terse(",".join(HEADERS))

    measure_metrics(ckt_graph, logger, args.normalized)
