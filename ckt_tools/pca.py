import numpy as np
from sklearn.decomposition import PCA

metrics = np.genfromtxt("metrics.csv", delimiter=",")
metrics = metrics[1:]

cnf = np.genfromtxt("cnf.csv", delimiter=",")
cnf = cnf[1:]
cnf = [row[1:] for row in cnf]

# cnf_to_fit = 0

# first_row = metrics[0]
# first_row = np.append(first_row, cnf[0][cnf_to_fit])
# to_fit = np.array(first_row)

# for i in range(1, len(metrics)):
#     row = metrics[i]
#     row = np.append(row, cnf[i][cnf_to_fit])
#     to_fit = np.vstack((to_fit, row))

# pca = PCA(n_components=3)
# pca.fit(to_fit)
# fitted = pca.transform(to_fit)

pca = PCA(n_components=5)
pca.fit(metrics)
fitted = pca.transform(metrics)

components = pca.components_[0]
l1 = [float(c) for c in components]

# np.savetxt("fitted.csv", fitted, delimiter=",")

import pdb; pdb.set_trace()
