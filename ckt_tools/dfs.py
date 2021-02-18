def find_depth(ckt_graph):
    """Finds the depth for a given circuit.

    The depth is the longest path that exists in the circuit.

    Args:
        ckt_graph: the graph of the circuit

    Returns:
        int: the depth of the circuit

    """
    # longest_path = [0] * (len(ckt_graph.nodes) + 1)
    # visited = [False] * (len(ckt_graph.nodes) + 1)
    longest_path = dict.fromkeys(ckt_graph.nodes, 0)
    visited = dict.fromkeys(ckt_graph.nodes, False)

    for node_name in ckt_graph.nodes:
        if not visited[node_name]:
            dfs(ckt_graph, node_name, visited, longest_path)

    max_key = max(longest_path, key=longest_path.get)

    return (max_key, longest_path[max_key])

def dfs(ckt_graph, node_name, visited, longest_path):
    """Performs a DFS and measures several statistics on its way.

    Statistics measured during the search:
        - depth: the longest path from node to an input

    Args:
        ckt_graph: the graph of the circuit
        node_name: the name of the node to perform a DFS at
        visited: a dictionary to keep track of which nodes has been visited
            in the form of {node_name: True/False}
        longest_path: a dictionary with the longest path from nodes to an
            input in the form of {node_name: depth}

    """
    visited[node_name] = True

    for input in ckt_graph.nodes[node_name].inputs:
        if not visited[input]:
            dfs(ckt_graph, input, visited, longest_path)

        longest_path[node_name] = max(longest_path[node_name], 1 + longest_path[input])

