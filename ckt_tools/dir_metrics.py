import json
import numpy as np
import os
from sklearn.decomposition import PCA
from sklearn.preprocessing import StandardScaler

class DirectoryMetrics:
    def __init__(self, directory):
        self.dir = directory
        self.cnf = None
        self.sat_all = None
        self.sat_iter = None
        self.sat_mean = None
        self.sat_unc = None
        self.probs = None
        self.struct = None

        self.metrics_dir = "%s/metrics" % (self.dir)
        if not os.path.isdir(self.metrics_dir):
            print("ERROR: Metrics directory not present")
            return

        struct_filename = "%s/struct.csv" % (self.metrics_dir)
        if os.path.isfile(struct_filename):
            self.struct = self._read_csv_with_labels(struct_filename)

        cnf_filename = "%s/cnf.csv" % (self.metrics_dir)
        if os.path.isfile(cnf_filename):
            self.cnf = self._read_csv_with_labels(cnf_filename)

        sat_filename = "%s/sat.csv" % (self.metrics_dir)
        if os.path.isfile(sat_filename):
            self.sat_all = self._read_csv_with_labels(sat_filename)
            self.sat_mean = {k: v[0] for k, v in self.sat_all.items()}
            self.sat_unc = {k: v[1] for k, v in self.sat_all.items()}
            self.sat_iter = {k: v[2] for k, v in self.sat_all.items()}

        prob_filename = "%s/prob.json" % (self.metrics_dir)
        if os.path.isfile(prob_filename):
            with open(prob_filename) as f:
                self.probs = json.load(f)

    def calc_pcs(self, scaler=None, pca=None):
        if scaler is None and pca is None:
            self.scaler = StandardScaler()
            scaled_data = self.scaler.fit_transform(list(self.struct.values()))
            scaled = {k: v for k, v in zip(list(self.struct.keys()), scaled_data)}

            self.pca = PCA()
            pc_data = self.pca.fit_transform(list(scaled.values()))
            self.pcs = {k: v for k, v in zip(list(self.struct.keys()), pc_data)}
            self.pc1 = {k: v[0] for k, v in zip(list(self.struct.keys()), pc_data)}
            self.pc2 = {k: v[1] for k, v in zip(list(self.struct.keys()), pc_data)}
        else:
            self.pcs = self._apply_pca_transform(self.struct, scaler, pca)
            self.pc1 = {k: v[0] for k, v in self.pcs.items()}
            self.pc2 = {k: v[1] for k, v in self.pcs.items()}

    def _read_csv_with_labels(self, filename):
        labels = np.genfromtxt(filename, usecols=0, dtype=str, delimiter=",")
        labels[1:] = [os.path.basename(name) for name in labels[1:]]
        data = np.genfromtxt(filename, delimiter=",", names=True)
        return {label: list(row)[1:] for label, row in zip(labels[1:], data)}

    def _apply_pca_transform(self, data, scaler, pca):
        scaled_data = scaler.transform(list(data.values()))
        scaled = {k: v for k, v in zip(list(data.keys()), scaled_data)}

        pc_data = pca.transform(list(scaled.values()))
        pcs = {k: v for k, v in zip(list(data.keys()), pc_data)}
        return pcs
