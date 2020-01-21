#Parser Benchmark

This repo is a short benchmark of various parsers.
It was used to produce the performance plot in [https://dl.acm.org/citation.cfm?id=3360553](https://dl.acm.org/citation.cfm?id=3360553).
It uses the Python 3.6 grammar in all cases and can download and parse whole repositories off of GitHub.
The paper shows performance results for parsing the source files in SymPy due to space constraints, however this script will, by default run on all the repositories it's aware of.
The current list of repositories that will be used is set up in `repos.py`.

##Setup

This benchmark assumes that the racket and perl based parsers are set up inside different conda environments and that the ANTLR-generated C++ parser has been built in the `antlr/build` subdirectory.

Please also make sure that git and cmake are installed somewhere on your system.

###Setup for Marpa
Marpa is assumed to be installed within a conda environment called `perl`.
If you want to use a version of Marpa installed elsewhere, create a dummy conda environment by running `conda create -n perl`.

###Setup for Derp-3
Derp-3 is assumed to be set up in an environment called racket.
To set up the needed conda environment, after installing miniconda, run `conda create -n racket -c conda-forge racket` then run `source activate racket` and `raco pkg install base math-lib srfi-lib`.
You can return to the base conda environment by running `source activate base`.

### Setup for ANTLR Generated Parser
The ANTLR parser generator has already been used to generate the C++ source files in the antlr directory.
To compile them, install CMake and a working C++ compiler then change directory to the antlr subdirectory of this repository and run the commands
```
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make -j
```

## Running the benchmark
Once all this setup is finished, you can run the benchmarks by running `python bench.py` in the main repo folder.
It is set up to collect data on various Python repositories on GitHub.
The script there should take care of downloading the git repositories needed and cleaning them up afterward. 
