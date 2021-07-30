import matplotlib.pyplot as plt

def scatter_with_labels(data, to_plot="all", unc=None):
    if to_plot == "all":
        to_plot = len(data)

    points = sorted(data.items(), key=lambda x: x[1])
    labels = [p[0] for p in points[len(points) - to_plot:]]
    values = [p[1] for p in points[len(points) - to_plot:]]
    yerror = [unc[l] for l in labels] if unc is not None else None

    plt.xticks(rotation=45, fontsize="small", ha="right")
    plt.scatter(labels, values, s=12)
    plt.errorbar(labels, values, yerr=yerror, fmt="none")

    plt.tight_layout()
    plt.show()
