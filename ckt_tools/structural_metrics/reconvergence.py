import sys
import os
# God python is the worst
sys.path.insert(1, os.path.join(sys.path[0], '..'))

from node_type import NodeType

RECON_THRESHOLD = 0.9

def measure_reconvergence(ckt_graph):
    non_inputs = filter(lambda x: x.type != NodeType.INPUT, ckt_graph.nodes.values())
    node_fanins = {}
    # node_recon = [measure_single_node_fanins(ckt_graph, n) for n in non_inputs]
    recon = {}
    for o in ckt_graph.outputs:
        _meas_recon_single_node(ckt_graph, ckt_graph.nodes[o], recon, node_fanins)

    return sum(v > RECON_THRESHOLD for v in recon.values()) / len(recon)

def _meas_recon_single_node(ckt_graph, node, recon, node_fanins):
    children = [ckt_graph.nodes[i] for i in node.inputs]

    if node.output in node_fanins:
        return node_fanins[node.output]

    if len(children) == 0:
        return set()

    input_fanins = [_meas_recon_single_node(ckt_graph, c, recon, node_fanins) for c in children]
    total_fanin = set().union(*input_fanins)

    intersection = input_fanins[0].intersection(*input_fanins[1:])

    if len(total_fanin) == 0:
        recon[node.output] = 0.0
    else:
        recon[node.output] = len(intersection) / len(total_fanin)

    to_return = total_fanin.copy()
    to_return.add(node.output)
    node_fanins[node.output] = to_return
    return to_return
