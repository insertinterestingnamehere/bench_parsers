(LIT "Shared support for scanning document type declarations in HTML and XHTML.\n\nThis module is used as a foundation for the html.parser module.  It has no\ndocumented public API and should not be used directly.\n\n")
(NEWLINE)
(KEYWORD import)
(ID "re")
(NEWLINE)
(ID "_declname_match")
(PUNCT "=")
(ID "re")
(PUNCT ".")
(ID "compile")
(PUNCT "(")
(LIT "[a-zA-Z][-_.a-zA-Z0-9]*\\s*")
(PUNCT ")")
(PUNCT ".")
(ID "match")
(NEWLINE)
(ID "_declstringlit_match")
(PUNCT "=")
(ID "re")
(PUNCT ".")
(ID "compile")
(PUNCT "(")
(LIT "(\\'[^\\']*\\'|\"[^\"]*\")\\s*")
(PUNCT ")")
(PUNCT ".")
(ID "match")
(NEWLINE)
(ID "_commentclose")
(PUNCT "=")
(ID "re")
(PUNCT ".")
(ID "compile")
(PUNCT "(")
(LIT "--\\s*>")
(PUNCT ")")
(NEWLINE)
(ID "_markedsectionclose")
(PUNCT "=")
(ID "re")
(PUNCT ".")
(ID "compile")
(PUNCT "(")
(LIT "]\\s*]\\s*>")
(PUNCT ")")
(NEWLINE)
(ID "_msmarkedsectionclose")
(PUNCT "=")
(ID "re")
(PUNCT ".")
(ID "compile")
(PUNCT "(")
(LIT "]\\s*>")
(PUNCT ")")
(NEWLINE)
(KEYWORD del)
(ID "re")
(NEWLINE)
(KEYWORD class)
(ID "ParserBase")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Parser base class which provides some common support methods used\n    by the SGML/HTML and XHTML parsers.")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "__class__")
(KEYWORD is)
(ID "ParserBase")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "RuntimeError")
(PUNCT "(")
(LIT "_markupbase.ParserBase must be subclassed")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "error")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "message")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "NotImplementedError")
(PUNCT "(")
(LIT "subclasses of ParserBase must override error()")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "reset")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "lineno")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "offset")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "getpos")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return current line number and offset.")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "lineno")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "offset")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "updatepos")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "i")
(PUNCT ",")
(ID "j")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "i")
(PUNCT ">=")
(ID "j")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "j")
(NEWLINE)
(DEDENT)
(ID "rawdata")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "rawdata")
(NEWLINE)
(ID "nlines")
(PUNCT "=")
(ID "rawdata")
(PUNCT ".")
(ID "count")
(PUNCT "(")
(LIT "\n")
(PUNCT ",")
(ID "i")
(PUNCT ",")
(ID "j")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "nlines")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "lineno")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "lineno")
(PUNCT "+")
(ID "nlines")
(NEWLINE)
(ID "pos")
(PUNCT "=")
(ID "rawdata")
(PUNCT ".")
(ID "rindex")
(PUNCT "(")
(LIT "\n")
(PUNCT ",")
(ID "i")
(PUNCT ",")
(ID "j")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "offset")
(PUNCT "=")
(ID "j")
(PUNCT "-")
(PUNCT "(")
(ID "pos")
(PUNCT "+")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "offset")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "offset")
(PUNCT "+")
(ID "j")
(PUNCT "-")
(ID "i")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "j")
(NEWLINE)
(DEDENT)
(ID "_decl_otherchars")
(PUNCT "=")
(LIT "")
(NEWLINE)
(KEYWORD def)
(ID "parse_declaration")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "i")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "rawdata")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "rawdata")
(NEWLINE)
(ID "j")
(PUNCT "=")
(ID "i")
(PUNCT "+")
(LIT 2)
(NEWLINE)
(KEYWORD assert)
(ID "rawdata")
(PUNCT "[")
(ID "i")
(PUNCT ":")
(ID "j")
(PUNCT "]")
(PUNCT "==")
(LIT "<!")
(PUNCT ",")
(LIT "unexpected call to parse_declaration")
(NEWLINE)
(KEYWORD if)
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT ":")
(ID "j")
(PUNCT "+")
(LIT 1)
(PUNCT "]")
(PUNCT "==")
(LIT ">")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "j")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT ":")
(ID "j")
(PUNCT "+")
(LIT 1)
(PUNCT "]")
(KEYWORD in)
(PUNCT "(")
(LIT "-")
(PUNCT ",")
(LIT "")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(ID "n")
(PUNCT "=")
(ID "len")
(PUNCT "(")
(ID "rawdata")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT ":")
(ID "j")
(PUNCT "+")
(LIT 2)
(PUNCT "]")
(PUNCT "==")
(LIT "--")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "parse_comment")
(PUNCT "(")
(ID "i")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT "]")
(PUNCT "==")
(LIT "[")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "parse_marked_section")
(PUNCT "(")
(ID "i")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "decltype")
(PUNCT ",")
(ID "j")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_scan_name")
(PUNCT "(")
(ID "j")
(PUNCT ",")
(ID "i")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "j")
(PUNCT "<")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "j")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "decltype")
(PUNCT "==")
(LIT "doctype")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_decl_otherchars")
(PUNCT "=")
(LIT "")
(NEWLINE)
(DEDENT)
(KEYWORD while)
(ID "j")
(PUNCT "<")
(ID "n")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "c")
(PUNCT "=")
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "c")
(PUNCT "==")
(LIT ">")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "data")
(PUNCT "=")
(ID "rawdata")
(PUNCT "[")
(ID "i")
(PUNCT "+")
(LIT 2)
(PUNCT ":")
(ID "j")
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "decltype")
(PUNCT "==")
(LIT "doctype")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "handle_decl")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "unknown_decl")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "j")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "c")
(KEYWORD in)
(LIT "\"'")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "m")
(PUNCT "=")
(ID "_declstringlit_match")
(PUNCT "(")
(ID "rawdata")
(PUNCT ",")
(ID "j")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "m")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(ID "j")
(PUNCT "=")
(ID "m")
(PUNCT ".")
(ID "end")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "c")
(KEYWORD in)
(LIT "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "name")
(PUNCT ",")
(ID "j")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_scan_name")
(PUNCT "(")
(ID "j")
(PUNCT ",")
(ID "i")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "c")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_decl_otherchars")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "j")
(PUNCT "=")
(ID "j")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "c")
(PUNCT "==")
(LIT "[")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "decltype")
(PUNCT "==")
(LIT "doctype")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "j")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_parse_doctype_subset")
(PUNCT "(")
(ID "j")
(PUNCT "+")
(LIT 1)
(PUNCT ",")
(ID "i")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "decltype")
(KEYWORD in)
(PUNCT "{")
(LIT "attlist")
(PUNCT ",")
(LIT "linktype")
(PUNCT ",")
(LIT "link")
(PUNCT ",")
(LIT "element")
(PUNCT "}")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "error")
(PUNCT "(")
(LIT "unsupported '[' char in %s declaration")
(PUNCT "%")
(ID "decltype")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "error")
(PUNCT "(")
(LIT "unexpected '[' char in declaration")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "error")
(PUNCT "(")
(LIT "unexpected %r char in declaration")
(PUNCT "%")
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "j")
(PUNCT "<")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "j")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "parse_marked_section")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "i")
(PUNCT ",")
(ID "report")
(PUNCT "=")
(LIT 1)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "rawdata")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "rawdata")
(NEWLINE)
(KEYWORD assert)
(ID "rawdata")
(PUNCT "[")
(ID "i")
(PUNCT ":")
(ID "i")
(PUNCT "+")
(LIT 3)
(PUNCT "]")
(PUNCT "==")
(LIT "<![")
(PUNCT ",")
(LIT "unexpected call to parse_marked_section()")
(NEWLINE)
(ID "sectName")
(PUNCT ",")
(ID "j")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_scan_name")
(PUNCT "(")
(ID "i")
(PUNCT "+")
(LIT 3)
(PUNCT ",")
(ID "i")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "j")
(PUNCT "<")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "j")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "sectName")
(KEYWORD in)
(PUNCT "{")
(LIT "temp")
(PUNCT ",")
(LIT "cdata")
(PUNCT ",")
(LIT "ignore")
(PUNCT ",")
(LIT "include")
(PUNCT ",")
(LIT "rcdata")
(PUNCT "}")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "match")
(PUNCT "=")
(ID "_markedsectionclose")
(PUNCT ".")
(ID "search")
(PUNCT "(")
(ID "rawdata")
(PUNCT ",")
(ID "i")
(PUNCT "+")
(LIT 3)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "sectName")
(KEYWORD in)
(PUNCT "{")
(LIT "if")
(PUNCT ",")
(LIT "else")
(PUNCT ",")
(LIT "endif")
(PUNCT "}")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "match")
(PUNCT "=")
(ID "_msmarkedsectionclose")
(PUNCT ".")
(ID "search")
(PUNCT "(")
(ID "rawdata")
(PUNCT ",")
(ID "i")
(PUNCT "+")
(LIT 3)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "error")
(PUNCT "(")
(LIT "unknown status keyword %r in marked section")
(PUNCT "%")
(ID "rawdata")
(PUNCT "[")
(ID "i")
(PUNCT "+")
(LIT 3)
(PUNCT ":")
(ID "j")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "match")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "report")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "j")
(PUNCT "=")
(ID "match")
(PUNCT ".")
(ID "start")
(PUNCT "(")
(LIT 0)
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "unknown_decl")
(PUNCT "(")
(ID "rawdata")
(PUNCT "[")
(ID "i")
(PUNCT "+")
(LIT 3)
(PUNCT ":")
(ID "j")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "match")
(PUNCT ".")
(ID "end")
(PUNCT "(")
(LIT 0)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "parse_comment")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "i")
(PUNCT ",")
(ID "report")
(PUNCT "=")
(LIT 1)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "rawdata")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "rawdata")
(NEWLINE)
(KEYWORD if)
(ID "rawdata")
(PUNCT "[")
(ID "i")
(PUNCT ":")
(ID "i")
(PUNCT "+")
(LIT 4)
(PUNCT "]")
(PUNCT "!=")
(LIT "<!--")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "error")
(PUNCT "(")
(LIT "unexpected call to parse_comment()")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "match")
(PUNCT "=")
(ID "_commentclose")
(PUNCT ".")
(ID "search")
(PUNCT "(")
(ID "rawdata")
(PUNCT ",")
(ID "i")
(PUNCT "+")
(LIT 4)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "match")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "report")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "j")
(PUNCT "=")
(ID "match")
(PUNCT ".")
(ID "start")
(PUNCT "(")
(LIT 0)
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "handle_comment")
(PUNCT "(")
(ID "rawdata")
(PUNCT "[")
(ID "i")
(PUNCT "+")
(LIT 4)
(PUNCT ":")
(ID "j")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "match")
(PUNCT ".")
(ID "end")
(PUNCT "(")
(LIT 0)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_parse_doctype_subset")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "i")
(PUNCT ",")
(ID "declstartpos")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "rawdata")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "rawdata")
(NEWLINE)
(ID "n")
(PUNCT "=")
(ID "len")
(PUNCT "(")
(ID "rawdata")
(PUNCT ")")
(NEWLINE)
(ID "j")
(PUNCT "=")
(ID "i")
(NEWLINE)
(KEYWORD while)
(ID "j")
(PUNCT "<")
(ID "n")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "c")
(PUNCT "=")
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "c")
(PUNCT "==")
(LIT "<")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "s")
(PUNCT "=")
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT ":")
(ID "j")
(PUNCT "+")
(LIT 2)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "s")
(PUNCT "==")
(LIT "<")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "s")
(PUNCT "!=")
(LIT "<!")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "updatepos")
(PUNCT "(")
(ID "declstartpos")
(PUNCT ",")
(ID "j")
(PUNCT "+")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "error")
(PUNCT "(")
(LIT "unexpected char in internal subset (in %r)")
(PUNCT "%")
(ID "s")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(PUNCT "(")
(ID "j")
(PUNCT "+")
(LIT 2)
(PUNCT ")")
(PUNCT "==")
(ID "n")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(PUNCT "(")
(ID "j")
(PUNCT "+")
(LIT 4)
(PUNCT ")")
(PUNCT ">")
(ID "n")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT ":")
(ID "j")
(PUNCT "+")
(LIT 4)
(PUNCT "]")
(PUNCT "==")
(LIT "<!--")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "j")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "parse_comment")
(PUNCT "(")
(ID "j")
(PUNCT ",")
(ID "report")
(PUNCT "=")
(LIT 0)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "j")
(PUNCT "<")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "j")
(NEWLINE)
(DEDENT)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(ID "name")
(PUNCT ",")
(ID "j")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_scan_name")
(PUNCT "(")
(ID "j")
(PUNCT "+")
(LIT 2)
(PUNCT ",")
(ID "declstartpos")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "j")
(PUNCT "==")
(PUNCT "-")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "name")
(KEYWORD not)
(KEYWORD in)
(PUNCT "{")
(LIT "attlist")
(PUNCT ",")
(LIT "element")
(PUNCT ",")
(LIT "entity")
(PUNCT ",")
(LIT "notation")
(PUNCT "}")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "updatepos")
(PUNCT "(")
(ID "declstartpos")
(PUNCT ",")
(ID "j")
(PUNCT "+")
(LIT 2)
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "error")
(PUNCT "(")
(LIT "unknown declaration %r in internal subset")
(PUNCT "%")
(ID "name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "meth")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(LIT "_parse_doctype_")
(PUNCT "+")
(ID "name")
(PUNCT ")")
(NEWLINE)
(ID "j")
(PUNCT "=")
(ID "meth")
(PUNCT "(")
(ID "j")
(PUNCT ",")
(ID "declstartpos")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "j")
(PUNCT "<")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "j")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(ID "c")
(PUNCT "==")
(LIT "%")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(PUNCT "(")
(ID "j")
(PUNCT "+")
(LIT 1)
(PUNCT ")")
(PUNCT "==")
(ID "n")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(ID "s")
(PUNCT ",")
(ID "j")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_scan_name")
(PUNCT "(")
(ID "j")
(PUNCT "+")
(LIT 1)
(PUNCT ",")
(ID "declstartpos")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "j")
(PUNCT "<")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "j")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT "]")
(PUNCT "==")
(LIT ";")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "j")
(PUNCT "=")
(ID "j")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(ID "c")
(PUNCT "==")
(LIT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "j")
(PUNCT "=")
(ID "j")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(KEYWORD while)
(ID "j")
(PUNCT "<")
(ID "n")
(KEYWORD and)
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT "]")
(PUNCT ".")
(ID "isspace")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "j")
(PUNCT "=")
(ID "j")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "j")
(PUNCT "<")
(ID "n")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT "]")
(PUNCT "==")
(LIT ">")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "j")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "updatepos")
(PUNCT "(")
(ID "declstartpos")
(PUNCT ",")
(ID "j")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "error")
(PUNCT "(")
(LIT "unexpected char after internal subset")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(ID "c")
(PUNCT ".")
(ID "isspace")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "j")
(PUNCT "=")
(ID "j")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "updatepos")
(PUNCT "(")
(ID "declstartpos")
(PUNCT ",")
(ID "j")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "error")
(PUNCT "(")
(LIT "unexpected char %r in internal subset")
(PUNCT "%")
(ID "c")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_parse_doctype_element")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "i")
(PUNCT ",")
(ID "declstartpos")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "name")
(PUNCT ",")
(ID "j")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_scan_name")
(PUNCT "(")
(ID "i")
(PUNCT ",")
(ID "declstartpos")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "j")
(PUNCT "==")
(PUNCT "-")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(ID "rawdata")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "rawdata")
(NEWLINE)
(KEYWORD if)
(LIT ">")
(KEYWORD in)
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT ":")
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "rawdata")
(PUNCT ".")
(ID "find")
(PUNCT "(")
(LIT ">")
(PUNCT ",")
(ID "j")
(PUNCT ")")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_parse_doctype_attlist")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "i")
(PUNCT ",")
(ID "declstartpos")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "rawdata")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "rawdata")
(NEWLINE)
(ID "name")
(PUNCT ",")
(ID "j")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_scan_name")
(PUNCT "(")
(ID "i")
(PUNCT ",")
(ID "declstartpos")
(PUNCT ")")
(NEWLINE)
(ID "c")
(PUNCT "=")
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT ":")
(ID "j")
(PUNCT "+")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "c")
(PUNCT "==")
(LIT "")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "c")
(PUNCT "==")
(LIT ">")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "j")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD while)
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "name")
(PUNCT ",")
(ID "j")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_scan_name")
(PUNCT "(")
(ID "j")
(PUNCT ",")
(ID "declstartpos")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "j")
(PUNCT "<")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "j")
(NEWLINE)
(DEDENT)
(ID "c")
(PUNCT "=")
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT ":")
(ID "j")
(PUNCT "+")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "c")
(PUNCT "==")
(LIT "")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "c")
(PUNCT "==")
(LIT "(")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(LIT ")")
(KEYWORD in)
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT ":")
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "j")
(PUNCT "=")
(ID "rawdata")
(PUNCT ".")
(ID "find")
(PUNCT "(")
(LIT ")")
(PUNCT ",")
(ID "j")
(PUNCT ")")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD while)
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT ":")
(ID "j")
(PUNCT "+")
(LIT 1)
(PUNCT "]")
(PUNCT ".")
(ID "isspace")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "j")
(PUNCT "=")
(ID "j")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT ":")
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "name")
(PUNCT ",")
(ID "j")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_scan_name")
(PUNCT "(")
(ID "j")
(PUNCT ",")
(ID "declstartpos")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "c")
(PUNCT "=")
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT ":")
(ID "j")
(PUNCT "+")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "c")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "c")
(KEYWORD in)
(LIT "'\"")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "m")
(PUNCT "=")
(ID "_declstringlit_match")
(PUNCT "(")
(ID "rawdata")
(PUNCT ",")
(ID "j")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "m")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "j")
(PUNCT "=")
(ID "m")
(PUNCT ".")
(ID "end")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(ID "c")
(PUNCT "=")
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT ":")
(ID "j")
(PUNCT "+")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "c")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "c")
(PUNCT "==")
(LIT "#")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT ":")
(PUNCT "]")
(PUNCT "==")
(LIT "#")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(ID "name")
(PUNCT ",")
(ID "j")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_scan_name")
(PUNCT "(")
(ID "j")
(PUNCT "+")
(LIT 1)
(PUNCT ",")
(ID "declstartpos")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "j")
(PUNCT "<")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "j")
(NEWLINE)
(DEDENT)
(ID "c")
(PUNCT "=")
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT ":")
(ID "j")
(PUNCT "+")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "c")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "c")
(PUNCT "==")
(LIT ">")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "j")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_parse_doctype_notation")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "i")
(PUNCT ",")
(ID "declstartpos")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "name")
(PUNCT ",")
(ID "j")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_scan_name")
(PUNCT "(")
(ID "i")
(PUNCT ",")
(ID "declstartpos")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "j")
(PUNCT "<")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "j")
(NEWLINE)
(DEDENT)
(ID "rawdata")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "rawdata")
(NEWLINE)
(KEYWORD while)
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "c")
(PUNCT "=")
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT ":")
(ID "j")
(PUNCT "+")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "c")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "c")
(PUNCT "==")
(LIT ">")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "j")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "c")
(KEYWORD in)
(LIT "'\"")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "m")
(PUNCT "=")
(ID "_declstringlit_match")
(PUNCT "(")
(ID "rawdata")
(PUNCT ",")
(ID "j")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "m")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(ID "j")
(PUNCT "=")
(ID "m")
(PUNCT ".")
(ID "end")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "name")
(PUNCT ",")
(ID "j")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_scan_name")
(PUNCT "(")
(ID "j")
(PUNCT ",")
(ID "declstartpos")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "j")
(PUNCT "<")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "j")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_parse_doctype_entity")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "i")
(PUNCT ",")
(ID "declstartpos")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "rawdata")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "rawdata")
(NEWLINE)
(KEYWORD if)
(ID "rawdata")
(PUNCT "[")
(ID "i")
(PUNCT ":")
(ID "i")
(PUNCT "+")
(LIT 1)
(PUNCT "]")
(PUNCT "==")
(LIT "%")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "j")
(PUNCT "=")
(ID "i")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(KEYWORD while)
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "c")
(PUNCT "=")
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT ":")
(ID "j")
(PUNCT "+")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "c")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "c")
(PUNCT ".")
(ID "isspace")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "j")
(PUNCT "=")
(ID "j")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "j")
(PUNCT "=")
(ID "i")
(NEWLINE)
(DEDENT)
(ID "name")
(PUNCT ",")
(ID "j")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_scan_name")
(PUNCT "(")
(ID "j")
(PUNCT ",")
(ID "declstartpos")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "j")
(PUNCT "<")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "j")
(NEWLINE)
(DEDENT)
(KEYWORD while)
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "c")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "rawdata")
(PUNCT "[")
(ID "j")
(PUNCT ":")
(ID "j")
(PUNCT "+")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "c")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "c")
(KEYWORD in)
(LIT "'\"")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "m")
(PUNCT "=")
(ID "_declstringlit_match")
(PUNCT "(")
(ID "rawdata")
(PUNCT ",")
(ID "j")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "m")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "j")
(PUNCT "=")
(ID "m")
(PUNCT ".")
(ID "end")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(ID "c")
(PUNCT "==")
(LIT ">")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "j")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "name")
(PUNCT ",")
(ID "j")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_scan_name")
(PUNCT "(")
(ID "j")
(PUNCT ",")
(ID "declstartpos")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "j")
(PUNCT "<")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "j")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_scan_name")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "i")
(PUNCT ",")
(ID "declstartpos")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "rawdata")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "rawdata")
(NEWLINE)
(ID "n")
(PUNCT "=")
(ID "len")
(PUNCT "(")
(ID "rawdata")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "i")
(PUNCT "==")
(ID "n")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD None)
(PUNCT ",")
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(ID "m")
(PUNCT "=")
(ID "_declname_match")
(PUNCT "(")
(ID "rawdata")
(PUNCT ",")
(ID "i")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "m")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "s")
(PUNCT "=")
(ID "m")
(PUNCT ".")
(ID "group")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "name")
(PUNCT "=")
(ID "s")
(PUNCT ".")
(ID "strip")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(PUNCT "(")
(ID "i")
(PUNCT "+")
(ID "len")
(PUNCT "(")
(ID "s")
(PUNCT ")")
(PUNCT ")")
(PUNCT "==")
(ID "n")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD None)
(PUNCT ",")
(PUNCT "-")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "name")
(PUNCT ".")
(ID "lower")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(ID "m")
(PUNCT ".")
(ID "end")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "updatepos")
(PUNCT "(")
(ID "declstartpos")
(PUNCT ",")
(ID "i")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "error")
(PUNCT "(")
(LIT "expected name token at %r")
(PUNCT "%")
(ID "rawdata")
(PUNCT "[")
(ID "declstartpos")
(PUNCT ":")
(ID "declstartpos")
(PUNCT "+")
(LIT 20)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "unknown_decl")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "data")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)