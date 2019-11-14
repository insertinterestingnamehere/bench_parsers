(LIT "More comprehensive traceback formatting for Python scripts.\n\nTo enable this module, do:\n\n    import cgitb; cgitb.enable()\n\nat the top of your script.  The optional arguments to enable() are:\n\n    display     - if true, tracebacks are displayed in the web browser\n    logdir      - if set, tracebacks are written to files in this directory\n    context     - number of lines of source code to show for each stack frame\n    format      - 'text' or 'html' controls the output format\n\nBy default, tracebacks are displayed but not saved, the context is 5 lines\nand the output format is 'html' (for backwards compatibility with the\noriginal use of this module)\n\nAlternatively, if you have caught an exception and want cgitb to display it\nfor you, call cgitb.handler().  The optional argument to handler() is a\n3-item tuple (etype, evalue, etb) just like the value of sys.exc_info().\nThe default handler displays output as HTML.\n\n")
(NEWLINE)
(KEYWORD import)
(ID "inspect")
(NEWLINE)
(KEYWORD import)
(ID "keyword")
(NEWLINE)
(KEYWORD import)
(ID "linecache")
(NEWLINE)
(KEYWORD import)
(ID "os")
(NEWLINE)
(KEYWORD import)
(ID "pydoc")
(NEWLINE)
(KEYWORD import)
(ID "sys")
(NEWLINE)
(KEYWORD import)
(ID "tempfile")
(NEWLINE)
(KEYWORD import)
(ID "time")
(NEWLINE)
(KEYWORD import)
(ID "tokenize")
(NEWLINE)
(KEYWORD import)
(ID "traceback")
(NEWLINE)
(KEYWORD def)
(ID "reset")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return a string that resets the CGI and browser to a known state.")
(NEWLINE)
(KEYWORD return)
(LIT "<!--: spam\nContent-Type: text/html\n\n<body bgcolor=\"#f0f0f8\"><font color=\"#f0f0f8\" size=\"-5\"> -->\n<body bgcolor=\"#f0f0f8\"><font color=\"#f0f0f8\" size=\"-5\"> --> -->\n</font> </font> </font> </script> </object> </blockquote> </pre>\n</table> </table> </table> </table> </table> </font> </font> </font>")
(NEWLINE)
(DEDENT)
(ID "__UNDEF__")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD def)
(ID "small")
(PUNCT "(")
(ID "text")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "text")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "<small>")
(PUNCT "+")
(ID "text")
(PUNCT "+")
(LIT "</small>")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "strong")
(PUNCT "(")
(ID "text")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "text")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "<strong>")
(PUNCT "+")
(ID "text")
(PUNCT "+")
(LIT "</strong>")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "grey")
(PUNCT "(")
(ID "text")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "text")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "<font color=\"#909090\">")
(PUNCT "+")
(ID "text")
(PUNCT "+")
(LIT "</font>")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "lookup")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "frame")
(PUNCT ",")
(ID "locals")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Find the value for a given name in the given environment.")
(NEWLINE)
(KEYWORD if)
(ID "name")
(KEYWORD in)
(ID "locals")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "local")
(PUNCT ",")
(ID "locals")
(PUNCT "[")
(ID "name")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "name")
(KEYWORD in)
(ID "frame")
(PUNCT ".")
(ID "f_globals")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "global")
(PUNCT ",")
(ID "frame")
(PUNCT ".")
(ID "f_globals")
(PUNCT "[")
(ID "name")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(LIT "__builtins__")
(KEYWORD in)
(ID "frame")
(PUNCT ".")
(ID "f_globals")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "builtins")
(PUNCT "=")
(ID "frame")
(PUNCT ".")
(ID "f_globals")
(PUNCT "[")
(LIT "__builtins__")
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "type")
(PUNCT "(")
(ID "builtins")
(PUNCT ")")
(KEYWORD is)
(ID "type")
(PUNCT "(")
(PUNCT "{")
(PUNCT "}")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "name")
(KEYWORD in)
(ID "builtins")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "builtin")
(PUNCT ",")
(ID "builtins")
(PUNCT "[")
(ID "name")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "hasattr")
(PUNCT "(")
(ID "builtins")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "builtin")
(PUNCT ",")
(ID "getattr")
(PUNCT "(")
(ID "builtins")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD return)
(KEYWORD None)
(PUNCT ",")
(ID "__UNDEF__")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "scanvars")
(PUNCT "(")
(ID "reader")
(PUNCT ",")
(ID "frame")
(PUNCT ",")
(ID "locals")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Scan one logical line of Python and look up values of variables used.")
(NEWLINE)
(ID "vars")
(PUNCT ",")
(ID "lasttoken")
(PUNCT ",")
(ID "parent")
(PUNCT ",")
(ID "prefix")
(PUNCT ",")
(ID "value")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(PUNCT ",")
(KEYWORD None)
(PUNCT ",")
(KEYWORD None)
(PUNCT ",")
(LIT "")
(PUNCT ",")
(ID "__UNDEF__")
(NEWLINE)
(KEYWORD for)
(ID "ttype")
(PUNCT ",")
(ID "token")
(PUNCT ",")
(ID "start")
(PUNCT ",")
(ID "end")
(PUNCT ",")
(ID "line")
(KEYWORD in)
(ID "tokenize")
(PUNCT ".")
(ID "generate_tokens")
(PUNCT "(")
(ID "reader")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "ttype")
(PUNCT "==")
(ID "tokenize")
(PUNCT ".")
(ID "NEWLINE")
(PUNCT ":")
(KEYWORD break)
(NEWLINE)
(KEYWORD if)
(ID "ttype")
(PUNCT "==")
(ID "tokenize")
(PUNCT ".")
(ID "NAME")
(KEYWORD and)
(ID "token")
(KEYWORD not)
(KEYWORD in)
(ID "keyword")
(PUNCT ".")
(ID "kwlist")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "lasttoken")
(PUNCT "==")
(LIT ".")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "parent")
(KEYWORD is)
(KEYWORD not)
(ID "__UNDEF__")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "value")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "parent")
(PUNCT ",")
(ID "token")
(PUNCT ",")
(ID "__UNDEF__")
(PUNCT ")")
(NEWLINE)
(ID "vars")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(PUNCT "(")
(ID "prefix")
(PUNCT "+")
(ID "token")
(PUNCT ",")
(ID "prefix")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "where")
(PUNCT ",")
(ID "value")
(PUNCT "=")
(ID "lookup")
(PUNCT "(")
(ID "token")
(PUNCT ",")
(ID "frame")
(PUNCT ",")
(ID "locals")
(PUNCT ")")
(NEWLINE)
(ID "vars")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(PUNCT "(")
(ID "token")
(PUNCT ",")
(ID "where")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(ID "token")
(PUNCT "==")
(LIT ".")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "prefix")
(PUNCT "+=")
(ID "lasttoken")
(PUNCT "+")
(LIT ".")
(NEWLINE)
(ID "parent")
(PUNCT "=")
(ID "value")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "parent")
(PUNCT ",")
(ID "prefix")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(LIT "")
(NEWLINE)
(DEDENT)
(ID "lasttoken")
(PUNCT "=")
(ID "token")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "vars")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "html")
(PUNCT "(")
(ID "einfo")
(PUNCT ",")
(ID "context")
(PUNCT "=")
(LIT 5)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return a nice HTML document describing a given traceback.")
(NEWLINE)
(ID "etype")
(PUNCT ",")
(ID "evalue")
(PUNCT ",")
(ID "etb")
(PUNCT "=")
(ID "einfo")
(NEWLINE)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "etype")
(PUNCT ",")
(ID "type")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "etype")
(PUNCT "=")
(ID "etype")
(PUNCT ".")
(ID "__name__")
(NEWLINE)
(DEDENT)
(ID "pyver")
(PUNCT "=")
(LIT "Python ")
(PUNCT "+")
(ID "sys")
(PUNCT ".")
(ID "version")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "+")
(LIT ": ")
(PUNCT "+")
(ID "sys")
(PUNCT ".")
(ID "executable")
(NEWLINE)
(ID "date")
(PUNCT "=")
(ID "time")
(PUNCT ".")
(ID "ctime")
(PUNCT "(")
(ID "time")
(PUNCT ".")
(ID "time")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "head")
(PUNCT "=")
(LIT "<body bgcolor=\"#f0f0f8\">")
(PUNCT "+")
(ID "pydoc")
(PUNCT ".")
(ID "html")
(PUNCT ".")
(ID "heading")
(PUNCT "(")
(LIT "<big><big>%s</big></big>")
(PUNCT "%")
(ID "strong")
(PUNCT "(")
(ID "pydoc")
(PUNCT ".")
(ID "html")
(PUNCT ".")
(ID "escape")
(PUNCT "(")
(ID "str")
(PUNCT "(")
(ID "etype")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(PUNCT ",")
(LIT "#ffffff")
(PUNCT ",")
(LIT "#6622aa")
(PUNCT ",")
(ID "pyver")
(PUNCT "+")
(LIT "<br>")
(PUNCT "+")
(ID "date")
(PUNCT ")")
(PUNCT "+")
(LIT "\n<p>A problem occurred in a Python script.  Here is the sequence of\nfunction calls leading up to the error, in the order they occurred.</p>")
(NEWLINE)
(ID "indent")
(PUNCT "=")
(LIT "<tt>")
(PUNCT "+")
(ID "small")
(PUNCT "(")
(LIT "&nbsp;")
(PUNCT "*")
(LIT 5)
(PUNCT ")")
(PUNCT "+")
(LIT "&nbsp;</tt>")
(NEWLINE)
(ID "frames")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "records")
(PUNCT "=")
(ID "inspect")
(PUNCT ".")
(ID "getinnerframes")
(PUNCT "(")
(ID "etb")
(PUNCT ",")
(ID "context")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "frame")
(PUNCT ",")
(ID "file")
(PUNCT ",")
(ID "lnum")
(PUNCT ",")
(ID "func")
(PUNCT ",")
(ID "lines")
(PUNCT ",")
(ID "index")
(KEYWORD in)
(ID "records")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "file")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "file")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "abspath")
(PUNCT "(")
(ID "file")
(PUNCT ")")
(NEWLINE)
(ID "link")
(PUNCT "=")
(LIT "<a href=\"file://%s\">%s</a>")
(PUNCT "%")
(PUNCT "(")
(ID "file")
(PUNCT ",")
(ID "pydoc")
(PUNCT ".")
(ID "html")
(PUNCT ".")
(ID "escape")
(PUNCT "(")
(ID "file")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "file")
(PUNCT "=")
(ID "link")
(PUNCT "=")
(LIT "?")
(NEWLINE)
(DEDENT)
(ID "args")
(PUNCT ",")
(ID "varargs")
(PUNCT ",")
(ID "varkw")
(PUNCT ",")
(ID "locals")
(PUNCT "=")
(ID "inspect")
(PUNCT ".")
(ID "getargvalues")
(PUNCT "(")
(ID "frame")
(PUNCT ")")
(NEWLINE)
(ID "call")
(PUNCT "=")
(LIT "")
(NEWLINE)
(KEYWORD if)
(ID "func")
(PUNCT "!=")
(LIT "?")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "call")
(PUNCT "=")
(LIT "in ")
(PUNCT "+")
(ID "strong")
(PUNCT "(")
(ID "func")
(PUNCT ")")
(PUNCT "+")
(ID "inspect")
(PUNCT ".")
(ID "formatargvalues")
(PUNCT "(")
(ID "args")
(PUNCT ",")
(ID "varargs")
(PUNCT ",")
(ID "varkw")
(PUNCT ",")
(ID "locals")
(PUNCT ",")
(ID "formatvalue")
(PUNCT "=")
(KEYWORD lambda)
(ID "value")
(PUNCT ":")
(LIT "=")
(PUNCT "+")
(ID "pydoc")
(PUNCT ".")
(ID "html")
(PUNCT ".")
(ID "repr")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "highlight")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(KEYWORD def)
(ID "reader")
(PUNCT "(")
(ID "lnum")
(PUNCT "=")
(PUNCT "[")
(ID "lnum")
(PUNCT "]")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "highlight")
(PUNCT "[")
(ID "lnum")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "]")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(KEYWORD return)
(ID "linecache")
(PUNCT ".")
(ID "getline")
(PUNCT "(")
(ID "file")
(PUNCT ",")
(ID "lnum")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(KEYWORD finally)
(PUNCT ":")
(ID "lnum")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "+=")
(LIT 1)
(NEWLINE)
(DEDENT)
(ID "vars")
(PUNCT "=")
(ID "scanvars")
(PUNCT "(")
(ID "reader")
(PUNCT ",")
(ID "frame")
(PUNCT ",")
(ID "locals")
(PUNCT ")")
(NEWLINE)
(ID "rows")
(PUNCT "=")
(PUNCT "[")
(LIT "<tr><td bgcolor=\"#d8bbff\">%s%s %s</td></tr>")
(PUNCT "%")
(PUNCT "(")
(LIT "<big>&nbsp;</big>")
(PUNCT ",")
(ID "link")
(PUNCT ",")
(ID "call")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "index")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "i")
(PUNCT "=")
(ID "lnum")
(PUNCT "-")
(ID "index")
(NEWLINE)
(KEYWORD for)
(ID "line")
(KEYWORD in)
(ID "lines")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "num")
(PUNCT "=")
(ID "small")
(PUNCT "(")
(LIT "&nbsp;")
(PUNCT "*")
(PUNCT "(")
(LIT 5)
(PUNCT "-")
(ID "len")
(PUNCT "(")
(ID "str")
(PUNCT "(")
(ID "i")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(PUNCT "+")
(ID "str")
(PUNCT "(")
(ID "i")
(PUNCT ")")
(PUNCT ")")
(PUNCT "+")
(LIT "&nbsp;")
(NEWLINE)
(KEYWORD if)
(ID "i")
(KEYWORD in)
(ID "highlight")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "line")
(PUNCT "=")
(LIT "<tt>=&gt;%s%s</tt>")
(PUNCT "%")
(PUNCT "(")
(ID "num")
(PUNCT ",")
(ID "pydoc")
(PUNCT ".")
(ID "html")
(PUNCT ".")
(ID "preformat")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "rows")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "<tr><td bgcolor=\"#ffccee\">%s</td></tr>")
(PUNCT "%")
(ID "line")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "line")
(PUNCT "=")
(LIT "<tt>&nbsp;&nbsp;%s%s</tt>")
(PUNCT "%")
(PUNCT "(")
(ID "num")
(PUNCT ",")
(ID "pydoc")
(PUNCT ".")
(ID "html")
(PUNCT ".")
(ID "preformat")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "rows")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "<tr><td>%s</td></tr>")
(PUNCT "%")
(ID "grey")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "i")
(PUNCT "+=")
(LIT 1)
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "done")
(PUNCT ",")
(ID "dump")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(PUNCT ",")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "name")
(PUNCT ",")
(ID "where")
(PUNCT ",")
(ID "value")
(KEYWORD in)
(ID "vars")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "name")
(KEYWORD in)
(ID "done")
(PUNCT ":")
(KEYWORD continue)
(NEWLINE)
(ID "done")
(PUNCT "[")
(ID "name")
(PUNCT "]")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(KEYWORD if)
(ID "value")
(KEYWORD is)
(KEYWORD not)
(ID "__UNDEF__")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "where")
(KEYWORD in)
(PUNCT "(")
(LIT "global")
(PUNCT ",")
(LIT "builtin")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "name")
(PUNCT "=")
(PUNCT "(")
(LIT "<em>%s</em> ")
(PUNCT "%")
(ID "where")
(PUNCT ")")
(PUNCT "+")
(ID "strong")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "where")
(PUNCT "==")
(LIT "local")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "name")
(PUNCT "=")
(ID "strong")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "name")
(PUNCT "=")
(ID "where")
(PUNCT "+")
(ID "strong")
(PUNCT "(")
(ID "name")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT ".")
(PUNCT ")")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "dump")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "%s&nbsp;= %s")
(PUNCT "%")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "pydoc")
(PUNCT ".")
(ID "html")
(PUNCT ".")
(ID "repr")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "dump")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "name")
(PUNCT "+")
(LIT " <em>undefined</em>")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "rows")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "<tr><td>%s</td></tr>")
(PUNCT "%")
(ID "small")
(PUNCT "(")
(ID "grey")
(PUNCT "(")
(LIT ", ")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "dump")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "frames")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "\n<table width=\"100%%\" cellspacing=0 cellpadding=0 border=0>\n%s</table>")
(PUNCT "%")
(LIT "\n")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "rows")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "exception")
(PUNCT "=")
(PUNCT "[")
(LIT "<p>%s: %s")
(PUNCT "%")
(PUNCT "(")
(ID "strong")
(PUNCT "(")
(ID "pydoc")
(PUNCT ".")
(ID "html")
(PUNCT ".")
(ID "escape")
(PUNCT "(")
(ID "str")
(PUNCT "(")
(ID "etype")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(PUNCT ",")
(ID "pydoc")
(PUNCT ".")
(ID "html")
(PUNCT ".")
(ID "escape")
(PUNCT "(")
(ID "str")
(PUNCT "(")
(ID "evalue")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "name")
(KEYWORD in)
(ID "dir")
(PUNCT "(")
(ID "evalue")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "name")
(PUNCT "[")
(PUNCT ":")
(LIT 1)
(PUNCT "]")
(PUNCT "==")
(LIT "_")
(PUNCT ":")
(KEYWORD continue)
(NEWLINE)
(ID "value")
(PUNCT "=")
(ID "pydoc")
(PUNCT ".")
(ID "html")
(PUNCT ".")
(ID "repr")
(PUNCT "(")
(ID "getattr")
(PUNCT "(")
(ID "evalue")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "exception")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "\n<br>%s%s&nbsp;=\n%s")
(PUNCT "%")
(PUNCT "(")
(ID "indent")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "head")
(PUNCT "+")
(LIT "")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "frames")
(PUNCT ")")
(PUNCT "+")
(LIT "")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "exception")
(PUNCT ")")
(PUNCT "+")
(LIT "\n\n\n<!-- The above is a description of an error in a Python program, formatted\n     for a Web browser because the 'cgitb' module was enabled.  In case you\n     are not reading this in a Web browser, here is the original traceback:\n\n%s\n-->\n")
(PUNCT "%")
(ID "pydoc")
(PUNCT ".")
(ID "html")
(PUNCT ".")
(ID "escape")
(PUNCT "(")
(LIT "")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "traceback")
(PUNCT ".")
(ID "format_exception")
(PUNCT "(")
(ID "etype")
(PUNCT ",")
(ID "evalue")
(PUNCT ",")
(ID "etb")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "text")
(PUNCT "(")
(ID "einfo")
(PUNCT ",")
(ID "context")
(PUNCT "=")
(LIT 5)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return a plain text document describing a given traceback.")
(NEWLINE)
(ID "etype")
(PUNCT ",")
(ID "evalue")
(PUNCT ",")
(ID "etb")
(PUNCT "=")
(ID "einfo")
(NEWLINE)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "etype")
(PUNCT ",")
(ID "type")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "etype")
(PUNCT "=")
(ID "etype")
(PUNCT ".")
(ID "__name__")
(NEWLINE)
(DEDENT)
(ID "pyver")
(PUNCT "=")
(LIT "Python ")
(PUNCT "+")
(ID "sys")
(PUNCT ".")
(ID "version")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "+")
(LIT ": ")
(PUNCT "+")
(ID "sys")
(PUNCT ".")
(ID "executable")
(NEWLINE)
(ID "date")
(PUNCT "=")
(ID "time")
(PUNCT ".")
(ID "ctime")
(PUNCT "(")
(ID "time")
(PUNCT ".")
(ID "time")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "head")
(PUNCT "=")
(LIT "%s\n%s\n%s\n")
(PUNCT "%")
(PUNCT "(")
(ID "str")
(PUNCT "(")
(ID "etype")
(PUNCT ")")
(PUNCT ",")
(ID "pyver")
(PUNCT ",")
(ID "date")
(PUNCT ")")
(PUNCT "+")
(LIT "\nA problem occurred in a Python script.  Here is the sequence of\nfunction calls leading up to the error, in the order they occurred.\n")
(NEWLINE)
(ID "frames")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "records")
(PUNCT "=")
(ID "inspect")
(PUNCT ".")
(ID "getinnerframes")
(PUNCT "(")
(ID "etb")
(PUNCT ",")
(ID "context")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "frame")
(PUNCT ",")
(ID "file")
(PUNCT ",")
(ID "lnum")
(PUNCT ",")
(ID "func")
(PUNCT ",")
(ID "lines")
(PUNCT ",")
(ID "index")
(KEYWORD in)
(ID "records")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "file")
(PUNCT "=")
(ID "file")
(KEYWORD and)
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "abspath")
(PUNCT "(")
(ID "file")
(PUNCT ")")
(KEYWORD or)
(LIT "?")
(NEWLINE)
(ID "args")
(PUNCT ",")
(ID "varargs")
(PUNCT ",")
(ID "varkw")
(PUNCT ",")
(ID "locals")
(PUNCT "=")
(ID "inspect")
(PUNCT ".")
(ID "getargvalues")
(PUNCT "(")
(ID "frame")
(PUNCT ")")
(NEWLINE)
(ID "call")
(PUNCT "=")
(LIT "")
(NEWLINE)
(KEYWORD if)
(ID "func")
(PUNCT "!=")
(LIT "?")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "call")
(PUNCT "=")
(LIT "in ")
(PUNCT "+")
(ID "func")
(PUNCT "+")
(ID "inspect")
(PUNCT ".")
(ID "formatargvalues")
(PUNCT "(")
(ID "args")
(PUNCT ",")
(ID "varargs")
(PUNCT ",")
(ID "varkw")
(PUNCT ",")
(ID "locals")
(PUNCT ",")
(ID "formatvalue")
(PUNCT "=")
(KEYWORD lambda)
(ID "value")
(PUNCT ":")
(LIT "=")
(PUNCT "+")
(ID "pydoc")
(PUNCT ".")
(ID "text")
(PUNCT ".")
(ID "repr")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "highlight")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(KEYWORD def)
(ID "reader")
(PUNCT "(")
(ID "lnum")
(PUNCT "=")
(PUNCT "[")
(ID "lnum")
(PUNCT "]")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "highlight")
(PUNCT "[")
(ID "lnum")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "]")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(KEYWORD return)
(ID "linecache")
(PUNCT ".")
(ID "getline")
(PUNCT "(")
(ID "file")
(PUNCT ",")
(ID "lnum")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(KEYWORD finally)
(PUNCT ":")
(ID "lnum")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "+=")
(LIT 1)
(NEWLINE)
(DEDENT)
(ID "vars")
(PUNCT "=")
(ID "scanvars")
(PUNCT "(")
(ID "reader")
(PUNCT ",")
(ID "frame")
(PUNCT ",")
(ID "locals")
(PUNCT ")")
(NEWLINE)
(ID "rows")
(PUNCT "=")
(PUNCT "[")
(LIT " %s %s")
(PUNCT "%")
(PUNCT "(")
(ID "file")
(PUNCT ",")
(ID "call")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "index")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "i")
(PUNCT "=")
(ID "lnum")
(PUNCT "-")
(ID "index")
(NEWLINE)
(KEYWORD for)
(ID "line")
(KEYWORD in)
(ID "lines")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "num")
(PUNCT "=")
(LIT "%5d ")
(PUNCT "%")
(ID "i")
(NEWLINE)
(ID "rows")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "num")
(PUNCT "+")
(ID "line")
(PUNCT ".")
(ID "rstrip")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "i")
(PUNCT "+=")
(LIT 1)
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "done")
(PUNCT ",")
(ID "dump")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(PUNCT ",")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "name")
(PUNCT ",")
(ID "where")
(PUNCT ",")
(ID "value")
(KEYWORD in)
(ID "vars")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "name")
(KEYWORD in)
(ID "done")
(PUNCT ":")
(KEYWORD continue)
(NEWLINE)
(ID "done")
(PUNCT "[")
(ID "name")
(PUNCT "]")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(KEYWORD if)
(ID "value")
(KEYWORD is)
(KEYWORD not)
(ID "__UNDEF__")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "where")
(PUNCT "==")
(LIT "global")
(PUNCT ":")
(ID "name")
(PUNCT "=")
(LIT "global ")
(PUNCT "+")
(ID "name")
(NEWLINE)
(KEYWORD elif)
(ID "where")
(PUNCT "!=")
(LIT "local")
(PUNCT ":")
(ID "name")
(PUNCT "=")
(ID "where")
(PUNCT "+")
(ID "name")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT ".")
(PUNCT ")")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(ID "dump")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "%s = %s")
(PUNCT "%")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "pydoc")
(PUNCT ".")
(ID "text")
(PUNCT ".")
(ID "repr")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "dump")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "name")
(PUNCT "+")
(LIT " undefined")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "rows")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "\n")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "dump")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "frames")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "\n%s\n")
(PUNCT "%")
(LIT "\n")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "rows")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "exception")
(PUNCT "=")
(PUNCT "[")
(LIT "%s: %s")
(PUNCT "%")
(PUNCT "(")
(ID "str")
(PUNCT "(")
(ID "etype")
(PUNCT ")")
(PUNCT ",")
(ID "str")
(PUNCT "(")
(ID "evalue")
(PUNCT ")")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "name")
(KEYWORD in)
(ID "dir")
(PUNCT "(")
(ID "evalue")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "value")
(PUNCT "=")
(ID "pydoc")
(PUNCT ".")
(ID "text")
(PUNCT ".")
(ID "repr")
(PUNCT "(")
(ID "getattr")
(PUNCT "(")
(ID "evalue")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "exception")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "\n%s%s = %s")
(PUNCT "%")
(PUNCT "(")
(LIT " ")
(PUNCT "*")
(LIT 4)
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "head")
(PUNCT "+")
(LIT "")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "frames")
(PUNCT ")")
(PUNCT "+")
(LIT "")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "exception")
(PUNCT ")")
(PUNCT "+")
(LIT "\n\nThe above is a description of an error in a Python program.  Here is\nthe original traceback:\n\n%s\n")
(PUNCT "%")
(LIT "")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "traceback")
(PUNCT ".")
(ID "format_exception")
(PUNCT "(")
(ID "etype")
(PUNCT ",")
(ID "evalue")
(PUNCT ",")
(ID "etb")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "Hook")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A hook to replace sys.excepthook that shows tracebacks in HTML.")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "display")
(PUNCT "=")
(LIT 1)
(PUNCT ",")
(ID "logdir")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "context")
(PUNCT "=")
(LIT 5)
(PUNCT ",")
(ID "file")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "format")
(PUNCT "=")
(LIT "html")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "display")
(PUNCT "=")
(ID "display")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "logdir")
(PUNCT "=")
(ID "logdir")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "context")
(PUNCT "=")
(ID "context")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "file")
(PUNCT "=")
(ID "file")
(KEYWORD or)
(ID "sys")
(PUNCT ".")
(ID "stdout")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "format")
(PUNCT "=")
(ID "format")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__call__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "etype")
(PUNCT ",")
(ID "evalue")
(PUNCT ",")
(ID "etb")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "handle")
(PUNCT "(")
(PUNCT "(")
(ID "etype")
(PUNCT ",")
(ID "evalue")
(PUNCT ",")
(ID "etb")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "handle")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "info")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "info")
(PUNCT "=")
(ID "info")
(KEYWORD or)
(ID "sys")
(PUNCT ".")
(ID "exc_info")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "format")
(PUNCT "==")
(LIT "html")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "file")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "reset")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "formatter")
(PUNCT "=")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "format")
(PUNCT "==")
(LIT "html")
(PUNCT ")")
(KEYWORD and)
(ID "html")
(KEYWORD or)
(ID "text")
(NEWLINE)
(ID "plain")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "doc")
(PUNCT "=")
(ID "formatter")
(PUNCT "(")
(ID "info")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "context")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "doc")
(PUNCT "=")
(LIT "")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "traceback")
(PUNCT ".")
(ID "format_exception")
(PUNCT "(")
(PUNCT "*")
(ID "info")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "plain")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "display")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "plain")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "doc")
(PUNCT "=")
(ID "doc")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(LIT "&")
(PUNCT ",")
(LIT "&amp;")
(PUNCT ")")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(LIT "<")
(PUNCT ",")
(LIT "&lt;")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "file")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(LIT "<pre>")
(PUNCT "+")
(ID "doc")
(PUNCT "+")
(LIT "</pre>\n")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "file")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "doc")
(PUNCT "+")
(LIT "\n")
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
(ID "file")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(LIT "<p>A problem occurred in a Python script.\n")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "logdir")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "suffix")
(PUNCT "=")
(PUNCT "[")
(LIT ".txt")
(PUNCT ",")
(LIT ".html")
(PUNCT "]")
(PUNCT "[")
(ID "self")
(PUNCT ".")
(ID "format")
(PUNCT "==")
(LIT "html")
(PUNCT "]")
(NEWLINE)
(PUNCT "(")
(ID "fd")
(PUNCT ",")
(ID "path")
(PUNCT ")")
(PUNCT "=")
(ID "tempfile")
(PUNCT ".")
(ID "mkstemp")
(PUNCT "(")
(ID "suffix")
(PUNCT "=")
(ID "suffix")
(PUNCT ",")
(ID "dir")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "logdir")
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "file")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "fdopen")
(PUNCT "(")
(ID "fd")
(PUNCT ",")
(LIT "w")
(PUNCT ")")
(NEWLINE)
(ID "file")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "doc")
(PUNCT ")")
(NEWLINE)
(ID "file")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "msg")
(PUNCT "=")
(LIT "%s contains the description of this error.")
(PUNCT "%")
(ID "path")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "msg")
(PUNCT "=")
(LIT "Tried to save traceback to %s, but failed.")
(PUNCT "%")
(ID "path")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "format")
(PUNCT "==")
(LIT "html")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "file")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(LIT "<p>%s</p>\n")
(PUNCT "%")
(ID "msg")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "file")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "msg")
(PUNCT "+")
(LIT "\n")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "file")
(PUNCT ".")
(ID "flush")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(PUNCT ":")
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "handler")
(PUNCT "=")
(ID "Hook")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "handle")
(NEWLINE)
(KEYWORD def)
(ID "enable")
(PUNCT "(")
(ID "display")
(PUNCT "=")
(LIT 1)
(PUNCT ",")
(ID "logdir")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "context")
(PUNCT "=")
(LIT 5)
(PUNCT ",")
(ID "format")
(PUNCT "=")
(LIT "html")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Install an exception handler that formats tracebacks as HTML.\n\n    The optional argument 'display' can be set to 0 to suppress sending the\n    traceback to the browser, and 'logdir' can be set to a directory to cause\n    tracebacks to be written to files there.")
(NEWLINE)
(ID "sys")
(PUNCT ".")
(ID "excepthook")
(PUNCT "=")
(ID "Hook")
(PUNCT "(")
(ID "display")
(PUNCT "=")
(ID "display")
(PUNCT ",")
(ID "logdir")
(PUNCT "=")
(ID "logdir")
(PUNCT ",")
(ID "context")
(PUNCT "=")
(ID "context")
(PUNCT ",")
(ID "format")
(PUNCT "=")
(ID "format")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ENDMARKER)