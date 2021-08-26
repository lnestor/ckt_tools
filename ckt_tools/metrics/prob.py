from collections import defaultdict
import os
import sys

sys.path.insert(1, os.path.join(sys.path[0], '..'))

from helpers.probability import calc_or_prob

def keys_per_output(diffs):
    key_count = dict.fromkeys(diffs[list(diffs.keys())[0]].keys(), 0)

    for key in diffs:
        for output in diffs[key]:
            # if diffs[key][output] is not None:
            if diffs[key][output] != 0:
                key_count[output] += 1

    return key_count

def outputs_per_key(diffs):
    return {key: len([diffs[key][o] for o in diffs[key] if diffs[key][o] != 0]) for key in diffs}

def max_per_key(diffs):
    return {key: max(diffs[key].values()) for key in diffs}

def or_per_key(diffs):
    probs = {}

    for key in diffs:
        values = list(filter(lambda x: x != 0, diffs[key].values()))
        probs[key] = calc_or_prob(values)

    return probs
    return {key: calc_or_prob(diffs[key].values()) for key in diffs}
