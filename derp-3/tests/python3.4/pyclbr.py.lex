(LIT "Parse a Python module and describe its classes and methods.\n\nParse enough of a Python file to recognize imports and class and\nmethod definitions, and to find out the superclasses of a class.\n\nThe interface consists of a single function:\n        readmodule_ex(module [, path])\nwhere module is the name of a Python module, and path is an optional\nlist of directories where the module is to be searched.  If present,\npath is prepended to the system search path sys.path.  The return\nvalue is a dictionary.  The keys of the dictionary are the names of\nthe classes defined in the module (including classes that are defined\nvia the from XXX import YYY construct).  The values are class\ninstances of the class Class defined here.  One special key/value pair\nis present for packages: the key '__path__' has a list as its value\nwhich contains the package search path.\n\nA class is described by the class Class in this module.  Instances\nof this class have the following instance variables:\n        module -- the module name\n        name -- the name of the class\n        super -- a list of super classes (Class instances)\n        methods -- a dictionary of methods\n        file -- the file in which the class was defined\n        lineno -- the line in the file on which the class statement occurred\nThe dictionary of methods uses the method names as keys and the line\nnumbers on which the method was defined as values.\nIf the name of a super class is not recognized, the corresponding\nentry in the list of super classes is not a class instance but a\nstring giving the name of the super class.  Since import statements\nare recognized and imported modules are scanned as well, this\nshouldn't happen often.\n\nA function is described by the class Function in this module.\nInstances of this class have the following instance variables:\n        module -- the module name\n        name -- the name of the class\n        file -- the file in which the class was defined\n        lineno -- the line in the file on which the class statement occurred\n")
(NEWLINE)
(KEYWORD import)
(ID "io")
(NEWLINE)
(KEYWORD import)
(ID "os")
(NEWLINE)
(KEYWORD import)
(ID "sys")
(NEWLINE)
(KEYWORD import)
(ID "importlib")
(PUNCT ".")
(ID "util")
(NEWLINE)
(KEYWORD import)
(ID "tokenize")
(NEWLINE)
(KEYWORD from)
(ID "token")
(KEYWORD import)
(ID "NAME")
(PUNCT ",")
(ID "DEDENT")
(PUNCT ",")
(ID "OP")
(NEWLINE)
(KEYWORD from)
(ID "operator")
(KEYWORD import)
(ID "itemgetter")
(NEWLINE)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "readmodule")
(PUNCT ",")
(LIT "readmodule_ex")
(PUNCT ",")
(LIT "Class")
(PUNCT ",")
(LIT "Function")
(PUNCT "]")
(NEWLINE)
(ID "_modules")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(KEYWORD class)
(ID "Class")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Class to represent a Python class.")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "module")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "super")
(PUNCT ",")
(ID "file")
(PUNCT ",")
(ID "lineno")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "module")
(PUNCT "=")
(ID "module")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "name")
(PUNCT "=")
(ID "name")
(NEWLINE)
(KEYWORD if)
(ID "super")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "super")
(PUNCT "=")
(ID "super")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "methods")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "file")
(PUNCT "=")
(ID "file")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "lineno")
(PUNCT "=")
(ID "lineno")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_addmethod")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "lineno")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "methods")
(PUNCT "[")
(ID "name")
(PUNCT "]")
(PUNCT "=")
(ID "lineno")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "Function")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Class to represent a top-level Python function")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "module")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "file")
(PUNCT ",")
(ID "lineno")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "module")
(PUNCT "=")
(ID "module")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "name")
(PUNCT "=")
(ID "name")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "file")
(PUNCT "=")
(ID "file")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "lineno")
(PUNCT "=")
(ID "lineno")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "readmodule")
(PUNCT "(")
(ID "module")
(PUNCT ",")
(ID "path")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Backwards compatible interface.\n\n    Call readmodule_ex() and then only keep Class objects from the\n    resulting dictionary.")
(NEWLINE)
(ID "res")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(KEYWORD for)
(ID "key")
(PUNCT ",")
(ID "value")
(KEYWORD in)
(ID "_readmodule")
(PUNCT "(")
(ID "module")
(PUNCT ",")
(ID "path")
(KEYWORD or)
(PUNCT "[")
(PUNCT "]")
(PUNCT ")")
(PUNCT ".")
(ID "items")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "value")
(PUNCT ",")
(ID "Class")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "res")
(PUNCT "[")
(ID "key")
(PUNCT "]")
(PUNCT "=")
(ID "value")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "res")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "readmodule_ex")
(PUNCT "(")
(ID "module")
(PUNCT ",")
(ID "path")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Read a module file and return a dictionary of classes.\n\n    Search for MODULE in PATH and sys.path, read and parse the\n    module and return a dictionary with one entry for each class\n    found in the module.\n    ")
(NEWLINE)
(KEYWORD return)
(ID "_readmodule")
(PUNCT "(")
(ID "module")
(PUNCT ",")
(ID "path")
(KEYWORD or)
(PUNCT "[")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_readmodule")
(PUNCT "(")
(ID "module")
(PUNCT ",")
(ID "path")
(PUNCT ",")
(ID "inpackage")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Do the hard work for readmodule[_ex].\n\n    If INPACKAGE is given, it must be the dotted name of the package in\n    which we are searching for a submodule, and then PATH must be the\n    package search path; otherwise, we are searching for a top-level\n    module, and PATH is combined with sys.path.\n    ")
(NEWLINE)
(KEYWORD if)
(ID "inpackage")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "fullmodule")
(PUNCT "=")
(LIT "%s.%s")
(PUNCT "%")
(PUNCT "(")
(ID "inpackage")
(PUNCT ",")
(ID "module")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "fullmodule")
(PUNCT "=")
(ID "module")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "fullmodule")
(KEYWORD in)
(ID "_modules")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "_modules")
(PUNCT "[")
(ID "fullmodule")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(ID "dict")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(KEYWORD if)
(ID "module")
(KEYWORD in)
(ID "sys")
(PUNCT ".")
(ID "builtin_module_names")
(KEYWORD and)
(ID "inpackage")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "_modules")
(PUNCT "[")
(ID "module")
(PUNCT "]")
(PUNCT "=")
(ID "dict")
(NEWLINE)
(KEYWORD return)
(ID "dict")
(NEWLINE)
(DEDENT)
(ID "i")
(PUNCT "=")
(ID "module")
(PUNCT ".")
(ID "rfind")
(PUNCT "(")
(LIT ".")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "i")
(PUNCT ">=")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "package")
(PUNCT "=")
(ID "module")
(PUNCT "[")
(PUNCT ":")
(ID "i")
(PUNCT "]")
(NEWLINE)
(ID "submodule")
(PUNCT "=")
(ID "module")
(PUNCT "[")
(ID "i")
(PUNCT "+")
(LIT 1)
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(ID "parent")
(PUNCT "=")
(ID "_readmodule")
(PUNCT "(")
(ID "package")
(PUNCT ",")
(ID "path")
(PUNCT ",")
(ID "inpackage")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "inpackage")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "package")
(PUNCT "=")
(LIT "%s.%s")
(PUNCT "%")
(PUNCT "(")
(ID "inpackage")
(PUNCT ",")
(ID "package")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(LIT "__path__")
(KEYWORD in)
(ID "parent")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ImportError")
(PUNCT "(")
(LIT "No package named {}")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "package")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "_readmodule")
(PUNCT "(")
(ID "submodule")
(PUNCT ",")
(ID "parent")
(PUNCT "[")
(LIT "__path__")
(PUNCT "]")
(PUNCT ",")
(ID "package")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "f")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(KEYWORD if)
(ID "inpackage")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "search_path")
(PUNCT "=")
(ID "path")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "search_path")
(PUNCT "=")
(ID "path")
(PUNCT "+")
(ID "sys")
(PUNCT ".")
(ID "path")
(NEWLINE)
(DEDENT)
(ID "spec")
(PUNCT "=")
(ID "importlib")
(PUNCT ".")
(ID "util")
(PUNCT ".")
(ID "_find_spec_from_path")
(PUNCT "(")
(ID "fullmodule")
(PUNCT ",")
(ID "search_path")
(PUNCT ")")
(NEWLINE)
(ID "fname")
(PUNCT "=")
(ID "spec")
(PUNCT ".")
(ID "loader")
(PUNCT ".")
(ID "get_filename")
(PUNCT "(")
(ID "fullmodule")
(PUNCT ")")
(NEWLINE)
(ID "_modules")
(PUNCT "[")
(ID "fullmodule")
(PUNCT "]")
(PUNCT "=")
(ID "dict")
(NEWLINE)
(KEYWORD if)
(ID "spec")
(PUNCT ".")
(ID "loader")
(PUNCT ".")
(ID "is_package")
(PUNCT "(")
(ID "fullmodule")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "dict")
(PUNCT "[")
(LIT "__path__")
(PUNCT "]")
(PUNCT "=")
(PUNCT "[")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "dirname")
(PUNCT "(")
(ID "fname")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "source")
(PUNCT "=")
(ID "spec")
(PUNCT ".")
(ID "loader")
(PUNCT ".")
(ID "get_source")
(PUNCT "(")
(ID "fullmodule")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "source")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "dict")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD except)
(PUNCT "(")
(ID "AttributeError")
(PUNCT ",")
(ID "ImportError")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "dict")
(NEWLINE)
(DEDENT)
(ID "f")
(PUNCT "=")
(ID "io")
(PUNCT ".")
(ID "StringIO")
(PUNCT "(")
(ID "source")
(PUNCT ")")
(NEWLINE)
(ID "stack")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "g")
(PUNCT "=")
(ID "tokenize")
(PUNCT ".")
(ID "generate_tokens")
(PUNCT "(")
(ID "f")
(PUNCT ".")
(ID "readline")
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "tokentype")
(PUNCT ",")
(ID "token")
(PUNCT ",")
(ID "start")
(PUNCT ",")
(ID "_end")
(PUNCT ",")
(ID "_line")
(KEYWORD in)
(ID "g")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "tokentype")
(PUNCT "==")
(ID "DEDENT")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "lineno")
(PUNCT ",")
(ID "thisindent")
(PUNCT "=")
(ID "start")
(NEWLINE)
(KEYWORD while)
(ID "stack")
(KEYWORD and)
(ID "stack")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ">=")
(ID "thisindent")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD del)
(ID "stack")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(ID "token")
(PUNCT "==")
(LIT "def")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "lineno")
(PUNCT ",")
(ID "thisindent")
(PUNCT "=")
(ID "start")
(NEWLINE)
(KEYWORD while)
(ID "stack")
(KEYWORD and)
(ID "stack")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ">=")
(ID "thisindent")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD del)
(ID "stack")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(ID "tokentype")
(PUNCT ",")
(ID "meth_name")
(PUNCT ",")
(ID "start")
(PUNCT "=")
(ID "next")
(PUNCT "(")
(ID "g")
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT ":")
(LIT 3)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "tokentype")
(PUNCT "!=")
(ID "NAME")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "stack")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "cur_class")
(PUNCT "=")
(ID "stack")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "cur_class")
(PUNCT ",")
(ID "Class")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "cur_class")
(PUNCT ".")
(ID "_addmethod")
(PUNCT "(")
(ID "meth_name")
(PUNCT ",")
(ID "lineno")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "dict")
(PUNCT "[")
(ID "meth_name")
(PUNCT "]")
(PUNCT "=")
(ID "Function")
(PUNCT "(")
(ID "fullmodule")
(PUNCT ",")
(ID "meth_name")
(PUNCT ",")
(ID "fname")
(PUNCT ",")
(ID "lineno")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "stack")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(PUNCT "(")
(KEYWORD None)
(PUNCT ",")
(ID "thisindent")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "token")
(PUNCT "==")
(LIT "class")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "lineno")
(PUNCT ",")
(ID "thisindent")
(PUNCT "=")
(ID "start")
(NEWLINE)
(KEYWORD while)
(ID "stack")
(KEYWORD and)
(ID "stack")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ">=")
(ID "thisindent")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD del)
(ID "stack")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(ID "tokentype")
(PUNCT ",")
(ID "class_name")
(PUNCT ",")
(ID "start")
(PUNCT "=")
(ID "next")
(PUNCT "(")
(ID "g")
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT ":")
(LIT 3)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "tokentype")
(PUNCT "!=")
(ID "NAME")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(ID "tokentype")
(PUNCT ",")
(ID "token")
(PUNCT ",")
(ID "start")
(PUNCT "=")
(ID "next")
(PUNCT "(")
(ID "g")
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT ":")
(LIT 3)
(PUNCT "]")
(NEWLINE)
(ID "inherit")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(KEYWORD if)
(ID "token")
(PUNCT "==")
(LIT "(")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "names")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "level")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(ID "super")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD while)
(KEYWORD True)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "tokentype")
(PUNCT ",")
(ID "token")
(PUNCT ",")
(ID "start")
(PUNCT "=")
(ID "next")
(PUNCT "(")
(ID "g")
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT ":")
(LIT 3)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "token")
(KEYWORD in)
(PUNCT "(")
(LIT ")")
(PUNCT ",")
(LIT ",")
(PUNCT ")")
(KEYWORD and)
(ID "level")
(PUNCT "==")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "n")
(PUNCT "=")
(LIT "")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "super")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "n")
(KEYWORD in)
(ID "dict")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "n")
(PUNCT "=")
(ID "dict")
(PUNCT "[")
(ID "n")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "c")
(PUNCT "=")
(ID "n")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT ".")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "c")
(PUNCT ")")
(PUNCT ">")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "m")
(PUNCT "=")
(ID "c")
(PUNCT "[")
(PUNCT "-")
(LIT 2)
(PUNCT "]")
(NEWLINE)
(ID "c")
(PUNCT "=")
(ID "c")
(PUNCT "[")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "m")
(KEYWORD in)
(ID "_modules")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "d")
(PUNCT "=")
(ID "_modules")
(PUNCT "[")
(ID "m")
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "c")
(KEYWORD in)
(ID "d")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "n")
(PUNCT "=")
(ID "d")
(PUNCT "[")
(ID "c")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(DEDENT)
(ID "names")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "n")
(PUNCT ")")
(NEWLINE)
(ID "super")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "token")
(PUNCT "==")
(LIT "(")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "level")
(PUNCT "+=")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "token")
(PUNCT "==")
(LIT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "level")
(PUNCT "-=")
(LIT 1)
(NEWLINE)
(KEYWORD if)
(ID "level")
(PUNCT "==")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(ID "token")
(PUNCT "==")
(LIT ",")
(KEYWORD and)
(ID "level")
(PUNCT "==")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "tokentype")
(KEYWORD in)
(PUNCT "(")
(ID "NAME")
(PUNCT ",")
(ID "OP")
(PUNCT ")")
(KEYWORD and)
(ID "level")
(PUNCT "==")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "token")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "inherit")
(PUNCT "=")
(ID "names")
(NEWLINE)
(DEDENT)
(ID "cur_class")
(PUNCT "=")
(ID "Class")
(PUNCT "(")
(ID "fullmodule")
(PUNCT ",")
(ID "class_name")
(PUNCT ",")
(ID "inherit")
(PUNCT ",")
(ID "fname")
(PUNCT ",")
(ID "lineno")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "stack")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "dict")
(PUNCT "[")
(ID "class_name")
(PUNCT "]")
(PUNCT "=")
(ID "cur_class")
(NEWLINE)
(DEDENT)
(ID "stack")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(PUNCT "(")
(ID "cur_class")
(PUNCT ",")
(ID "thisindent")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "token")
(PUNCT "==")
(LIT "import")
(KEYWORD and)
(ID "start")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT "==")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "modules")
(PUNCT "=")
(ID "_getnamelist")
(PUNCT "(")
(ID "g")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "mod")
(PUNCT ",")
(ID "_mod2")
(KEYWORD in)
(ID "modules")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "inpackage")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "_readmodule")
(PUNCT "(")
(ID "mod")
(PUNCT ",")
(ID "path")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "_readmodule")
(PUNCT "(")
(ID "mod")
(PUNCT ",")
(ID "path")
(PUNCT ",")
(ID "inpackage")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "ImportError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "_readmodule")
(PUNCT "(")
(ID "mod")
(PUNCT ",")
(PUNCT "[")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD except)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(ID "token")
(PUNCT "==")
(LIT "from")
(KEYWORD and)
(ID "start")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT "==")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "mod")
(PUNCT ",")
(ID "token")
(PUNCT "=")
(ID "_getname")
(PUNCT "(")
(ID "g")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "mod")
(KEYWORD or)
(ID "token")
(PUNCT "!=")
(LIT "import")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(ID "names")
(PUNCT "=")
(ID "_getnamelist")
(PUNCT "(")
(ID "g")
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "d")
(PUNCT "=")
(ID "_readmodule")
(PUNCT "(")
(ID "mod")
(PUNCT ",")
(ID "path")
(PUNCT ",")
(ID "inpackage")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(KEYWORD for)
(ID "n")
(PUNCT ",")
(ID "n2")
(KEYWORD in)
(ID "names")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "n")
(KEYWORD in)
(ID "d")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "dict")
(PUNCT "[")
(ID "n2")
(KEYWORD or)
(ID "n")
(PUNCT "]")
(PUNCT "=")
(ID "d")
(PUNCT "[")
(ID "n")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "n")
(PUNCT "==")
(LIT "*")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "n")
(KEYWORD in)
(ID "d")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "n")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "!=")
(LIT "_")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "dict")
(PUNCT "[")
(ID "n")
(PUNCT "]")
(PUNCT "=")
(ID "d")
(PUNCT "[")
(ID "n")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(DEDENT)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD except)
(ID "StopIteration")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(ID "f")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "dict")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_getnamelist")
(PUNCT "(")
(ID "g")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "names")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD while)
(KEYWORD True)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "name")
(PUNCT ",")
(ID "token")
(PUNCT "=")
(ID "_getname")
(PUNCT "(")
(ID "g")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "name")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "token")
(PUNCT "==")
(LIT "as")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "name2")
(PUNCT ",")
(ID "token")
(PUNCT "=")
(ID "_getname")
(PUNCT "(")
(ID "g")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "name2")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(DEDENT)
(ID "names")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "name2")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD while)
(ID "token")
(PUNCT "!=")
(LIT ",")
(KEYWORD and)
(LIT "\n")
(KEYWORD not)
(KEYWORD in)
(ID "token")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "token")
(PUNCT "=")
(ID "next")
(PUNCT "(")
(ID "g")
(PUNCT ")")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "token")
(PUNCT "!=")
(LIT ",")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "names")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_getname")
(PUNCT "(")
(ID "g")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "parts")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "tokentype")
(PUNCT ",")
(ID "token")
(PUNCT "=")
(ID "next")
(PUNCT "(")
(ID "g")
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT ":")
(LIT 2)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "tokentype")
(PUNCT "!=")
(ID "NAME")
(KEYWORD and)
(ID "token")
(PUNCT "!=")
(LIT "*")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "(")
(KEYWORD None)
(PUNCT ",")
(ID "token")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "parts")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "token")
(PUNCT ")")
(NEWLINE)
(KEYWORD while)
(KEYWORD True)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "tokentype")
(PUNCT ",")
(ID "token")
(PUNCT "=")
(ID "next")
(PUNCT "(")
(ID "g")
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT ":")
(LIT 2)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "token")
(PUNCT "!=")
(LIT ".")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(ID "tokentype")
(PUNCT ",")
(ID "token")
(PUNCT "=")
(ID "next")
(PUNCT "(")
(ID "g")
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT ":")
(LIT 2)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "tokentype")
(PUNCT "!=")
(ID "NAME")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(ID "parts")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "token")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(PUNCT "(")
(LIT ".")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "parts")
(PUNCT ")")
(PUNCT ",")
(ID "token")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_main")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD import)
(ID "os")
(NEWLINE)
(ID "mod")
(PUNCT "=")
(ID "sys")
(PUNCT ".")
(ID "argv")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "exists")
(PUNCT "(")
(ID "mod")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "path")
(PUNCT "=")
(PUNCT "[")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "dirname")
(PUNCT "(")
(ID "mod")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(ID "mod")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "basename")
(PUNCT "(")
(ID "mod")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "mod")
(PUNCT ".")
(ID "lower")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "endswith")
(PUNCT "(")
(LIT ".py")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "mod")
(PUNCT "=")
(ID "mod")
(PUNCT "[")
(PUNCT ":")
(PUNCT "-")
(LIT 3)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "path")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(ID "dict")
(PUNCT "=")
(ID "readmodule_ex")
(PUNCT "(")
(ID "mod")
(PUNCT ",")
(ID "path")
(PUNCT ")")
(NEWLINE)
(ID "objs")
(PUNCT "=")
(ID "list")
(PUNCT "(")
(ID "dict")
(PUNCT ".")
(ID "values")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "objs")
(PUNCT ".")
(ID "sort")
(PUNCT "(")
(ID "key")
(PUNCT "=")
(KEYWORD lambda)
(ID "a")
(PUNCT ":")
(ID "getattr")
(PUNCT "(")
(ID "a")
(PUNCT ",")
(LIT "lineno")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "obj")
(KEYWORD in)
(ID "objs")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "obj")
(PUNCT ",")
(ID "Class")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "print")
(PUNCT "(")
(LIT "class")
(PUNCT ",")
(ID "obj")
(PUNCT ".")
(ID "name")
(PUNCT ",")
(ID "obj")
(PUNCT ".")
(ID "super")
(PUNCT ",")
(ID "obj")
(PUNCT ".")
(ID "lineno")
(PUNCT ")")
(NEWLINE)
(ID "methods")
(PUNCT "=")
(ID "sorted")
(PUNCT "(")
(ID "obj")
(PUNCT ".")
(ID "methods")
(PUNCT ".")
(ID "items")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(ID "key")
(PUNCT "=")
(ID "itemgetter")
(PUNCT "(")
(LIT 1)
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "name")
(PUNCT ",")
(ID "lineno")
(KEYWORD in)
(ID "methods")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "name")
(PUNCT "!=")
(LIT "__path__")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "print")
(PUNCT "(")
(LIT "  def")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "lineno")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(ID "isinstance")
(PUNCT "(")
(ID "obj")
(PUNCT ",")
(ID "Function")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "print")
(PUNCT "(")
(LIT "def")
(PUNCT ",")
(ID "obj")
(PUNCT ".")
(ID "name")
(PUNCT ",")
(ID "obj")
(PUNCT ".")
(ID "lineno")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "__name__")
(PUNCT "==")
(LIT "__main__")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "_main")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ENDMARKER)
