(LIT "This module provides the components needed to build your own __import__\nfunction.  Undocumented functions are obsolete.\n\nIn most cases it is preferred you consider using the importlib module's\nfunctionality over this module.\n\n")
(NEWLINE)
(KEYWORD from)
(ID "_imp")
(KEYWORD import)
(PUNCT "(")
(ID "lock_held")
(PUNCT ",")
(ID "acquire_lock")
(PUNCT ",")
(ID "release_lock")
(PUNCT ",")
(ID "get_frozen_object")
(PUNCT ",")
(ID "is_frozen_package")
(PUNCT ",")
(ID "init_builtin")
(PUNCT ",")
(ID "init_frozen")
(PUNCT ",")
(ID "is_builtin")
(PUNCT ",")
(ID "is_frozen")
(PUNCT ",")
(ID "_fix_co_filename")
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD from)
(ID "_imp")
(KEYWORD import)
(ID "load_dynamic")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "ImportError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "load_dynamic")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(DEDENT)
(KEYWORD from)
(ID "importlib")
(PUNCT ".")
(ID "_bootstrap")
(KEYWORD import)
(ID "SourcelessFileLoader")
(PUNCT ",")
(ID "_ERR_MSG")
(PUNCT ",")
(ID "_SpecMethods")
(NEWLINE)
(KEYWORD from)
(ID "importlib")
(KEYWORD import)
(ID "machinery")
(NEWLINE)
(KEYWORD from)
(ID "importlib")
(KEYWORD import)
(ID "util")
(NEWLINE)
(KEYWORD import)
(ID "importlib")
(NEWLINE)
(KEYWORD import)
(ID "os")
(NEWLINE)
(KEYWORD import)
(ID "sys")
(NEWLINE)
(KEYWORD import)
(ID "tokenize")
(NEWLINE)
(KEYWORD import)
(ID "types")
(NEWLINE)
(KEYWORD import)
(ID "warnings")
(NEWLINE)
(ID "warnings")
(PUNCT ".")
(ID "warn")
(PUNCT "(")
(LIT "the imp module is deprecated in favour of importlib; ")
(LIT "see the module's documentation for alternative uses")
(PUNCT ",")
(ID "PendingDeprecationWarning")
(PUNCT ")")
(NEWLINE)
(ID "SEARCH_ERROR")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(ID "PY_SOURCE")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(ID "PY_COMPILED")
(PUNCT "=")
(LIT 2)
(NEWLINE)
(ID "C_EXTENSION")
(PUNCT "=")
(LIT 3)
(NEWLINE)
(ID "PY_RESOURCE")
(PUNCT "=")
(LIT 4)
(NEWLINE)
(ID "PKG_DIRECTORY")
(PUNCT "=")
(LIT 5)
(NEWLINE)
(ID "C_BUILTIN")
(PUNCT "=")
(LIT 6)
(NEWLINE)
(ID "PY_FROZEN")
(PUNCT "=")
(LIT 7)
(NEWLINE)
(ID "PY_CODERESOURCE")
(PUNCT "=")
(LIT 8)
(NEWLINE)
(ID "IMP_HOOK")
(PUNCT "=")
(LIT 9)
(NEWLINE)
(KEYWORD def)
(ID "new_module")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "**DEPRECATED**\n\n    Create a new module.\n\n    The module is not entered into sys.modules.\n\n    ")
(NEWLINE)
(KEYWORD return)
(ID "types")
(PUNCT ".")
(ID "ModuleType")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "get_magic")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "**DEPRECATED**\n\n    Return the magic number for .pyc or .pyo files.\n    ")
(NEWLINE)
(KEYWORD return)
(ID "util")
(PUNCT ".")
(ID "MAGIC_NUMBER")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "get_tag")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return the magic tag for .pyc or .pyo files.")
(NEWLINE)
(KEYWORD return)
(ID "sys")
(PUNCT ".")
(ID "implementation")
(PUNCT ".")
(ID "cache_tag")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "cache_from_source")
(PUNCT "(")
(ID "path")
(PUNCT ",")
(ID "debug_override")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "**DEPRECATED**\n\n    Given the path to a .py file, return the path to its .pyc/.pyo file.\n\n    The .py file does not need to exist; this simply returns the path to the\n    .pyc/.pyo file calculated as if the .py file were imported.  The extension\n    will be .pyc unless sys.flags.optimize is non-zero, then it will be .pyo.\n\n    If debug_override is not None, then it must be a boolean and is used in\n    place of sys.flags.optimize.\n\n    If sys.implementation.cache_tag is None then NotImplementedError is raised.\n\n    ")
(NEWLINE)
(KEYWORD return)
(ID "util")
(PUNCT ".")
(ID "cache_from_source")
(PUNCT "(")
(ID "path")
(PUNCT ",")
(ID "debug_override")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "source_from_cache")
(PUNCT "(")
(ID "path")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "**DEPRECATED**\n\n    Given the path to a .pyc./.pyo file, return the path to its .py file.\n\n    The .pyc/.pyo file does not need to exist; this simply returns the path to\n    the .py file calculated to correspond to the .pyc/.pyo file.  If path does\n    not conform to PEP 3147 format, ValueError will be raised. If\n    sys.implementation.cache_tag is None then NotImplementedError is raised.\n\n    ")
(NEWLINE)
(KEYWORD return)
(ID "util")
(PUNCT ".")
(ID "source_from_cache")
(PUNCT "(")
(ID "path")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "get_suffixes")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "**DEPRECATED**")
(NEWLINE)
(ID "extensions")
(PUNCT "=")
(PUNCT "[")
(PUNCT "(")
(ID "s")
(PUNCT ",")
(LIT "rb")
(PUNCT ",")
(ID "C_EXTENSION")
(PUNCT ")")
(KEYWORD for)
(ID "s")
(KEYWORD in)
(ID "machinery")
(PUNCT ".")
(ID "EXTENSION_SUFFIXES")
(PUNCT "]")
(NEWLINE)
(ID "source")
(PUNCT "=")
(PUNCT "[")
(PUNCT "(")
(ID "s")
(PUNCT ",")
(LIT "r")
(PUNCT ",")
(ID "PY_SOURCE")
(PUNCT ")")
(KEYWORD for)
(ID "s")
(KEYWORD in)
(ID "machinery")
(PUNCT ".")
(ID "SOURCE_SUFFIXES")
(PUNCT "]")
(NEWLINE)
(ID "bytecode")
(PUNCT "=")
(PUNCT "[")
(PUNCT "(")
(ID "s")
(PUNCT ",")
(LIT "rb")
(PUNCT ",")
(ID "PY_COMPILED")
(PUNCT ")")
(KEYWORD for)
(ID "s")
(KEYWORD in)
(ID "machinery")
(PUNCT ".")
(ID "BYTECODE_SUFFIXES")
(PUNCT "]")
(NEWLINE)
(KEYWORD return)
(ID "extensions")
(PUNCT "+")
(ID "source")
(PUNCT "+")
(ID "bytecode")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "NullImporter")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "**DEPRECATED**\n\n    Null import object.\n\n    ")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "path")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "path")
(PUNCT "==")
(LIT "")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ImportError")
(PUNCT "(")
(LIT "empty pathname")
(PUNCT ",")
(ID "path")
(PUNCT "=")
(LIT "")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "isdir")
(PUNCT "(")
(ID "path")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ImportError")
(PUNCT "(")
(LIT "existing directory")
(PUNCT ",")
(ID "path")
(PUNCT "=")
(ID "path")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "find_module")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "fullname")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Always returns None.")
(NEWLINE)
(KEYWORD return)
(KEYWORD None)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "_HackedGetData")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Compatibiilty support for 'file' arguments of various load_*()\n    functions.")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "fullname")
(PUNCT ",")
(ID "path")
(PUNCT ",")
(ID "file")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "__init__")
(PUNCT "(")
(ID "fullname")
(PUNCT ",")
(ID "path")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "file")
(PUNCT "=")
(ID "file")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "get_data")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "path")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Gross hack to contort loader to deal w/ load_*()'s bad API.")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "file")
(KEYWORD and)
(ID "path")
(PUNCT "==")
(ID "self")
(PUNCT ".")
(ID "path")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "file")
(PUNCT ".")
(ID "closed")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "file")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "file")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "file")
(PUNCT "=")
(ID "file")
(PUNCT "=")
(ID "open")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "path")
(PUNCT ",")
(LIT "r")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD with)
(ID "file")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "file")
(PUNCT ".")
(ID "read")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "super")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "get_data")
(PUNCT "(")
(ID "path")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "_LoadSourceCompatibility")
(PUNCT "(")
(ID "_HackedGetData")
(PUNCT ",")
(ID "machinery")
(PUNCT ".")
(ID "SourceFileLoader")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Compatibility support for implementing load_source().")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "load_source")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "pathname")
(PUNCT ",")
(ID "file")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "loader")
(PUNCT "=")
(ID "_LoadSourceCompatibility")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "pathname")
(PUNCT ",")
(ID "file")
(PUNCT ")")
(NEWLINE)
(ID "spec")
(PUNCT "=")
(ID "util")
(PUNCT ".")
(ID "spec_from_file_location")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "pathname")
(PUNCT ",")
(ID "loader")
(PUNCT "=")
(ID "loader")
(PUNCT ")")
(NEWLINE)
(ID "methods")
(PUNCT "=")
(ID "_SpecMethods")
(PUNCT "(")
(ID "spec")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "name")
(KEYWORD in)
(ID "sys")
(PUNCT ".")
(ID "modules")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "module")
(PUNCT "=")
(ID "methods")
(PUNCT ".")
(ID "exec")
(PUNCT "(")
(ID "sys")
(PUNCT ".")
(ID "modules")
(PUNCT "[")
(ID "name")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "module")
(PUNCT "=")
(ID "methods")
(PUNCT ".")
(ID "load")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "module")
(PUNCT ".")
(ID "__loader__")
(PUNCT "=")
(ID "machinery")
(PUNCT ".")
(ID "SourceFileLoader")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "pathname")
(PUNCT ")")
(NEWLINE)
(ID "module")
(PUNCT ".")
(ID "__spec__")
(PUNCT ".")
(ID "loader")
(PUNCT "=")
(ID "module")
(PUNCT ".")
(ID "__loader__")
(NEWLINE)
(KEYWORD return)
(ID "module")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "_LoadCompiledCompatibility")
(PUNCT "(")
(ID "_HackedGetData")
(PUNCT ",")
(ID "SourcelessFileLoader")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Compatibility support for implementing load_compiled().")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "load_compiled")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "pathname")
(PUNCT ",")
(ID "file")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "**DEPRECATED**")
(NEWLINE)
(ID "loader")
(PUNCT "=")
(ID "_LoadCompiledCompatibility")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "pathname")
(PUNCT ",")
(ID "file")
(PUNCT ")")
(NEWLINE)
(ID "spec")
(PUNCT "=")
(ID "util")
(PUNCT ".")
(ID "spec_from_file_location")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "pathname")
(PUNCT ",")
(ID "loader")
(PUNCT "=")
(ID "loader")
(PUNCT ")")
(NEWLINE)
(ID "methods")
(PUNCT "=")
(ID "_SpecMethods")
(PUNCT "(")
(ID "spec")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "name")
(KEYWORD in)
(ID "sys")
(PUNCT ".")
(ID "modules")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "module")
(PUNCT "=")
(ID "methods")
(PUNCT ".")
(ID "exec")
(PUNCT "(")
(ID "sys")
(PUNCT ".")
(ID "modules")
(PUNCT "[")
(ID "name")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "module")
(PUNCT "=")
(ID "methods")
(PUNCT ".")
(ID "load")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "module")
(PUNCT ".")
(ID "__loader__")
(PUNCT "=")
(ID "SourcelessFileLoader")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "pathname")
(PUNCT ")")
(NEWLINE)
(ID "module")
(PUNCT ".")
(ID "__spec__")
(PUNCT ".")
(ID "loader")
(PUNCT "=")
(ID "module")
(PUNCT ".")
(ID "__loader__")
(NEWLINE)
(KEYWORD return)
(ID "module")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "load_package")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "path")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "**DEPRECATED**")
(NEWLINE)
(KEYWORD if)
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "isdir")
(PUNCT "(")
(ID "path")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "extensions")
(PUNCT "=")
(PUNCT "(")
(ID "machinery")
(PUNCT ".")
(ID "SOURCE_SUFFIXES")
(PUNCT "[")
(PUNCT ":")
(PUNCT "]")
(PUNCT "+")
(ID "machinery")
(PUNCT ".")
(ID "BYTECODE_SUFFIXES")
(PUNCT "[")
(PUNCT ":")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "extension")
(KEYWORD in)
(ID "extensions")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "path")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "path")
(PUNCT ",")
(LIT "__init__")
(PUNCT "+")
(ID "extension")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "exists")
(PUNCT "(")
(ID "path")
(PUNCT ")")
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
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "{!r} is not a package")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "path")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "spec")
(PUNCT "=")
(ID "util")
(PUNCT ".")
(ID "spec_from_file_location")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "path")
(PUNCT ",")
(ID "submodule_search_locations")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(ID "methods")
(PUNCT "=")
(ID "_SpecMethods")
(PUNCT "(")
(ID "spec")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "name")
(KEYWORD in)
(ID "sys")
(PUNCT ".")
(ID "modules")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "methods")
(PUNCT ".")
(ID "exec")
(PUNCT "(")
(ID "sys")
(PUNCT ".")
(ID "modules")
(PUNCT "[")
(ID "name")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "methods")
(PUNCT ".")
(ID "load")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "load_module")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "file")
(PUNCT ",")
(ID "filename")
(PUNCT ",")
(ID "details")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "**DEPRECATED**\n\n    Load a module, given information returned by find_module().\n\n    The module name must include the full package name, if any.\n\n    ")
(NEWLINE)
(ID "suffix")
(PUNCT ",")
(ID "mode")
(PUNCT ",")
(ID "type_")
(PUNCT "=")
(ID "details")
(NEWLINE)
(KEYWORD if)
(ID "mode")
(KEYWORD and)
(PUNCT "(")
(KEYWORD not)
(ID "mode")
(PUNCT ".")
(ID "startswith")
(PUNCT "(")
(PUNCT "(")
(LIT "r")
(PUNCT ",")
(LIT "U")
(PUNCT ")")
(PUNCT ")")
(KEYWORD or)
(LIT "+")
(KEYWORD in)
(ID "mode")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "invalid file open mode {!r}")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "mode")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "file")
(KEYWORD is)
(KEYWORD None)
(KEYWORD and)
(ID "type_")
(KEYWORD in)
(PUNCT "{")
(ID "PY_SOURCE")
(PUNCT ",")
(ID "PY_COMPILED")
(PUNCT "}")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "msg")
(PUNCT "=")
(LIT "file object required for import (type code {})")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "type_")
(PUNCT ")")
(NEWLINE)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(ID "msg")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "type_")
(PUNCT "==")
(ID "PY_SOURCE")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "load_source")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "filename")
(PUNCT ",")
(ID "file")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "type_")
(PUNCT "==")
(ID "PY_COMPILED")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "load_compiled")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "filename")
(PUNCT ",")
(ID "file")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "type_")
(PUNCT "==")
(ID "C_EXTENSION")
(KEYWORD and)
(ID "load_dynamic")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "file")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD with)
(ID "open")
(PUNCT "(")
(ID "filename")
(PUNCT ",")
(LIT "rb")
(PUNCT ")")
(KEYWORD as)
(ID "opened_file")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "load_dynamic")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "filename")
(PUNCT ",")
(ID "opened_file")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "load_dynamic")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "filename")
(PUNCT ",")
(ID "file")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(ID "type_")
(PUNCT "==")
(ID "PKG_DIRECTORY")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "load_package")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "filename")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "type_")
(PUNCT "==")
(ID "C_BUILTIN")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "init_builtin")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "type_")
(PUNCT "==")
(ID "PY_FROZEN")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "init_frozen")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "msg")
(PUNCT "=")
(LIT "Don't know how to import {} (type code {})")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "type_")
(PUNCT ")")
(NEWLINE)
(KEYWORD raise)
(ID "ImportError")
(PUNCT "(")
(ID "msg")
(PUNCT ",")
(ID "name")
(PUNCT "=")
(ID "name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "find_module")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "path")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "**DEPRECATED**\n\n    Search for a module.\n\n    If path is omitted or None, search for a built-in, frozen or special\n    module and continue search in sys.path. The module name cannot\n    contain '.'; to search for a submodule of a package, pass the\n    submodule name and the package's __path__.\n\n    ")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "isinstance")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "str")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "TypeError")
(PUNCT "(")
(LIT "'name' must be a str, not {}")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "type")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(KEYWORD not)
(ID "isinstance")
(PUNCT "(")
(ID "path")
(PUNCT ",")
(PUNCT "(")
(ID "type")
(PUNCT "(")
(KEYWORD None)
(PUNCT ")")
(PUNCT ",")
(ID "list")
(PUNCT ")")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "RuntimeError")
(PUNCT "(")
(LIT "'list' must be None or a list, ")
(LIT "not {}")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "type")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "path")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "is_builtin")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD None)
(PUNCT ",")
(KEYWORD None)
(PUNCT ",")
(PUNCT "(")
(LIT "")
(PUNCT ",")
(LIT "")
(PUNCT ",")
(ID "C_BUILTIN")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "is_frozen")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD None)
(PUNCT ",")
(KEYWORD None)
(PUNCT ",")
(PUNCT "(")
(LIT "")
(PUNCT ",")
(LIT "")
(PUNCT ",")
(ID "PY_FROZEN")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "path")
(PUNCT "=")
(ID "sys")
(PUNCT ".")
(ID "path")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD for)
(ID "entry")
(KEYWORD in)
(ID "path")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "package_directory")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "entry")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "suffix")
(KEYWORD in)
(PUNCT "[")
(LIT ".py")
(PUNCT ",")
(ID "machinery")
(PUNCT ".")
(ID "BYTECODE_SUFFIXES")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "package_file_name")
(PUNCT "=")
(LIT "__init__")
(PUNCT "+")
(ID "suffix")
(NEWLINE)
(ID "file_path")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "package_directory")
(PUNCT ",")
(ID "package_file_name")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "isfile")
(PUNCT "(")
(ID "file_path")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD None)
(PUNCT ",")
(ID "package_directory")
(PUNCT ",")
(PUNCT "(")
(LIT "")
(PUNCT ",")
(LIT "")
(PUNCT ",")
(ID "PKG_DIRECTORY")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD for)
(ID "suffix")
(PUNCT ",")
(ID "mode")
(PUNCT ",")
(ID "type_")
(KEYWORD in)
(ID "get_suffixes")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "file_name")
(PUNCT "=")
(ID "name")
(PUNCT "+")
(ID "suffix")
(NEWLINE)
(ID "file_path")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "entry")
(PUNCT ",")
(ID "file_name")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "isfile")
(PUNCT "(")
(ID "file_path")
(PUNCT ")")
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
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(KEYWORD break)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ImportError")
(PUNCT "(")
(ID "_ERR_MSG")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ",")
(ID "name")
(PUNCT "=")
(ID "name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "encoding")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(KEYWORD if)
(LIT "b")
(KEYWORD not)
(KEYWORD in)
(ID "mode")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD with)
(ID "open")
(PUNCT "(")
(ID "file_path")
(PUNCT ",")
(LIT "rb")
(PUNCT ")")
(KEYWORD as)
(ID "file")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "encoding")
(PUNCT "=")
(ID "tokenize")
(PUNCT ".")
(ID "detect_encoding")
(PUNCT "(")
(ID "file")
(PUNCT ".")
(ID "readline")
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "file")
(PUNCT "=")
(ID "open")
(PUNCT "(")
(ID "file_path")
(PUNCT ",")
(ID "mode")
(PUNCT ",")
(ID "encoding")
(PUNCT "=")
(ID "encoding")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "file")
(PUNCT ",")
(ID "file_path")
(PUNCT ",")
(PUNCT "(")
(ID "suffix")
(PUNCT ",")
(ID "mode")
(PUNCT ",")
(ID "type_")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "reload")
(PUNCT "(")
(ID "module")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "**DEPRECATED**\n\n    Reload the module and return it.\n\n    The module must have been successfully imported before.\n\n    ")
(NEWLINE)
(KEYWORD return)
(ID "importlib")
(PUNCT ".")
(ID "reload")
(PUNCT "(")
(ID "module")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ENDMARKER)
