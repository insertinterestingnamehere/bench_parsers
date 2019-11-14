import os, pathlib, subprocess, sys
import tokenize as tkz
from contextlib import contextmanager
from itertools import islice

from repos import test_repos

@contextmanager
def changedir(dir):
    old = os.getcwd()
    os.chdir(dir)
    yield
    os.chdir(old)

def run_in_env(cmd, env, **kw):
    if os.name == "nt":
        return subprocess.run("activate {} && {} "
                              "&& deactivate".format(env, cmd),
                              **kw)
    else:
        return subprocess.run("source activate {} && {} &&"
                              " source deactivate".format(env, cmd),
                              **kw)

# Context manager to guarantee that a temporary file will be deleted
# once the context ends.
# Interestingly, the built in tempfile library doesn't have an
# obvious way to do this. NamedTemporaryFile expects you to close
# the thing manually if you specivy delete=False but it will
# delete the temp file when it closes if you specify delete=True.
# This interface really needs some way to get the enclosed
# file's name though.
@contextmanager
def tempfile(name):
    yield
    if os.path.isfile(name):
        pathlib.Path(name).unlink()

keywords = """def del pass break continue return raise from import as global
nonlocal assert if elif else while for in try finally with except lambda
or and not None True False class yield is"""
kwds = set(keywords.split())

def condense_token(t):
    tp = t.type
    name = tkz.tok_name[tp]
    if name == 'OP':
        return t.string
    if name == 'NAME':
        if t.string in kwds:
            return t.string
        else:
            return 'NAME'
    if name == 'NUMBER':
        return 'NUMBER'
    if name == 'STRING':
        return 'STRING'
    if name in ('NEWLINE', 'INDENT', 'DEDENT'):
        return name
    if name == 'NL':
        # Newline inside a logical line.
        # The grammar doesn't handle this kind of thing inherently,
        # so ignore it.
        return ""
    if name == "ENDMARKER":
        # include a newline and an endmarker.
        return "ENDMARKER\n"
    if name in ('ENCODING', 'COMMENT'):
        return ""
    raise ValueError("Don't know how to lex token with name: {}".format(name))

def lex_for_perl(infile, outfile):
    with open(infile, 'rb') as f:
        tokens = [condense_token(t) for t in tkz.tokenize(f.readline)]
    with open(outfile, 'w') as f:
        f.writelines(tokens)

def racket_token(t):
    tp = t.type
    name = tkz.tok_name[tp]
    if name == 'OP':
        return '(PUNCT "{}")'.format(t.string)
    if name == 'NAME':
        if t.string in kwds:
            return '(KEYWORD {})'.format(t.string)
        else:
            return '(ID {})'.format(t.string)
    if name == 'NUMBER':
        return '(LIT "{}")'.format(t.string)
    if name == 'STRING':
        # Avoid fighting to get strings into a format the racket interpreter
        # will accept by just using filler data instead.
        # The actual data carried by a given token shouldn't
        # matter for parse time.
        #return '(LIT "{}")'.format("\\n".join(t.string.split("\n")).replace("\"", "\\\"").replace("\\", "\\\\"))
        return '(LIT "s")'
    if name in ('NEWLINE', 'INDENT', 'DEDENT', 'ENDMARKER'):
        return '({})'.format(name)
    if name == 'NL':
        # Newline inside a logical line.
        # The grammar doesn't handle this kind of thing inherently,
        # so ignore it.
        return None
    if name in ('ENCODING', 'COMMENT'):
        return None
    raise ValueError("Can't lex unknown token with name {}.".format(name))

def lex_for_rkt(infile, outfile):
    with open(infile, 'rb') as f:
        tokens = [racket_token(t) for t in tkz.tokenize(f.readline)]
    lines = [t + "\n" for t in tokens if t is not None]
    with open(outfile, 'w') as f:
        f.writelines(lines)
    return len(lines)

def run_on_repo(*args, **kwarg_defaults):
    def actual_decorator(func):
        def func_on_repo(*args, **kwargs):
            repo = args[0]
            outfile = args[1]
            fw_args = args[2:]
            defaulted_kwargs = {**kwarg_defaults, **kwargs}
            lines = []
            # Assume repo context manager is alread active.
            for fname in repo:
                try:
                    lines.append(
                        "{} {}\n".format(fname,
                            func(fname,
                                 *fw_args,
                                 **defaulted_kwargs)))
                except:
                    print(fname)
                    raise
                print(lines[-1].rstrip())
            with open(outfile, 'w') as f:
                f.writelines(lines)
        return func_on_repo
    if kwarg_defaults:
        return actual_decorator
    else:
        return actual_decorator(*args)

