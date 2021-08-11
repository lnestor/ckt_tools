import numpy as np

def remove_cols(array, key=lambda x: False):
    to_remove = []
    start_row = 1
    start_col = 1

    for i in range(len(array[0][start_col:])):
        col = array[start_row:, i + start_col]
        should_remove = key(col)

        if should_remove:
            to_remove.append(i + 1)

    removed = []
    for col in reversed(to_remove):
        removed.append(array[0,col])
        array = np.delete(array, col, 1)

    return array, removed
