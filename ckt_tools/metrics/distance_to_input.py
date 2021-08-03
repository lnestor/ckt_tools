import copy

def calc_dist_to_input(ckt_graph):
    rev = reverse_graph(ckt_graph)
    dists = {}

    for i in ckt_graph.inputs:
        input_dist = dict.fromkeys(ckt_graph.nodes, float("Inf"))
        calc_int(i, rev, 0, input_dist)
        dists[i] = input_dist

    return dists

def calc_int(node_name, r, new_dist, dists):
    if new_dist < dists[node_name]:
        dists[node_name] = new_dist

        for child in r[node_name]:
            calc_int(child, r, new_dist + 1, dists)

def reverse_graph(ckt_graph):
    # Note: This doesn't completely reverse the graph. It basically gives you
    #       which nodes have this node as an input
    #
    #       A little more work is needed to get a completely reversed graph
    r = {key: [] for key in ckt_graph.nodes}

    for node_name in ckt_graph.nodes:
        for child in ckt_graph.nodes[node_name].inputs:
            r[child].append(ckt_graph.nodes[node_name].output)

    return r