marpa_script_default = "marpa_pyparse.pl"
default_tmpfile = "test.py.lexed"

@run_on_repo(script_name = marpa_script_default,
             tmpfile = default_tmpfile)
def bench_perl(infile, runs,
               script_name = marpa_script_default,
               tmpfile = default_tmpfile):
    # Ensure that the file ends in a newline.
    # If there isn't one, tokenize() will return something
    # missing a newline token required by the Python 3.6 grammar
    with open(infile, 'r') as f:
        contents = f.read()
    if contents and contents[-1] != "\n":
        with open(infile, 'w') as f:
            f.write(contents + "\n")

    with tempfile(tmpfile):
        lex_for_perl(infile, tmpfile)
        out = run_in_env("perl {} {} {}".format(script_name, tmpfile, runs),
                         "perl",
                         stdout = subprocess.PIPE,
                         stderr = subprocess.PIPE,
                         check = True,
                         shell = True).stdout.decode()
        data = map(float, out.rstrip().split("\n"))
    return " ".join([str(t) for t in data])

@run_on_repo(script_name = "antlr/build/pyparse-antlr",
             tmpfile = default_tmpfile)
def bench_antlr_cpp(infile, runs,
                    script_name = marpa_script_default,
                    tmpfile = default_tmpfile):
    # Ensure that the file ends in a newline.
    # If there isn't one, tokenize() will return something
    # missing a newline token required by the Python 3.6 grammar
    with open(infile, 'r') as f:
        contents = f.read()
    if contents and contents[-1] != "\n":
        with open(infile, 'w') as f:
            f.write(contents + "\n")

    with tempfile(tmpfile):
        lex_for_perl(infile, tmpfile)
        out = run_in_env("./{} {} {}".format(script_name, tmpfile, runs),
                         "base",
                         stdout = subprocess.PIPE,
                         stderr = subprocess.PIPE,
                         check = True,
                         shell = True).stdout.decode()
        data = map(float, out.rstrip().split("\n"))
    return " ".join([str(t) for t in data])

derp_src_dir = os.path.join("derp-3", "src")
derp_pyparse_default = "pyparse.rkt"
# Their benchmarking script accounts for a minimum amount of time
# for a given run. This is great, but that's an added layer of complexity
# that we don't want to deal with when presenting the plots.
# That's why we're passing their script such a stringent min_time parameter.
min_time_default = .0001

@run_on_repo(min_time = min_time_default,
             script_name = derp_pyparse_default,
             tmpfile = default_tmpfile)
def bench_rkt(infile, runs,
              min_time = min_time_default,
              script_name = derp_pyparse_default,
              tmpfile = default_tmpfile,
              retries = 20):
    with tempfile(tmpfile):
        ntokens = lex_for_rkt(infile, tmpfile)
        # The racket parser crashes when parsing an empty file.
        # Prevent this behavior from crashing the whole test run.
        if ntokens <= 1:
            return " ".join(["NaN"] * runs)
        with changedir(derp_src_dir):
            tmp_relpath = os.path.join("..", "..", tmpfile)
            cmd = "racket {} bench {} 0 {} {}".format(script_name, runs,
                                                      min_time, tmp_relpath)
            for i in range(retries):
                try:
                    output = run_in_env(cmd,
                                        "racket",
                                        stdout = subprocess.PIPE,
                                        stderr = subprocess.PIPE,
                                        check=True,
                                        shell=True).stdout.decode()
                    break
                except subprocess.CalledProcessError as re:
                    raised_exec = re
            else:
                # If the loop didn't break, there was an exception
                # thrown every time, so re-raise it with the original
                # traceback.
                raise raised_exec from None
        
    wall_times = [float(l.split()[6])
                  for l in output.split("\n")[3:3 + runs]]
    return " ".join([str(t) for t in wall_times])

@run_on_repo
def count_tokens(fname):
    with open(fname, 'rb') as f:
        tokens = tkz.tokenize(f.readline)
        return sum(1 for t in tokens
            if tkz.tok_name[t.type] not in ("ENCODING", "COMMENT", "NL"))

runs_per_file = 21

if __name__ == "__main__":
    for repo in test_repos[1:2]:
        with repo:
            try:
                count_tokens(repo, "count_{}.txt".format(repo.name))
                bench_antlr_cpp(repo, "antlr_{}_with_first.txt".format(repo.name), runs_per_file)
                bench_perl(repo, "pl_{}.txt".format(repo.name), runs_per_file)
                bench_rkt(repo, "rkt_{}.txt".format(repo.name), runs_per_file)
            except:
                with open("errored_repos.txt", 'a') as f:
                    f.write(repo.name + "\n")
                #raise
