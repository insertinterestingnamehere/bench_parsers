(LIT "Manage HTTP Response Headers\n\nMuch of this module is red-handedly pilfered from email.message in the stdlib,\nso portions are Copyright (C) 2001,2002 Python Software Foundation, and were\nwritten by Barry Warsaw.\n")
(NEWLINE)
(KEYWORD import)
(ID "re")
(NEWLINE)
(ID "tspecials")
(PUNCT "=")
(ID "re")
(PUNCT ".")
(ID "compile")
(PUNCT "(")
(LIT "[ \\(\\)<>@,;:\\\\\"/\\[\\]\\?=]")
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "_formatparam")
(PUNCT "(")
(ID "param")
(PUNCT ",")
(ID "value")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "quote")
(PUNCT "=")
(LIT 1)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Convenience function to format and return a key=value pair.\n\n    This will quote the value if needed or if quote is true.\n    ")
(NEWLINE)
(KEYWORD if)
(ID "value")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(KEYWORD and)
(ID "len")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(PUNCT ">")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "quote")
(KEYWORD or)
(ID "tspecials")
(PUNCT ".")
(ID "search")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "value")
(PUNCT "=")
(ID "value")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(LIT "\\")
(PUNCT ",")
(LIT "\\\\")
(PUNCT ")")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(LIT "\"")
(PUNCT ",")
(LIT "\\\"")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(LIT "%s=\"%s\"")
(PUNCT "%")
(PUNCT "(")
(ID "param")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "%s=%s")
(PUNCT "%")
(PUNCT "(")
(ID "param")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "param")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "Headers")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Manage a collection of HTTP response headers")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "headers")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "type")
(PUNCT "(")
(ID "headers")
(PUNCT ")")
(KEYWORD is)
(KEYWORD not)
(ID "list")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "TypeError")
(PUNCT "(")
(LIT "Headers must be a list of name/value tuples")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_headers")
(PUNCT "=")
(ID "headers")
(NEWLINE)
(KEYWORD if)
(ID "__debug__")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "k")
(PUNCT ",")
(ID "v")
(KEYWORD in)
(ID "headers")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_convert_string_type")
(PUNCT "(")
(ID "k")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_convert_string_type")
(PUNCT "(")
(ID "v")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_convert_string_type")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Convert/check value type.")
(NEWLINE)
(KEYWORD if)
(ID "type")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(KEYWORD is)
(ID "str")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "value")
(NEWLINE)
(DEDENT)
(KEYWORD raise)
(ID "AssertionError")
(PUNCT "(")
(LIT "Header names/values must be")
(LIT " of type str (got {0})")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "repr")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__len__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return the total number of headers, including duplicates.")
(NEWLINE)
(KEYWORD return)
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_headers")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__setitem__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "val")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Set the value of a header.")
(NEWLINE)
(KEYWORD del)
(ID "self")
(PUNCT "[")
(ID "name")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_headers")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_convert_string_type")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "_convert_string_type")
(PUNCT "(")
(ID "val")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__delitem__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Delete all occurrences of a header, if present.\n\n        Does *not* raise an exception if the header is missing.\n        ")
(NEWLINE)
(ID "name")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_convert_string_type")
(PUNCT "(")
(ID "name")
(PUNCT ".")
(ID "lower")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_headers")
(PUNCT "[")
(PUNCT ":")
(PUNCT "]")
(PUNCT "=")
(PUNCT "[")
(ID "kv")
(KEYWORD for)
(ID "kv")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_headers")
(KEYWORD if)
(ID "kv")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ".")
(ID "lower")
(PUNCT "(")
(PUNCT ")")
(PUNCT "!=")
(ID "name")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__getitem__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Get the first header value for 'name'\n\n        Return None if the header is missing instead of raising an exception.\n\n        Note that if the header appeared multiple times, the first exactly which\n        occurrance gets returned is undefined.  Use getall() to get all\n        the values matching a header field name.\n        ")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__contains__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return true if the message contains the header.")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "get_all")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return a list of all the values for the named field.\n\n        These will be sorted in the order they appeared in the original header\n        list or were added to this instance, and may contain duplicates.  Any\n        fields deleted and re-inserted are always appended to the header list.\n        If no fields exist with the given name, returns an empty list.\n        ")
(NEWLINE)
(ID "name")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_convert_string_type")
(PUNCT "(")
(ID "name")
(PUNCT ".")
(ID "lower")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(PUNCT "[")
(ID "kv")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(KEYWORD for)
(ID "kv")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_headers")
(KEYWORD if)
(ID "kv")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ".")
(ID "lower")
(PUNCT "(")
(PUNCT ")")
(PUNCT "==")
(ID "name")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "get")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "default")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Get the first header value for 'name', or return 'default'")
(NEWLINE)
(ID "name")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_convert_string_type")
(PUNCT "(")
(ID "name")
(PUNCT ".")
(ID "lower")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "k")
(PUNCT ",")
(ID "v")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_headers")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "k")
(PUNCT ".")
(ID "lower")
(PUNCT "(")
(PUNCT ")")
(PUNCT "==")
(ID "name")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "v")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "default")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "keys")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return a list of all the header field names.\n\n        These will be sorted in the order they appeared in the original header\n        list, or were added to this instance, and may contain duplicates.\n        Any fields deleted and re-inserted are always appended to the header\n        list.\n        ")
(NEWLINE)
(KEYWORD return)
(PUNCT "[")
(ID "k")
(KEYWORD for)
(ID "k")
(PUNCT ",")
(ID "v")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_headers")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "values")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return a list of all header values.\n\n        These will be sorted in the order they appeared in the original header\n        list, or were added to this instance, and may contain duplicates.\n        Any fields deleted and re-inserted are always appended to the header\n        list.\n        ")
(NEWLINE)
(KEYWORD return)
(PUNCT "[")
(ID "v")
(KEYWORD for)
(ID "k")
(PUNCT ",")
(ID "v")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_headers")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "items")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Get all the header fields and values.\n\n        These will be sorted in the order they were in the original header\n        list, or were added to this instance, and may contain duplicates.\n        Any fields deleted and re-inserted are always appended to the header\n        list.\n        ")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_headers")
(PUNCT "[")
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__repr__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "Headers(%r)")
(PUNCT "%")
(ID "self")
(PUNCT ".")
(ID "_headers")
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
(LIT "str() returns the formatted headers, complete with end line,\n        suitable for direct HTTP transmission.")
(NEWLINE)
(KEYWORD return)
(LIT "\r\n")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(PUNCT "[")
(LIT "%s: %s")
(PUNCT "%")
(ID "kv")
(KEYWORD for)
(ID "kv")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_headers")
(PUNCT "]")
(PUNCT "+")
(PUNCT "[")
(LIT "")
(PUNCT ",")
(LIT "")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__bytes__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "str")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ".")
(ID "encode")
(PUNCT "(")
(LIT "iso-8859-1")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "setdefault")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return first matching header value for 'name', or 'value'\n\n        If there is no header named 'name', add a new header with name 'name'\n        and value 'value'.")
(NEWLINE)
(ID "result")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "result")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_headers")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_convert_string_type")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "_convert_string_type")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "value")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "result")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "add_header")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "_name")
(PUNCT ",")
(ID "_value")
(PUNCT ",")
(PUNCT "**")
(ID "_params")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Extended header setting.\n\n        _name is the header field to add.  keyword arguments can be used to set\n        additional parameters for the header field, with underscores converted\n        to dashes.  Normally the parameter will be added as key=\"value\" unless\n        value is None, in which case only the key will be added.\n\n        Example:\n\n        h.add_header('content-disposition', 'attachment', filename='bud.gif')\n\n        Note that unlike the corresponding 'email.message' method, this does\n        *not* handle '(charset, language, value)' tuples: all values must be\n        strings or None.\n        ")
(NEWLINE)
(ID "parts")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "_value")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "_value")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_convert_string_type")
(PUNCT "(")
(ID "_value")
(PUNCT ")")
(NEWLINE)
(ID "parts")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "_value")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD for)
(ID "k")
(PUNCT ",")
(ID "v")
(KEYWORD in)
(ID "_params")
(PUNCT ".")
(ID "items")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "k")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_convert_string_type")
(PUNCT "(")
(ID "k")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "v")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "parts")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "k")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(LIT "_")
(PUNCT ",")
(LIT "-")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "v")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_convert_string_type")
(PUNCT "(")
(ID "v")
(PUNCT ")")
(NEWLINE)
(ID "parts")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "_formatparam")
(PUNCT "(")
(ID "k")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(LIT "_")
(PUNCT ",")
(LIT "-")
(PUNCT ")")
(PUNCT ",")
(ID "v")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_headers")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_convert_string_type")
(PUNCT "(")
(ID "_name")
(PUNCT ")")
(PUNCT ",")
(LIT "; ")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "parts")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)
