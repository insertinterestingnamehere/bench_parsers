(LIT " Fixer for imports of itertools.(imap|ifilter|izip|ifilterfalse) ")
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
(ID "BlankLine")
(PUNCT ",")
(ID "syms")
(PUNCT ",")
(ID "token")
(NEWLINE)
(KEYWORD class)
(ID "FixItertoolsImports")
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
(ID "PATTERN")
(PUNCT "=")
(LIT "\n              import_from< 'from' 'itertools' 'import' imports=any >\n              ")
(PUNCT "%")
(PUNCT "(")
(ID "locals")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
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
(ID "imports")
(PUNCT "=")
(ID "results")
(PUNCT "[")
(LIT "imports")
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "imports")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "syms")
(PUNCT ".")
(ID "import_as_name")
(KEYWORD or)
(KEYWORD not)
(ID "imports")
(PUNCT ".")
(ID "children")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "children")
(PUNCT "=")
(PUNCT "[")
(ID "imports")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "children")
(PUNCT "=")
(ID "imports")
(PUNCT ".")
(ID "children")
(NEWLINE)
(DEDENT)
(KEYWORD for)
(ID "child")
(KEYWORD in)
(ID "children")
(PUNCT "[")
(PUNCT ":")
(PUNCT ":")
(LIT 2)
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "child")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "token")
(PUNCT ".")
(ID "NAME")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "member")
(PUNCT "=")
(ID "child")
(PUNCT ".")
(ID "value")
(NEWLINE)
(ID "name_node")
(PUNCT "=")
(ID "child")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "child")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "token")
(PUNCT ".")
(ID "STAR")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD assert)
(ID "child")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "syms")
(PUNCT ".")
(ID "import_as_name")
(NEWLINE)
(ID "name_node")
(PUNCT "=")
(ID "child")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(ID "member_name")
(PUNCT "=")
(ID "name_node")
(PUNCT ".")
(ID "value")
(NEWLINE)
(KEYWORD if)
(ID "member_name")
(KEYWORD in)
(PUNCT "(")
(LIT "imap")
(PUNCT ",")
(LIT "izip")
(PUNCT ",")
(LIT "ifilter")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "child")
(PUNCT ".")
(ID "value")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "child")
(PUNCT ".")
(ID "remove")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "member_name")
(KEYWORD in)
(PUNCT "(")
(LIT "ifilterfalse")
(PUNCT ",")
(LIT "izip_longest")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "node")
(PUNCT ".")
(ID "changed")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "name_node")
(PUNCT ".")
(ID "value")
(PUNCT "=")
(PUNCT "(")
(LIT "filterfalse")
(KEYWORD if)
(ID "member_name")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT "==")
(LIT "f")
(KEYWORD else)
(LIT "zip_longest")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "children")
(PUNCT "=")
(ID "imports")
(PUNCT ".")
(ID "children")
(PUNCT "[")
(PUNCT ":")
(PUNCT "]")
(KEYWORD or)
(PUNCT "[")
(ID "imports")
(PUNCT "]")
(NEWLINE)
(ID "remove_comma")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(KEYWORD for)
(ID "child")
(KEYWORD in)
(ID "children")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "remove_comma")
(KEYWORD and)
(ID "child")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "token")
(PUNCT ".")
(ID "COMMA")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "child")
(PUNCT ".")
(ID "remove")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "remove_comma")
(PUNCT "^=")
(KEYWORD True)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD while)
(ID "children")
(KEYWORD and)
(ID "children")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT ".")
(ID "type")
(PUNCT "==")
(ID "token")
(PUNCT ".")
(ID "COMMA")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "children")
(PUNCT ".")
(ID "pop")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "remove")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(PUNCT "(")
(KEYWORD not)
(PUNCT "(")
(ID "imports")
(PUNCT ".")
(ID "children")
(KEYWORD or)
(ID "getattr")
(PUNCT "(")
(ID "imports")
(PUNCT ",")
(LIT "value")
(PUNCT ",")
(KEYWORD None)
(PUNCT ")")
(PUNCT ")")
(KEYWORD or)
(ID "imports")
(PUNCT ".")
(ID "parent")
(KEYWORD is)
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "p")
(PUNCT "=")
(ID "node")
(PUNCT ".")
(ID "prefix")
(NEWLINE)
(ID "node")
(PUNCT "=")
(ID "BlankLine")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "node")
(PUNCT ".")
(ID "prefix")
(PUNCT "=")
(ID "p")
(NEWLINE)
(KEYWORD return)
(ID "node")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(ENDMARKER)
