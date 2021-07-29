import matplotlib.pyplot as plt

def plot_2D(sat, pc):
    to_plot_x = [pc[k] for k in pc]
    to_plot_y = [sat[k] for k in pc]

    plt.scatter(to_plot_x, to_plot_y)
    plt.show()

def plot_2D_max(sat, pc, threshold):
    to_plot_x1 = [pc[k] for k in filter(lambda x: sat[x] < threshold, pc)]
    to_plot_x2 = [pc[k] for k in filter(lambda x: sat[x] >= threshold, pc)]
    to_plot_y1 = [sat[k] for k in filter(lambda x: sat[x] < threshold, sat)]
    to_plot_y2 = [sat[k] for k in filter(lambda x: sat[x] >= threshold, sat)]

    plt.scatter(to_plot_x1, to_plot_y1, s=12)
    plt.scatter(to_plot_x2, to_plot_y2, s=12, color="black")
    plt.xlabel("PC1")
    plt.ylabel("SAT Attack Time (s)")
    plt.title("RLL32 - New SAT Attack on ESL Servers")
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
    to_plot_y1 = [sat1[k] for k in pc1_1]
    to_plot_y2 = [sat2[k] for k in pc1_1]

    plt.plot([to_plot_x1, to_plot_x2], [to_plot_y1, to_plot_y2], color="gray", alpha=0.3)
    plt.scatter(to_plot_x1, to_plot_y1, color="blue", s=12, label="RLL32")
    plt.scatter(to_plot_x2, to_plot_y2, color="red", s=12, label="Rerun", marker="x")

    plt.xlabel("PC1")
    plt.ylabel("Time (s)")
    plt.title("SAT Attack Times")
    plt.legend()

    plt.show()

def plot_decrease(sat, pc1):
    x = [pc1[k] for k in sat]
    y = [sat[k] for k in sat]

    plt.scatter(x, y)

    plt.xlabel("Absolute Decrease in PC1")
    plt.ylabel("Percentage Decrease in SAT Solving Times")
    plt.title("Decrease in SAT Solving Time for RLL16 when Optimized")

    plt.show()
