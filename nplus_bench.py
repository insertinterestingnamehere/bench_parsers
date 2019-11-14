import subprocess, os, pathlib
from bench import run_in_env, tempfile 
from contextlib import contextmanager

def run_with_num(func):
    def raised_func(int_range, outfile_name, *args, **kwargs):
        lines = ["{} {}\n".format(i, func(i, *args, **kwargs))
                 for i in int_range]
        with open(outfile_name, 'w') as f:
            f.writelines(lines)
    return raised_func

default_tmpfile = "test.py.lexed"

derp_src_dir = os.path.join("derp-3", "src")
# Their benchmarking script accounts for a minimum amount of time
# for a given run. This is great, but that's an added layer of complexity
# that we don't want to deal with when presenting the plots.
# That's why we're passing their script such a stringent min_time parameter.
min_time_default = .0001
modified_derp_script = "nplus.rkt"
derp_script = "pyparse.rkt"
nplus_grammar = "nplus.yacc.sx"
derp_python_grammar = "python.yacc.sx"

nplus_grammar_src = """
(file_input
 ((NAME)
 (let-syntax (($
               (λ (stx)
                 (syntax-case stx ()
                   ((_ n)
                    (datum->syntax
                     #'n
                     (string->symbol
                      (string-append
                       "$"
                       (number->string (syntax->datum #'n))))))))))
   (let-syntax (($$ (λ (_) #'(list ($ 1))))) $$)))
 ((file_input + file_input)
  (let-syntax (($
                (λ (stx)
                  (syntax-case stx ()
                    ((_ n)
                     (datum->syntax
                      #'n
                      (string->symbol
                       (string-append
                        "$"
                        (number->string (syntax->datum #'n))))))))))
    (let-syntax (($$ (λ (_) #'(list ($ 1) "+" ($ 3))))) `(E ,@$$)))))
"""

@contextmanager
def modified_derp_parser(script_name = modified_derp_script,
                         grammar_name = nplus_grammar):
    orig_script = os.path.join(derp_src_dir, derp_script)
    script = os.path.join(derp_src_dir, script_name)
    grammar = os.path.join(derp_src_dir, grammar_name)
    with open(grammar, 'w') as f:
        f.write(nplus_grammar_src)
    with open(orig_script, 'r') as f:
        parser_script = f.read()
    with open(script, 'w') as f:
        f.write(parser_script.replace(derp_python_grammar, grammar_name))
    yield
    pathlib.Path(grammar).unlink()
    pathlib.Path(script).unlink()

@run_with_num
def nplus_rkt(input_reps, runs,
              min_time = min_time_default,
              script_name = modified_derp_script,
              tmpfile = default_tmpfile,
              retries = 20):
    with tempfile(tmpfile), modified_derp_parser():
        with open(tmpfile, 'w') as f:
            f.writelines(['(ID n)\n'] +
                         ['(PUNCT "+")\n', '(ID n)\n'] * input_reps)
        tmp_relpath = os.path.join("..", "..", tmpfile)
        cmd = "cd {} && racket {} bench {} 0 {} {}".format(
            derp_src_dir, script_name, runs, min_time, tmp_relpath)
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

@run_with_num
def nplus_perl(input_reps, runs, script_name = "nplus_single.pl"):
    out = run_in_env("perl {} {} {}".format(script_name, input_reps, runs),
                     "perl",
                     stdout = subprocess.PIPE,
                     stderr = subprocess.PIPE,
                     check = True,
                     shell = True).stdout.decode()
    data = map(float, out.rstrip().split("\n"))
    return " ".join([str(t) for t in data])

if __name__ == "__main__":
    nplus_rkt(range(15), "rkt_nplus.txt", 20)
    nplus_perl(range(0, 410, 10), "pl_nplus.txt", 20)

