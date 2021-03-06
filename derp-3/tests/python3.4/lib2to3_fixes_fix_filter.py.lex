(LIT "Fixer that changes filter(F, X) into list(filter(F, X)).\n\nWe avoid the transformation if the filter() call is directly contained\nin iter(<>), list(<>), tuple(<>), sorted(<>), ...join(<>), or\nfor V in <>:.\n\nNOTE: This is still not correct if the original code was depending on\nfilter(F, X) to return a string if X is a string and a tuple if X is a\ntuple.  That would require type inference, which we don't do.  Let\nPython 2.6 figure it out.\n")
(NEWLINE)
(KEYWORD from)
(PUNCT ".")
(PUNCT ".")
(ID "pgen2")
(KEYWORD import)
(ID "token")
(NEWLINE)
(KEYWORD from)
(PUNCT ".")
(PUNCT ".")
(KEYWORD import)
(ID "fixer_base")
(NEWLINE)
(KEYWORD from)
(PUNCT ".")
(PUNCT ".")
(ID "fixer_util")
(KEYWORD import)
(ID "Name")
(PUNCT ",")
(ID "Call")
(PUNCT ",")
(ID "ListComp")
(PUNCT ",")
(ID "in_special_context")
(NEWLINE)
(KEYWORD class)
(ID "FixFilter")
(PUNCT "(")
(ID "fixer_base")
(PUNCT ".")
(ID "ConditionalFix")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "BM_compatible")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "PATTERN")
(PUNCT "=")
(LIT "\n    filter_lambda=power<\n        'filter'\n        trailer<\n            '('\n            arglist<\n                lambdef< 'lambda'\n                         (fp=NAME | vfpdef< '(' fp=NAME ')'> ) ':' xp=any\n                >\n                ','\n                it=any\n            >\n            ')'\n        >\n    >\n    |\n    power<\n        'filter'\n        trailer< '(' arglist< none='None' ',' seq=any > ')' >\n    >\n    |\n    power<\n        'filter'\n        args=trailer< '(' [any] ')' >\n    >\n    ")
(NEWLINE)
(ID "skip_on")
(PUNCT "=")
(LIT "future_builtins.filter")
(NEWLINE)
(KEYWORD def)
(ID "transform")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "node")
(PUNCT ",")
(ID "results")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "should_skip")
(PUNCT "(")
(ID "node")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(LIT "filter_lambda")
(KEYWORD in)
(ID "results")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "new")
(PUNCT "=")
(ID "ListComp")
(PUNCT "(")
(ID "results")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(LIT "fp")
(PUNCT ")")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(ID "results")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(LIT "fp")
(PUNCT ")")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(ID "results")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(LIT "it")
(PUNCT ")")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(ID "results")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(LIT "xp")
(PUNCT ")")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(LIT "none")
(KEYWORD in)
(ID "results")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "new")
(PUNCT "=")
(ID "ListComp")
(PUNCT "(")
(ID "Name")
(PUNCT "(")
(LIT "_f")
(PUNCT ")")
(PUNCT ",")
(ID "Name")
(PUNCT "(")
(LIT "_f")
(PUNCT ")")
(PUNCT ",")
(ID "results")
(PUNCT "[")
(LIT "seq")
(PUNCT "]")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(ID "Name")
(PUNCT "(")
(LIT "_f")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "in_special_context")
(PUNCT "(")
(ID "node")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD None)
(NEWLINE)
(DEDENT)
(ID "new")
(PUNCT "=")
(ID "node")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "new")
(PUNCT ".")
(ID "prefix")
(PUNCT "=")
(LIT "")
(NEWLINE)
(ID "new")
(PUNCT "=")
(ID "Call")
(PUNCT "(")
(ID "Name")
(PUNCT "(")
(LIT "list")
(PUNCT ")")
(PUNCT ",")
(PUNCT "[")
(ID "new")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "new")
(PUNCT ".")
(ID "prefix")
(PUNCT "=")
(ID "node")
(PUNCT ".")
(ID "prefix")
(NEWLINE)
(KEYWORD return)
(ID "new")
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)
