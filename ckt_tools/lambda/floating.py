def mark_not_floating_recursive(name, gates, is_floating):
    is_floating[name] = False

    for i in gates[name].inputs:
        if i in gates and is_floating[i]:
            mark_not_floating_recursive(i, gates, is_floating)

def find_floating(outputs, gates):
    is_floating = {gate_name: True for gate_name in gates}

    for output in outputs:
        mark_not_floating_recursive(output, gates, is_floating)

    floating = [name for name in is_floating if is_floating[name]]
    return floating

