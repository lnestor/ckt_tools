import matplotlib.pyplot as plt

def plot_2D(sat, pc):
    to_plot_x = [pc[k] for k in pc]
    to_plot_y = [sat[k][0] for k in pc]

    plt.scatter(to_plot_x, to_plot_y)
    plt.show()

def plot_sat_times_3D(sat, o_pc1, o_pc2):
    to_plot_x1 = [o_pc1[k] for k in o_pc1]
    to_plot_x2 = [o_pc2[k] for k in o_pc1]
    to_plot_y = [sat[k][0] for k in o_pc1]

    fig = plt.figure()
    ax = fig.add_subplot(projection="3d")

    ax.scatter3D(to_plot_x1, to_plot_x2, to_plot_y)
    ax.set_xlabel("PC1")
    ax.set_ylabel("PC2")
    plt.show()

def plot_diff(sat1, sat2, pc1_1, pc1_2):
    to_plot_x1 = [pc1_1[k] for k in pc1_1]
    to_plot_x2 = [pc1_2[k] for k in pc1_1]
    to_plot_y1 = [sat1[k][0] for k in pc1_1]
    to_plot_y2 = [sat2[k][0] for k in pc1_1]

    plt.scatter(to_plot_x1, to_plot_y1, color="blue", s=12, label="RLL16")
    plt.scatter(to_plot_x2, to_plot_y2, color="red", s=12, label="RLL32")

    plt.plot([to_plot_x1, to_plot_x2], [to_plot_y1, to_plot_y2], color="gray", alpha=0.5)
    plt.xlabel("PC1")
    plt.ylabel("Time (s)")
    plt.title("SAT Attack Times")
    plt.legend()

    plt.show()
