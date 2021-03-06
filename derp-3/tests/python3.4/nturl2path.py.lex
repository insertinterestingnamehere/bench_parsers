(LIT "Convert a NT pathname to a file URL and vice versa.")
(NEWLINE)
(KEYWORD def)
(ID "url2pathname")
(PUNCT "(")
(ID "url")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "OS-specific conversion from a relative URL of the 'file' scheme\n    to a file system path; not recommended for general use.")
(NEWLINE)
(KEYWORD import)
(ID "string")
(PUNCT ",")
(ID "urllib")
(PUNCT ".")
(ID "parse")
(NEWLINE)
(ID "url")
(PUNCT "=")
(ID "url")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(LIT ":")
(PUNCT ",")
(LIT "|")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(LIT "|")
(KEYWORD in)
(ID "url")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "url")
(PUNCT "[")
(PUNCT ":")
(LIT 4)
(PUNCT "]")
(PUNCT "==")
(LIT "////")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "url")
(PUNCT "=")
(ID "url")
(PUNCT "[")
(LIT 2)
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(ID "components")
(PUNCT "=")
(ID "url")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT "/")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "urllib")
(PUNCT ".")
(ID "parse")
(PUNCT ".")
(ID "unquote")
(PUNCT "(")
(LIT "\\")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "components")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "comp")
(PUNCT "=")
(ID "url")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT "|")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "comp")
(PUNCT ")")
(PUNCT "!=")
(LIT 2)
(KEYWORD or)
(ID "comp")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(KEYWORD not)
(KEYWORD in)
(ID "string")
(PUNCT ".")
(ID "ascii_letters")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "error")
(PUNCT "=")
(LIT "Bad URL: ")
(PUNCT "+")
(ID "url")
(NEWLINE)
(KEYWORD raise)
(ID "OSError")
(PUNCT "(")
(ID "error")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "drive")
(PUNCT "=")
(ID "comp")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT ".")
(ID "upper")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "components")
(PUNCT "=")
(ID "comp")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT "/")
(PUNCT ")")
(NEWLINE)
(ID "path")
(PUNCT "=")
(ID "drive")
(PUNCT "+")
(LIT ":")
(NEWLINE)
(KEYWORD for)
(ID "comp")
(KEYWORD in)
(ID "components")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "comp")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "path")
(PUNCT "=")
(ID "path")
(PUNCT "+")
(LIT "\\")
(PUNCT "+")
(ID "urllib")
(PUNCT ".")
(ID "parse")
(PUNCT ".")
(ID "unquote")
(PUNCT "(")
(ID "comp")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "path")
(PUNCT ".")
(ID "endswith")
(PUNCT "(")
(LIT ":")
(PUNCT ")")
(KEYWORD and)
(ID "url")
(PUNCT ".")
(ID "endswith")
(PUNCT "(")
(LIT "/")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "path")
(PUNCT "+=")
(LIT "\\")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "path")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "pathname2url")
(PUNCT "(")
(ID "p")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "OS-specific conversion from a file system path to a relative URL\n    of the 'file' scheme; not recommended for general use.")
(NEWLINE)
(KEYWORD import)
(ID "urllib")
(PUNCT ".")
(ID "parse")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(LIT ":")
(KEYWORD in)
(ID "p")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "p")
(PUNCT "[")
(PUNCT ":")
(LIT 2)
(PUNCT "]")
(PUNCT "==")
(LIT "\\\\")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "p")
(PUNCT "=")
(LIT "\\\\")
(PUNCT "+")
(ID "p")
(NEWLINE)
(DEDENT)
(ID "components")
(PUNCT "=")
(ID "p")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT "\\")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "urllib")
(PUNCT ".")
(ID "parse")
(PUNCT ".")
(ID "quote")
(PUNCT "(")
(LIT "/")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "components")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "comp")
(PUNCT "=")
(ID "p")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT ":")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "comp")
(PUNCT ")")
(PUNCT "!=")
(LIT 2)
(KEYWORD or)
(ID "len")
(PUNCT "(")
(ID "comp")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ")")
(PUNCT ">")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "error")
(PUNCT "=")
(LIT "Bad path: ")
(PUNCT "+")
(ID "p")
(NEWLINE)
(KEYWORD raise)
(ID "OSError")
(PUNCT "(")
(ID "error")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "drive")
(PUNCT "=")
(ID "urllib")
(PUNCT ".")
(ID "parse")
(PUNCT ".")
(ID "quote")
(PUNCT "(")
(ID "comp")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ".")
(ID "upper")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "components")
(PUNCT "=")
(ID "comp")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT "\\")
(PUNCT ")")
(NEWLINE)
(ID "path")
(PUNCT "=")
(LIT "///")
(PUNCT "+")
(ID "drive")
(PUNCT "+")
(LIT ":")
(NEWLINE)
(KEYWORD for)
(ID "comp")
(KEYWORD in)
(ID "components")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "comp")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "path")
(PUNCT "=")
(ID "path")
(PUNCT "+")
(LIT "/")
(PUNCT "+")
(ID "urllib")
(PUNCT ".")
(ID "parse")
(PUNCT ".")
(ID "quote")
(PUNCT "(")
(ID "comp")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "path")
(NEWLINE)
(DEDENT)
(ENDMARKER)
