import os, pathlib, subprocess, glob, shutil, fnmatch

class TestRepo(object):

    def __init__(self, org, name, tag = None, subdir = None,
                 extension = "py", exceptions = None):
        self.org = org
        self.name = name
        self.tag = tag
        self.extension = extension
        self.exceptions = exceptions
        if subdir is None:
            self.subdir = []
        else:
            self.subdir = subdir

    @property
    def url(self):
        return "https://github.com/{}/{}.git".format(self.org, self.name)

    @property
    def testdir(self):
        return os.path.join(self.name, *self.subdir)

    def clear_file(self):
        if os.path.exists(self.name):
            if os.path.isdir(self.name):
                shutil.rmtree(self.name)
            else:
                pathlib.Path(self.name).unlink()

    def clone(self):
        if self.tag is None:
            cmd = "git clone --depth 1 {}".format(self.url)
        else:
            cmd = "git clone --branch {} --depth 1 {}".format(self.tag, self.url)
        subprocess.run(cmd,
                       stdout=subprocess.PIPE,
                       shell=True,
                       check=True)

    def __enter__(self):
        self.clear_file()
        self.clone()

    def __exit__(self, exec_type, exec_value, traceback):
        self.clear_file()

    def __iter__(self):
        def iterator():
            for f in glob.iglob("{}/**/*.{}".format(self.testdir,
                                                    self.extension),
                                recursive = True):
                if self.exceptions is None:
                    yield f
                else:
                    for pattern in self.exceptions:
                        if fnmatch.fnmatch(f, pattern):
                            break
                    else:
                        yield f
        return iterator()
#        return glob.iglob("{}/**/*.{}".format(self.testdir, self.extension),
#                          recursive = True)

test_repos = [
    # Start with something small.
    TestRepo("benjaminp", "six", "1.11.0"),
    TestRepo("sympy", "sympy", "sympy-1.3"),
    # Use Python 3.4.8 because that's the last version the
    # racket based parser can handle.
    TestRepo("python", "cpython", "v3.4.8",
             exceptions = ["cpython/Lib/test/bad*.py",
                           # These files use Python 2 syntax. Ignore them.
                           "cpython/Lib/lib2to3/tests/data/py2_test_grammar.py",
                           "cpython/Tools/msi/msi.py",
                           "cpython/Tools/msi/msilib.py",
                           "cpython/Tools/test2to3/maintest.py",
                           "cpython/Tools/test2to3/test/test_foo.py",
                           "cpython/Tools/test2to3/test2to3/hello.py",
                           "cpython/Lib/lib2to3/tests/data/bom.py",
                           "cpython/Lib/lib2to3/tests/data/crlf.py",
                           "cpython/Lib/lib2to3/tests/data/different_encoding.py",
                           "cpython/Lib/lib2to3/tests/data/false_encoding.py",
                           "cpython/Lib/lib2to3/tests/data/py2_test_grammar.py",
                           "cpython/Tools/hg/hgtouch.py",
                           # Avoid this file to work aorund a bug in tokenize.
                           # https://github.com/python/cpython/commit/963e40256a7047c538eca88a792710c2d6d53ac5
                           "cpython/Lib/test/test_pep3131.py"
                           ]),
    TestRepo("scikit-image", "scikit-image", "v0.14.0"),
    TestRepo("scipy", "scipy", "v1.1.0",
             exceptions = ["scipy/pavement.py",
                           "scipy/tools/win32/build_scripts/pavement.py"]),
    TestRepo("numpy", "numpy", "v1.15.0rc1"),
    TestRepo("pytoolz", "toolz", "0.9.0"),
    TestRepo("django", "django", "2.1b1"),
    TestRepo("networkx", "networkx", "networkx-2.1"),
    TestRepo("numba", "numba", "0.39.0rc1"),
    TestRepo("pandas-dev", "pandas", "v0.23.2"),
    TestRepo("Pylons", "pyramid", "1.9.2"),
    TestRepo("python-pillow", "Pillow", "5.2.0"),
    #TestRepo("pyeve", "eve", "06e1fe27adcaf2a44ca545d905e75bdd04769440"),
    TestRepo("pypa", "pip", "10.0.1"),
    TestRepo("bokeh", "bokeh", "1.0.0dev2"),
    TestRepo("kivy", "kivy", "1.10.1"),
    TestRepo("matplotlib", "matplotlib", "v2.2.2"),
    TestRepo("requests", "requests", "v2.19.1"),
    TestRepo("ansible", "ansible", "v2.6.1"),
    TestRepo("scikit-learn", "scikit-learn", "0.19.1"),
    TestRepo("scrapy", "scrapy", "1.5.0"),
    TestRepo("ipython", "ipython", "6.4.0"),
    TestRepo("jupyter", "notebook", "5.6.0rc1"),
    TestRepo("binux", "pyspider", "v0.3.10"),
    TestRepo("celery", "celery", "v4.2.0"),
    TestRepo("explosion", "spaCy", "v2.0.12"),
    TestRepo("saltstack", "salt", "v2018.3.2"),
    TestRepo("keras-team", "keras", "2.2.0"),
    TestRepo("pallets", "flask", "1.0.2"),
    TestRepo("pytorch", "pytorch", "v0.4.0"),
    TestRepo("tensorflow", "tensorflow", "v1.9.0-rc2"),
    TestRepo("twisted", "twisted", "twisted-18.4.0"),
    TestRepo("cython", "cython", "0.28.3"),
    ]

