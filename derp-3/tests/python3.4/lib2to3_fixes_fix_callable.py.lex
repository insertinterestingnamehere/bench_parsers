(LIT "Fixer for callable().\n\nThis converts callable(obj) into isinstance(obj, collections.Callable), adding a\ncollections import if needed.")
(NEWLINE)
(KEYWORD from)
(ID "lib2to3")
(KEYWORD import)
(ID "fixer_base")
(NEWLINE)
(KEYWORD from)
(ID "lib2to3")
(PUNCT ".")
(ID "fixer_util")
(KEYWORD import)
(ID "Call")
(PUNCT ",")
(ID "Name")
(PUNCT ",")
(ID "String")
(PUNCT ",")
(ID "Attr")
(PUNCT ",")
(ID "touch_import")
(NEWLINE)
(KEYWORD class)
(ID "FixCallable")
(PUNCT "(")
(ID "fixer_base")
(PUNCT ".")
(ID "BaseFix")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "BM_compatible")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "order")
(PUNCT "=")
(LIT "pre")
(NEWLINE)
(ID "PATTERN")
(PUNCT "=")
(LIT "\n    power< 'callable'\n           trailer< lpar='('\n                    ( not(arglist | argument<any '=' any>) func=any\n                      | func=arglist<(not argument<any '=' any>) any ','> )\n                    rpar=')' >\n           after=any*\n    >\n    ")
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
(ID "func")
(PUNCT "=")
(ID "results")
(PUNCT "[")
(LIT "func")
(PUNCT "]")
(NEWLINE)
(ID "touch_import")
(PUNCT "(")
(KEYWORD None)
(PUNCT ",")
(LIT "collections")
(PUNCT ",")
(ID "node")
(PUNCT "=")
(ID "node")
(PUNCT ")")
(NEWLINE)
(ID "args")
(PUNCT "=")
(PUNCT "[")
(ID "func")
(PUNCT ".")
(ID "clone")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(ID "String")
(PUNCT "(")
(LIT ", ")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(ID "args")
(PUNCT ".")
(ID "extend")
(PUNCT "(")
(ID "Attr")
(PUNCT "(")
(ID "Name")
(PUNCT "(")
(LIT "collections")
(PUNCT ")")
(PUNCT ",")
(ID "Name")
(PUNCT "(")
(LIT "Callable")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "Call")
(PUNCT "(")
(ID "Name")
(PUNCT "(")
(LIT "isinstance")
(PUNCT ")")
(PUNCT ",")
(ID "args")
(PUNCT ",")
(ID "prefix")
(PUNCT "=")
(ID "node")
(PUNCT ".")
(ID "prefix")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)