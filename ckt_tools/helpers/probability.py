from itertools import combinations
import numpy as np

def calc_or_prob(values):
    prob = 0

    for v in values:
        prob = prob + v - prob * v

    return prob

# def calc_or_prob(values):
#     parity = 1
#     prob = 0

#     for i in range(len(values)):
#         combos = list(combinations(values, i + 1))
#         inner_prob = [np.prod(combo) for combo in combos]
#         prob += parity * sum(inner_prob)
#         parity *= -1

#     return prob
