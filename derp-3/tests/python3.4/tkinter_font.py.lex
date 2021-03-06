(ID "__version__")
(PUNCT "=")
(LIT "0.9")
(NEWLINE)
(KEYWORD import)
(ID "itertools")
(NEWLINE)
(KEYWORD import)
(ID "tkinter")
(NEWLINE)
(ID "NORMAL")
(PUNCT "=")
(LIT "normal")
(NEWLINE)
(ID "ROMAN")
(PUNCT "=")
(LIT "roman")
(NEWLINE)
(ID "BOLD")
(PUNCT "=")
(LIT "bold")
(NEWLINE)
(ID "ITALIC")
(PUNCT "=")
(LIT "italic")
(NEWLINE)
(KEYWORD def)
(ID "nametofont")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Given the name of a tk named font, returns a Font representation.\n    ")
(NEWLINE)
(KEYWORD return)
(ID "Font")
(PUNCT "(")
(ID "name")
(PUNCT "=")
(ID "name")
(PUNCT ",")
(ID "exists")
(PUNCT "=")
(KEYWORD True)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "Font")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Represents a named font.\n\n    Constructor options are:\n\n    font -- font specifier (name, system font, or (family, size, style)-tuple)\n    name -- name to use for this font configuration (defaults to a unique name)\n    exists -- does a named font by this name already exist?\n       Creates a new named font if False, points to the existing font if True.\n       Raises _tkinter.TclError if the assertion is false.\n\n       the following are ignored if font is specified:\n\n    family -- font 'family', e.g. Courier, Times, Helvetica\n    size -- font size in points\n    weight -- font thickness: NORMAL, BOLD\n    slant -- font slant: ROMAN, ITALIC\n    underline -- font underlining: false (0), true (1)\n    overstrike -- font strikeout: false (0), true (1)\n\n    ")
(NEWLINE)
(ID "counter")
(PUNCT "=")
(ID "itertools")
(PUNCT ".")
(ID "count")
(PUNCT "(")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "_set")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "kw")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "options")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "k")
(PUNCT ",")
(ID "v")
(KEYWORD in)
(ID "kw")
(PUNCT ".")
(ID "items")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "options")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "-")
(PUNCT "+")
(ID "k")
(PUNCT ")")
(NEWLINE)
(ID "options")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "str")
(PUNCT "(")
(ID "v")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "tuple")
(PUNCT "(")
(ID "options")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_get")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "args")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "options")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "k")
(KEYWORD in)
(ID "args")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "options")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "-")
(PUNCT "+")
(ID "k")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "tuple")
(PUNCT "(")
(ID "options")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_mkdict")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "args")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "options")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(KEYWORD for)
(ID "i")
(KEYWORD in)
(ID "range")
(PUNCT "(")
(LIT 0)
(PUNCT ",")
(ID "len")
(PUNCT "(")
(ID "args")
(PUNCT ")")
(PUNCT ",")
(LIT 2)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "options")
(PUNCT "[")
(ID "args")
(PUNCT "[")
(ID "i")
(PUNCT "]")
(PUNCT "[")
(LIT 1)
(PUNCT ":")
(PUNCT "]")
(PUNCT "]")
(PUNCT "=")
(ID "args")
(PUNCT "[")
(ID "i")
(PUNCT "+")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "options")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "root")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "font")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "name")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "exists")
(PUNCT "=")
(KEYWORD False)
(PUNCT ",")
(PUNCT "**")
(ID "options")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(ID "root")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "root")
(PUNCT "=")
(ID "tkinter")
(PUNCT ".")
(ID "_default_root")
(NEWLINE)
(DEDENT)
(ID "tk")
(PUNCT "=")
(ID "getattr")
(PUNCT "(")
(ID "root")
(PUNCT ",")
(LIT "tk")
(PUNCT ",")
(ID "root")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "font")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "font")
(PUNCT "=")
(ID "tk")
(PUNCT ".")
(ID "splitlist")
(PUNCT "(")
(ID "tk")
(PUNCT ".")
(ID "call")
(PUNCT "(")
(LIT "font")
(PUNCT ",")
(LIT "actual")
(PUNCT ",")
(ID "font")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "font")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_set")
(PUNCT "(")
(ID "options")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "name")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "name")
(PUNCT "=")
(LIT "font")
(PUNCT "+")
(ID "str")
(PUNCT "(")
(ID "next")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "counter")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "name")
(PUNCT "=")
(ID "name")
(NEWLINE)
(KEYWORD if)
(ID "exists")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "delete_font")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "name")
(KEYWORD not)
(KEYWORD in)
(ID "tk")
(PUNCT ".")
(ID "splitlist")
(PUNCT "(")
(ID "tk")
(PUNCT ".")
(ID "call")
(PUNCT "(")
(LIT "font")
(PUNCT ",")
(LIT "names")
(PUNCT ")")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "tkinter")
(PUNCT ".")
(ID "_tkinter")
(PUNCT ".")
(ID "TclError")
(PUNCT "(")
(LIT "named font %s does not already exist")
(PUNCT "%")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "name")
(PUNCT ",")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "font")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "tk")
(PUNCT ".")
(ID "call")
(PUNCT "(")
(LIT "font")
(PUNCT ",")
(LIT "configure")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "name")
(PUNCT ",")
(PUNCT "*")
(ID "font")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "tk")
(PUNCT ".")
(ID "call")
(PUNCT "(")
(LIT "font")
(PUNCT ",")
(LIT "create")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "name")
(PUNCT ",")
(PUNCT "*")
(ID "font")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "delete_font")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_tk")
(PUNCT "=")
(ID "tk")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_split")
(PUNCT "=")
(ID "tk")
(PUNCT ".")
(ID "splitlist")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_call")
(PUNCT "=")
(ID "tk")
(PUNCT ".")
(ID "call")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__str__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "name")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__eq__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "other")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "isinstance")
(PUNCT "(")
(ID "other")
(PUNCT ",")
(ID "Font")
(PUNCT ")")
(KEYWORD and)
(ID "self")
(PUNCT ".")
(ID "name")
(PUNCT "==")
(ID "other")
(PUNCT ".")
(ID "name")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__getitem__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "key")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "cget")
(PUNCT "(")
(ID "key")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__setitem__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "key")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "configure")
(PUNCT "(")
(PUNCT "**")
(PUNCT "{")
(ID "key")
(PUNCT ":")
(ID "value")
(PUNCT "}")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__del__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "delete_font")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_call")
(PUNCT "(")
(LIT "font")
(PUNCT ",")
(LIT "delete")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD except)
(PUNCT "(")
(ID "KeyboardInterrupt")
(PUNCT ",")
(ID "SystemExit")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "Exception")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "copy")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return a distinct copy of the current font")
(NEWLINE)
(KEYWORD return)
(ID "Font")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_tk")
(PUNCT ",")
(PUNCT "**")
(ID "self")
(PUNCT ".")
(ID "actual")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "actual")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "option")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "displayof")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return actual font attributes")
(NEWLINE)
(ID "args")
(PUNCT "=")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "displayof")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "args")
(PUNCT "=")
(PUNCT "(")
(LIT "-displayof")
(PUNCT ",")
(ID "displayof")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "option")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "args")
(PUNCT "=")
(ID "args")
(PUNCT "+")
(PUNCT "(")
(LIT "-")
(PUNCT "+")
(ID "option")
(PUNCT ",")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_call")
(PUNCT "(")
(LIT "font")
(PUNCT ",")
(LIT "actual")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "name")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_mkdict")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_split")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_call")
(PUNCT "(")
(LIT "font")
(PUNCT ",")
(LIT "actual")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "name")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "cget")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "option")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Get font attribute")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_call")
(PUNCT "(")
(LIT "font")
(PUNCT ",")
(LIT "config")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "name")
(PUNCT ",")
(LIT "-")
(PUNCT "+")
(ID "option")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "config")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(PUNCT "**")
(ID "options")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Modify font attributes")
(NEWLINE)
(KEYWORD if)
(ID "options")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_call")
(PUNCT "(")
(LIT "font")
(PUNCT ",")
(LIT "config")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "name")
(PUNCT ",")
(PUNCT "*")
(ID "self")
(PUNCT ".")
(ID "_set")
(PUNCT "(")
(ID "options")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_mkdict")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_split")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_call")
(PUNCT "(")
(LIT "font")
(PUNCT ",")
(LIT "config")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "name")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "configure")
(PUNCT "=")
(ID "config")
(NEWLINE)
(KEYWORD def)
(ID "measure")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "text")
(PUNCT ",")
(ID "displayof")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return text width")
(NEWLINE)
(ID "args")
(PUNCT "=")
(PUNCT "(")
(ID "text")
(PUNCT ",")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "displayof")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "args")
(PUNCT "=")
(PUNCT "(")
(LIT "-displayof")
(PUNCT ",")
(ID "displayof")
(PUNCT ",")
(ID "text")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "int")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_call")
(PUNCT "(")
(LIT "font")
(PUNCT ",")
(LIT "measure")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "name")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "metrics")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(PUNCT "*")
(ID "options")
(PUNCT ",")
(PUNCT "**")
(ID "kw")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return font metrics.\n\n        For best performance, create a dummy widget\n        using this font before calling this method.")
(NEWLINE)
(ID "args")
(PUNCT "=")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "displayof")
(PUNCT "=")
(ID "kw")
(PUNCT ".")
(ID "pop")
(PUNCT "(")
(LIT "displayof")
(PUNCT ",")
(KEYWORD None)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "displayof")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "args")
(PUNCT "=")
(PUNCT "(")
(LIT "-displayof")
(PUNCT ",")
(ID "displayof")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "options")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "args")
(PUNCT "=")
(ID "args")
(PUNCT "+")
(ID "self")
(PUNCT ".")
(ID "_get")
(PUNCT "(")
(ID "options")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "int")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_call")
(PUNCT "(")
(LIT "font")
(PUNCT ",")
(LIT "metrics")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "name")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "res")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_split")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_call")
(PUNCT "(")
(LIT "font")
(PUNCT ",")
(LIT "metrics")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "name")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "options")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(KEYWORD for)
(ID "i")
(KEYWORD in)
(ID "range")
(PUNCT "(")
(LIT 0)
(PUNCT ",")
(ID "len")
(PUNCT "(")
(ID "res")
(PUNCT ")")
(PUNCT ",")
(LIT 2)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "options")
(PUNCT "[")
(ID "res")
(PUNCT "[")
(ID "i")
(PUNCT "]")
(PUNCT "[")
(LIT 1)
(PUNCT ":")
(PUNCT "]")
(PUNCT "]")
(PUNCT "=")
(ID "int")
(PUNCT "(")
(ID "res")
(PUNCT "[")
(ID "i")
(PUNCT "+")
(LIT 1)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "options")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "families")
(PUNCT "(")
(ID "root")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "displayof")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Get font families (as a tuple)")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "root")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "root")
(PUNCT "=")
(ID "tkinter")
(PUNCT ".")
(ID "_default_root")
(NEWLINE)
(DEDENT)
(ID "args")
(PUNCT "=")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "displayof")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "args")
(PUNCT "=")
(PUNCT "(")
(LIT "-displayof")
(PUNCT ",")
(ID "displayof")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "root")
(PUNCT ".")
(ID "tk")
(PUNCT ".")
(ID "splitlist")
(PUNCT "(")
(ID "root")
(PUNCT ".")
(ID "tk")
(PUNCT ".")
(ID "call")
(PUNCT "(")
(LIT "font")
(PUNCT ",")
(LIT "families")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "names")
(PUNCT "(")
(ID "root")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Get names of defined fonts (as a tuple)")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "root")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "root")
(PUNCT "=")
(ID "tkinter")
(PUNCT ".")
(ID "_default_root")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "root")
(PUNCT ".")
(ID "tk")
(PUNCT ".")
(ID "splitlist")
(PUNCT "(")
(ID "root")
(PUNCT ".")
(ID "tk")
(PUNCT ".")
(ID "call")
(PUNCT "(")
(LIT "font")
(PUNCT ",")
(LIT "names")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "__name__")
(PUNCT "==")
(LIT "__main__")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "root")
(PUNCT "=")
(ID "tkinter")
(PUNCT ".")
(ID "Tk")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "f")
(PUNCT "=")
(ID "Font")
(PUNCT "(")
(ID "family")
(PUNCT "=")
(LIT "times")
(PUNCT ",")
(ID "size")
(PUNCT "=")
(LIT 30)
(PUNCT ",")
(ID "weight")
(PUNCT "=")
(ID "NORMAL")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(ID "f")
(PUNCT ".")
(ID "actual")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(ID "f")
(PUNCT ".")
(ID "actual")
(PUNCT "(")
(LIT "family")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(ID "f")
(PUNCT ".")
(ID "actual")
(PUNCT "(")
(LIT "weight")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(ID "f")
(PUNCT ".")
(ID "config")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(ID "f")
(PUNCT ".")
(ID "cget")
(PUNCT "(")
(LIT "family")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(ID "f")
(PUNCT ".")
(ID "cget")
(PUNCT "(")
(LIT "weight")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(ID "names")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(ID "f")
(PUNCT ".")
(ID "measure")
(PUNCT "(")
(LIT "hello")
(PUNCT ")")
(PUNCT ",")
(ID "f")
(PUNCT ".")
(ID "metrics")
(PUNCT "(")
(LIT "linespace")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(ID "f")
(PUNCT ".")
(ID "metrics")
(PUNCT "(")
(ID "displayof")
(PUNCT "=")
(ID "root")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "f")
(PUNCT "=")
(ID "Font")
(PUNCT "(")
(ID "font")
(PUNCT "=")
(PUNCT "(")
(LIT "Courier")
(PUNCT ",")
(LIT 20)
(PUNCT ",")
(LIT "bold")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(ID "f")
(PUNCT ".")
(ID "measure")
(PUNCT "(")
(LIT "hello")
(PUNCT ")")
(PUNCT ",")
(ID "f")
(PUNCT ".")
(ID "metrics")
(PUNCT "(")
(LIT "linespace")
(PUNCT ",")
(ID "displayof")
(PUNCT "=")
(ID "root")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "w")
(PUNCT "=")
(ID "tkinter")
(PUNCT ".")
(ID "Label")
(PUNCT "(")
(ID "root")
(PUNCT ",")
(ID "text")
(PUNCT "=")
(LIT "Hello, world")
(PUNCT ",")
(ID "font")
(PUNCT "=")
(ID "f")
(PUNCT ")")
(NEWLINE)
(ID "w")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "w")
(PUNCT "=")
(ID "tkinter")
(PUNCT ".")
(ID "Button")
(PUNCT "(")
(ID "root")
(PUNCT ",")
(ID "text")
(PUNCT "=")
(LIT "Quit!")
(PUNCT ",")
(ID "command")
(PUNCT "=")
(ID "root")
(PUNCT ".")
(ID "destroy")
(PUNCT ")")
(NEWLINE)
(ID "w")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "fb")
(PUNCT "=")
(ID "Font")
(PUNCT "(")
(ID "font")
(PUNCT "=")
(ID "w")
(PUNCT "[")
(LIT "font")
(PUNCT "]")
(PUNCT ")")
(PUNCT ".")
(ID "copy")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "fb")
(PUNCT ".")
(ID "config")
(PUNCT "(")
(ID "weight")
(PUNCT "=")
(ID "BOLD")
(PUNCT ")")
(NEWLINE)
(ID "w")
(PUNCT ".")
(ID "config")
(PUNCT "(")
(ID "font")
(PUNCT "=")
(ID "fb")
(PUNCT ")")
(NEWLINE)
(ID "tkinter")
(PUNCT ".")
(ID "mainloop")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ENDMARKER)
