import matplotlib.pyplot as plt

COLORS = ["blue", "red", "darkviolet", "sienna"]
MARKERS = [".", "s", "x", "^"]

def plot_obf_change(o_pc1, pc1, o_cnf, cnf, cnf_index):
    old_pc1 = [o_pc1[k] for k in o_pc1]
    new_pc1 = [pc1[k] for k in o_pc1]
    old_cnf_metric = [o_cnf[k][cnf_index] for k in o_pc1]
    new_cnf_metric = [cnf[k][cnf_index] for k in o_pc1]

    plt.plot([old_pc1, new_pc1], [old_cnf_metric, new_cnf_metric], color="gray", alpha=0.5)
    plt.scatter(old_pc1, old_cnf_metric, color="blue", s=12, label="Original")
    plt.scatter(new_pc1, new_cnf_metric, color="red", s=12, marker="x", label="New")
    plt.title("Obfuscation Changes to Circuit CNF Formula")

    plt.legend()
    plt.xlabel("PC1")
    plt.show()

def plot_multi_obf_change(pcs, cnfs, cnf_index, labels):
    o_pc = [pcs[0][k] for k in pcs[0]]
    o_cnf = [cnfs[0][k][cnf_index] for k in cnfs[0]]

    for i in range(len(pcs) - 1):
        pc1 = [pcs[i][k] for k in pcs[0]]
        pc2 = [pcs[i + 1][k] for k in pcs[0]]

        cnf1 = [cnfs[i][k][cnf_index] for k in pcs[0]]
        cnf2 = [cnfs[i + 1][k][cnf_index] for k in pcs[0]]

        # plt.plot([pc1, pc2], [cnf1, cnf2], color="gray", alpha=0.5)
        plt.plot([o_pc, pc2], [o_cnf, cnf2], color="gray", alpha=0.5)

    for i in range(len(pcs)):
        pc = [pcs[i][k] for k in pcs[0]]
        cnf = [cnfs[i][k][cnf_index] for k in pcs[0]]

        plt.scatter(pc, cnf, color=COLORS[i], s=12, marker=MARKERS[i], label=labels[i])

    plt.legend()
    plt.show()

