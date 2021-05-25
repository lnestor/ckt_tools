import argparse
from datetime import datetime
import numpy as np
from sklearn.decomposition import PCA
from sklearn.preprocessing import StandardScaler

# temp
import matplotlib.pyplot as plt

def plot_components(x, i1, i2):
    plt.scatter(x[:,i1], x[:,i2])
    # plt.xlim(-6, 6)
    # plt.ylim(-6, 6)
    plt.show()

def plot_dep_vars(x, y, figures_dir):
    for yi in range(len(y[0])):
        for xi in range(len(x[0])):
            plt.scatter(x[:,xi], y[:,yi])
            plt.xlim(x.min(), x.max())
            plt.title("X Index: %i, Y Index: %i" % (xi, yi))

            date_name = datetime.now().strftime("%m%d%Y_%H%M%S")
            filename = "x%i_y%i_%s" % (xi, yi, date_name)
            path = "%s/%s" % (figures_dir, filename)
            plt.savefig(path, bbox_inches="tight")
            plt.clf()

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Run PCA on a set of independent variables")
    parser.add_argument("ind_vars_file", metavar="independent_variables", help="A CSV containing the independent variables")
    parser.add_argument("--dep_vars_file", metavar="dependent_variables", help="A CSV containing the dependent variables")
    parser.add_argument("--figures_dir", help="A directory to save generated figures in")

    args = parser.parse_args()

    x = np.genfromtxt(args.ind_vars_file, delimiter=",")
    x = x[1:]
    x = StandardScaler().fit_transform(x)

    pca = PCA()
    projected = pca.fit_transform(x)

    if args.dep_vars_file:
        y = np.genfromtxt(args.dep_vars_file, delimiter=",")
        y = y[1:]

        plot_dep_vars(projected, y, args.figures_dir)
