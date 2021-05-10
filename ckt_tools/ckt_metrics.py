import copy
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

def measure_metrics(ckt_graph):
    # print("\nNumber of gates: %i" % (ckt_graph.size))
    # print("Number of inputs: %i" % (len(ckt_graph.inputs)))
    # print("Number of outputs: %i" % (len(ckt_graph.outputs)))

    fanin_1 = measure_fanin(ckt_graph, 1)
    fanin_2 = measure_fanin(ckt_graph, 2)
    fanin_3 = measure_fanin(ckt_graph, 3)
    # print("\nAverage fanin (1): %.2f" % (fanin_1))
    # print("\nAverage fanin (2): %.2f" % (fanin_2))
    # print("\nAverage fanin (3): %.2f" % (fanin_3))

    fanout_nodes_1 = measure_fanout(ckt_graph, 1, {key: set() for key in ckt_graph.non_inputs()})
    fanout_count_1 = [len(v) for v in fanout_nodes_1.values()]
    fanout_1 = sum(fanout_count_1) / len(fanout_count_1)
    # print("Average fanout (1): %.2f" % (fanout_1))

    fanout_nodes_2 = measure_fanout(ckt_graph, 2, {key: set() for key in ckt_graph.non_inputs()})
    fanout_count_2 = [len(v) for v in fanout_nodes_2.values()]
    fanout_2 = sum(fanout_count_2) / len(fanout_count_2)
    # print("Average fanout (2): %.2f" % (fanout_2))

    fanout_nodes_3 = measure_fanout(ckt_graph, 3, {key: set() for key in ckt_graph.non_inputs()})
    fanout_count_3 = [len(v) for v in fanout_nodes_3.values()]
    fanout_3 = sum(fanout_count_3) / len(fanout_count_3)
    # print("Average fanout (3): %.2f" % (fanout_3))

    longest_output, depth, output_tree_sizes = find_depth(ckt_graph)
    # print("\nDepth: %i (%s)" % (depth, longest_output))

    input_prop = measure_input_propagation(fanout_nodes_1, ckt_graph)
    avg_input_prop = sum(input_prop) / len(input_prop)
    # print("\nAverage number of nodes affected by input: %.2f" % (sum(input_prop) / len(input_prop)))
    # print("Max number of nodes affected by input: %i" % (max(input_prop)))

    # print("Average size of output sub-tree: %.2f" % (sum(output_tree_sizes.values()) / len(output_tree_sizes)))
    max_output = max(output_tree_sizes, key=output_tree_sizes.get)
    avg_output_size = sum(output_tree_sizes.values()) / len(output_tree_sizes)
    # print("Max size of output sub-tree: %i (%s)" % (max(output_tree_sizes.values()), max_output))


    # print("\nDistribution of types of gates:")
    types = measure_gate_types(ckt_graph)
    # for t in types:
    #     print(" - %s: %i" % (t, types[t]))

    wire_complexity = measure_wire_complexity(ckt_graph)
    # print("\nWire complexity: %i" % (wire_complexity))

    print("%i,%.2f,%.2f,%.2f,%.2f,%.2f,%.2f,%i,%.2f,%i,%.2f,%i,%i" % (ckt_graph.size, fanin_1, fanin_2, fanin_3, fanout_1, fanout_2, fanout_3, depth, avg_input_prop, max(input_prop), avg_output_size, max(output_tree_sizes.values()), wire_complexity))

if __name__ == "__main__":
    filename = get_filename()

    # print("Parsing Verilog file")
    ast, directives = parse([filename])
    print(ast.children()[0].children()[0].name[78:])
    # print("Parsing complete")

    # print("Parsing AST")
    ckt_graph = parse_ast(ast)
    # print("Parsing complete")

    measure_metrics(ckt_graph)
