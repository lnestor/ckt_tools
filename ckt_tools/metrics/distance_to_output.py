def calc_dist_to_output(ckt_graph):
    dists = {}

    for output in ckt_graph.outputs:
        output_dist = dict.fromkeys(ckt_graph.nodes, float("Inf"))
        calc_int(output, ckt_graph, 0, output_dist)
        dists[output] = output_dist

    return dists

def calc_int(node_name, ckt_graph, new_dist, dists):
    if new_dist < dists[node_name]:
        dists[node_name] = new_dist

        for child in ckt_graph.nodes[node_name].inputs:
            calc_int(child, ckt_graph, new_dist + 1, dists)
