from node_type import NodeType

def find_depth(ckt_graph):
    """Finds the depth for a given circuit.

    The depth is the longest path that exists in the circuit.

    Args:
        ckt_graph: the graph of the circuit

    Returns:
        int: the depth of the circuit

    """
    longest_path = dict.fromkeys(ckt_graph.nodes, 0)
    visited = dict.fromkeys(ckt_graph.nodes, False)
    nodes_in_subtree = {key: set() for key in ckt_graph.nodes}

    for output in ckt_graph.outputs:
        dfs(ckt_graph, output, visited, longest_path, nodes_in_subtree)

    max_key = max(longest_path, key=longest_path.get)
    tree_sizes = {key: len(nodes_in_subtree[key]) for key in ckt_graph.outputs}

    # Still need to return tree sizes
    return (max_key, longest_path[max_key])

def dfs(ckt_graph, node_name, visited, longest_path, nodes_in_subtree):
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
    nodes_in_subtree[node_name].add(node_name)

    for input in ckt_graph.nodes[node_name].inputs:
        if not visited[input]:
            dfs(ckt_graph, input, visited, longest_path, nodes_in_subtree)

        longest_path[node_name] = max(longest_path[node_name], 1 + longest_path[input])

        if len(ckt_graph.nodes[input].inputs) != 0:

            nodes_in_subtree[node_name] = nodes_in_subtree[node_name] | nodes_in_subtree[input]

