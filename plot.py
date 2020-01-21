import matplotlib
matplotlib.use('cairo')
from matplotlib import pyplot as plt
plt.rc('text', usetex=True)
matplotlib.rcParams['mathtext.fontset'] = 'stix'
matplotlib.rcParams['font.family'] = 'STIXGeneral'
plt.rc('lines', linewidth=2, markeredgewidth=1)
plt.rc('patch', linewidth=2)
plt.rc('savefig', bbox='tight')
plt.rc('xtick', labelsize=20)
plt.rc('ytick', labelsize=20)
import numpy as np

from repos import test_repos

def parse_bench_file(fname):
    with open(fname, 'r') as rkt:
        # Note, ignore first result to account for warmup in ANTLR.
        return {l.split()[0] : list(map(float, l.split()[1:]))
                for l in rkt.readlines()}

def plot_dicts(xvals, *yvals, legend = None, outfile = None, logscale = False, ylim = None, markers = None, labels = None, linreg = False):
    if markers is not None and len(markers) != len(yvals):
        raise ValueError("There must be exactly one style per set of points plotted.")
    x = []
    ys = [list() for y in yvals]
    for key, val in xvals.items():
        x.append(val)
        for y, ser in zip(ys, yvals):
            y.append(ser[key])
    for i, y in enumerate(ys):
        if linreg:
            filtered = ((x, y) for x, y in zip(x, y) if y == y)
            fx, fy = zip(*filtered)
            plt.plot(sorted(fx), np.polyval(np.polyfit(fx, fy, 1), sorted(fx)))
        kwargs = dict()
        if legend is not None:
            kwargs['label'] = legend[i]
        if markers is not None:
            kwargs['marker'] = markers[i]
        plt.scatter(x, y, s = 7, **kwargs)
    if labels is not None:
        plt.ylabel(labels[0], fontsize=20)
        plt.xlabel(labels[1], fontsize=20)
    if logscale:
        plt.yscale('log')
        plt.xscale('log')
    if ylim is not None:
        plt.ylim(ylim)
    if legend is not None:
        plt.legend(fontsize=20)
    if outfile is None:
        plt.show()
    else:
        plt.savefig(outfile)
        plt.clf()

if __name__ == "__main__":
    legend = ['derp-3', 'marpa', 'antlr']
    markers = ['v', '^', '.']
    scale_top = 1.3
    scale_bottom = .8
    for repo in test_repos:
        try:
            rkt_times = parse_bench_file("rkt_{}.txt".format(repo.name))
            pl_times = parse_bench_file("pl_{}.txt".format(repo.name))
            antlr_times = parse_bench_file("antlr_{}.txt".format(repo.name))
            counts = parse_bench_file("count_{}.txt".format(repo.name))
        except:
            continue
        # antlr times are in ms whereas everything else is in seconds.
        for key in antlr_times:
            antlr_times[key] = [t / 1000. for t in antlr_times[key]]

        counts = {key : val[0] for key, val in counts.items()}

        rkt_avgs = {key : np.mean(times) for key, times in rkt_times.items()}
        pl_avgs = {key : np.mean(times) for key, times in pl_times.items()}
        antlr_avgs = {key : np.mean(times) for key, times in antlr_times.items()}
        avgs = [rkt_avgs, pl_avgs, antlr_avgs]

        rkt_avg_per_token = {key : m / counts[key] for key, m in rkt_avgs.items()}
        pl_avg_per_token = {key : m / counts[key] for key, m in pl_avgs.items()}
        antlr_avg_per_token = {key : m / counts[key] for key, m in antlr_avgs.items()}
        avg_per_token = [rkt_avg_per_token, pl_avg_per_token, antlr_avg_per_token]

        def bound_select(max_min, args):
            return max_min(max_min(t for t in arg.values() if t == t and t > 0) for arg in args)

        plot_dicts(counts, *avgs, legend = legend,
                   outfile = 'scatter_{}.pdf'.format(repo.name),
                   markers = markers,
                   labels = ['time(s)', 'tokens'])

        plot_dicts(counts, *avgs, legend = legend,
                   outfile = 'scatter_{}_with_reg.pdf'.format(repo.name),
                   markers = markers,
                   labels = ['time(s)', 'tokens'], linreg = True)

        plot_dicts(counts, *avgs, legend = legend,
                   outfile = 'scatter_{}_logscale.pdf'.format(repo.name),
                   logscale = True,
                   #ylim = (.00008, 50),
                   ylim = (scale_bottom * bound_select(min, avgs),
                           scale_top * bound_select(max, avgs)),
                   markers = markers, labels = ['time(s)', 'tokens'])

        plot_dicts(counts, *avgs, legend = legend,
                   outfile = 'scatter_{}_logscale_with_reg.pdf'.format(repo.name), logscale = True,
                   #ylim = (.00008, 50),
                   ylim = (scale_bottom * bound_select(min, avgs),
                           scale_top * bound_select(max, avgs)),
                   markers = markers, labels = ['time(s)', 'tokens'],
                   linreg = True)

        plot_dicts(counts, *avg_per_token,
                   legend = legend,
                   outfile = 'scatter_per_token_{}.pdf'.format(repo.name),
                   logscale = True,
                   #ylim = (.000002, .01),
                   ylim = (scale_bottom * bound_select(min, avg_per_token),
                           scale_top * bound_select(max, avg_per_token)),
                   markers = markers,
                   labels = ['time(s) per token', 'tokens'])
