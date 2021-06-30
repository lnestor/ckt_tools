def plot_sat_times_3D(sat, o_pc1, o_pc2):
    to_plot_x1 = [o_pc1[k] for k in o_pc1]
    to_plot_x2 = [pc1[k] for k in o_pc1]
    to_plot_y = [sat[k][0] for k in o_pc1]

    fig = plt.figure()
    ax = fig.add_subplot(projection="3d")

    ax.scatter3D(to_plot_x1, to_plot_x2, to_plot_y, c=to_plot_y)
    plt.show()

