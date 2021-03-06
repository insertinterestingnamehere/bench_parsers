(LIT "Utilities to compile possibly incomplete Python source code.\n\nThis module provides two interfaces, broadly similar to the builtin\nfunction compile(), which take program text, a filename and a 'mode'\nand:\n\n- Return code object if the command is complete and valid\n- Return None if the command is incomplete\n- Raise SyntaxError, ValueError or OverflowError if the command is a\n  syntax error (OverflowError and ValueError can be produced by\n  malformed literals).\n\nApproach:\n\nFirst, check if the source consists entirely of blank lines and\ncomments; if so, replace it with 'pass', because the built-in\nparser doesn't always do the right thing for these.\n\nCompile three times: as is, with \\n, and with \\n\\n appended.  If it\ncompiles as is, it's complete.  If it compiles with one \\n appended,\nwe expect more.  If it doesn't compile either way, we compare the\nerror we get when compiling with \\n or \\n\\n appended.  If the errors\nare the same, the code is broken.  But if the errors are different, we\nexpect more.  Not intuitive; not even guaranteed to hold in future\nreleases; but this matches the compiler's behavior from Python 1.4\nthrough 2.2, at least.\n\nCaveat:\n\nIt is possible (but not likely) that the parser stops parsing with a\nsuccessful outcome before reaching the end of the source; in this\ncase, trailing symbols may be ignored instead of causing an error.\nFor example, a backslash followed by two newlines may be followed by\narbitrary garbage.  This will be fixed once the API for the parser is\nbetter.\n\nThe two interfaces are:\n\ncompile_command(source, filename, symbol):\n\n    Compiles a single command in the manner described above.\n\nCommandCompiler():\n\n    Instances of this class have __call__ methods identical in\n    signature to compile_command; the difference is that if the\n    instance compiles program text containing a __future__ statement,\n    the instance 'remembers' and compiles all subsequent program texts\n    with the statement in force.\n\nThe module also provides another class:\n\nCompile():\n\n    Instances of this class act like the built-in function compile,\n    but with 'memory' in the sense described above.\n")
(NEWLINE)
(KEYWORD import)
(ID "__future__")
(NEWLINE)
(ID "_features")
(PUNCT "=")
(PUNCT "[")
(ID "getattr")
(PUNCT "(")
(ID "__future__")
(PUNCT ",")
(ID "fname")
(PUNCT ")")
(KEYWORD for)
(ID "fname")
(KEYWORD in)
(ID "__future__")
(PUNCT ".")
(ID "all_feature_names")
(PUNCT "]")
(NEWLINE)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "compile_command")
(PUNCT ",")
(LIT "Compile")
(PUNCT ",")
(LIT "CommandCompiler")
(PUNCT "]")
(NEWLINE)
(ID "PyCF_DONT_IMPLY_DEDENT")
(PUNCT "=")
(LIT 512)
(NEWLINE)
(KEYWORD def)
(ID "_maybe_compile")
(PUNCT "(")
(ID "compiler")
(PUNCT ",")
(ID "source")
(PUNCT ",")
(ID "filename")
(PUNCT ",")
(ID "symbol")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "line")
(KEYWORD in)
(ID "source")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT "\n")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "line")
(PUNCT "=")
(ID "line")
(PUNCT ".")
(ID "strip")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "line")
(KEYWORD and)
(ID "line")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "!=")
(LIT "#")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "symbol")
(PUNCT "!=")
(LIT "eval")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "source")
(PUNCT "=")
(LIT "pass")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "err")
(PUNCT "=")
(ID "err1")
(PUNCT "=")
(ID "err2")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "code")
(PUNCT "=")
(ID "code1")
(PUNCT "=")
(ID "code2")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "code")
(PUNCT "=")
(ID "compiler")
(PUNCT "(")
(ID "source")
(PUNCT ",")
(ID "filename")
(PUNCT ",")
(ID "symbol")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "SyntaxError")
(KEYWORD as)
(ID "err")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "code1")
(PUNCT "=")
(ID "compiler")
(PUNCT "(")
(ID "source")
(PUNCT "+")
(LIT "\n")
(PUNCT ",")
(ID "filename")
(PUNCT ",")
(ID "symbol")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "SyntaxError")
(KEYWORD as)
(ID "e")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "err1")
(PUNCT "=")
(ID "e")
(NEWLINE)
(DEDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "code2")
(PUNCT "=")
(ID "compiler")
(PUNCT "(")
(ID "source")
(PUNCT "+")
(LIT "\n\n")
(PUNCT ",")
(ID "filename")
(PUNCT ",")
(ID "symbol")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "SyntaxError")
(KEYWORD as)
(ID "e")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "err2")
(PUNCT "=")
(ID "e")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "code")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "code")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "code1")
(KEYWORD and)
(ID "repr")
(PUNCT "(")
(ID "err1")
(PUNCT ")")
(PUNCT "==")
(ID "repr")
(PUNCT "(")
(ID "err2")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "err1")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_compile")
(PUNCT "(")
(ID "source")
(PUNCT ",")
(ID "filename")
(PUNCT ",")
(ID "symbol")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "compile")
(PUNCT "(")
(ID "source")
(PUNCT ",")
(ID "filename")
(PUNCT ",")
(ID "symbol")
(PUNCT ",")
(ID "PyCF_DONT_IMPLY_DEDENT")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "compile_command")
(PUNCT "(")
(ID "source")
(PUNCT ",")
(ID "filename")
(PUNCT "=")
(LIT "<input>")
(PUNCT ",")
(ID "symbol")
(PUNCT "=")
(LIT "single")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Compile a command and determine whether it is incomplete.\n\n    Arguments:\n\n    source -- the source string; may contain \\n characters\n    filename -- optional filename from which source was read; default\n                \"<input>\"\n    symbol -- optional grammar start symbol; \"single\" (default) or \"eval\"\n\n    Return value / exceptions raised:\n\n    - Return a code object if the command is complete and valid\n    - Return None if the command is incomplete\n    - Raise SyntaxError, ValueError or OverflowError if the command is a\n      syntax error (OverflowError and ValueError can be produced by\n      malformed literals).\n    ")
(NEWLINE)
(KEYWORD return)
(ID "_maybe_compile")
(PUNCT "(")
(ID "_compile")
(PUNCT ",")
(ID "source")
(PUNCT ",")
(ID "filename")
(PUNCT ",")
(ID "symbol")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "Compile")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Instances of this class behave much like the built-in compile\n    function, but if one is used to compile text containing a future\n    statement, it \"remembers\" and compiles all subsequent program texts\n    with the statement in force.")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "flags")
(PUNCT "=")
(ID "PyCF_DONT_IMPLY_DEDENT")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__call__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "source")
(PUNCT ",")
(ID "filename")
(PUNCT ",")
(ID "symbol")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "codeob")
(PUNCT "=")
(ID "compile")
(PUNCT "(")
(ID "source")
(PUNCT ",")
(ID "filename")
(PUNCT ",")
(ID "symbol")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "flags")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "feature")
(KEYWORD in)
(ID "_features")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "codeob")
(PUNCT ".")
(ID "co_flags")
(PUNCT "&")
(ID "feature")
(PUNCT ".")
(ID "compiler_flag")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "flags")
(PUNCT "|=")
(ID "feature")
(PUNCT ".")
(ID "compiler_flag")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "codeob")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "CommandCompiler")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Instances of this class have __call__ methods identical in\n    signature to compile_command; the difference is that if the\n    instance compiles program text containing a __future__ statement,\n    the instance 'remembers' and compiles all subsequent program texts\n    with the statement in force.")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "compiler")
(PUNCT "=")
(ID "Compile")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__call__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "source")
(PUNCT ",")
(ID "filename")
(PUNCT "=")
(LIT "<input>")
(PUNCT ",")
(ID "symbol")
(PUNCT "=")
(LIT "single")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Compile a command and determine whether it is incomplete.\n\n        Arguments:\n\n        source -- the source string; may contain \\n characters\n        filename -- optional filename from which source was read;\n                    default \"<input>\"\n        symbol -- optional grammar start symbol; \"single\" (default) or\n                  \"eval\"\n\n        Return value / exceptions raised:\n\n        - Return a code object if the command is complete and valid\n        - Return None if the command is incomplete\n        - Raise SyntaxError, ValueError or OverflowError if the command is a\n          syntax error (OverflowError and ValueError can be produced by\n          malformed literals).\n        ")
(NEWLINE)
(KEYWORD return)
(ID "_maybe_compile")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "compiler")
(PUNCT ",")
(ID "source")
(PUNCT ",")
(ID "filename")
(PUNCT ",")
(ID "symbol")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)
