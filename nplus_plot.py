import matplotlib
matplotlib.use('cairo')
from matplotlib import pyplot as plt
plt.rc('text', usetex=True)
matplotlib.rcParams['mathtext.fontset'] = 'stix'
matplotlib.rcParams['font.family'] = 'STIXGeneral'
plt.rc('lines', linewidth=2, markeredgewidth=2)
plt.rc('patch', linewidth=2)
plt.rc('savefig', bbox='tight')

def plot_nplus_data(outfile, *infiles, labels = None):
    for i, fname in enumerate(infiles):
        with open(fname, 'r') as f:
            data = [l.split() for l in f.readlines()]
        sizes = [int(l[0]) * 2 + 1 for l in data]
        times = [[float(t) for t in l[1:]] for l in data]
        min_times = list(map(min, times))
        kwargs = dict()
        if labels is not None:
            kwargs["label"] = labels[i]
        plt.plot(sizes, min_times, 'o-', markersize = 2.5, **kwargs)
    if labels is not None:
        plt.legend()
    plt.ylabel("time(s)")
    plt.xlabel("tokens")
    plt.savefig(outfile)
    plt.clf()

if __name__ == "__main__":
    plot_nplus_data("nplus_plot.pdf", "rkt_nplus.txt", "pl_nplus.txt",
                    labels = ['derp-3', 'marpa'])
