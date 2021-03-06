(LIT "A package for parsing, handling, and generating email messages.")
(NEWLINE)
(ID "__version__")
(PUNCT "=")
(LIT "5.1.0")
(NEWLINE)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "base64mime")
(PUNCT ",")
(LIT "charset")
(PUNCT ",")
(LIT "encoders")
(PUNCT ",")
(LIT "errors")
(PUNCT ",")
(LIT "feedparser")
(PUNCT ",")
(LIT "generator")
(PUNCT ",")
(LIT "header")
(PUNCT ",")
(LIT "iterators")
(PUNCT ",")
(LIT "message")
(PUNCT ",")
(LIT "message_from_file")
(PUNCT ",")
(LIT "message_from_binary_file")
(PUNCT ",")
(LIT "message_from_string")
(PUNCT ",")
(LIT "message_from_bytes")
(PUNCT ",")
(LIT "mime")
(PUNCT ",")
(LIT "parser")
(PUNCT ",")
(LIT "quoprimime")
(PUNCT ",")
(LIT "utils")
(PUNCT ",")
(PUNCT "]")
(NEWLINE)
(KEYWORD def)
(ID "message_from_string")
(PUNCT "(")
(ID "s")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ",")
(PUNCT "**")
(ID "kws")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Parse a string into a Message object model.\n\n    Optional _class and strict are passed to the Parser constructor.\n    ")
(NEWLINE)
(KEYWORD from)
(ID "email")
(PUNCT ".")
(ID "parser")
(KEYWORD import)
(ID "Parser")
(NEWLINE)
(KEYWORD return)
(ID "Parser")
(PUNCT "(")
(PUNCT "*")
(ID "args")
(PUNCT ",")
(PUNCT "**")
(ID "kws")
(PUNCT ")")
(PUNCT ".")
(ID "parsestr")
(PUNCT "(")
(ID "s")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "message_from_bytes")
(PUNCT "(")
(ID "s")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ",")
(PUNCT "**")
(ID "kws")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Parse a bytes string into a Message object model.\n\n    Optional _class and strict are passed to the Parser constructor.\n    ")
(NEWLINE)
(KEYWORD from)
(ID "email")
(PUNCT ".")
(ID "parser")
(KEYWORD import)
(ID "BytesParser")
(NEWLINE)
(KEYWORD return)
(ID "BytesParser")
(PUNCT "(")
(PUNCT "*")
(ID "args")
(PUNCT ",")
(PUNCT "**")
(ID "kws")
(PUNCT ")")
(PUNCT ".")
(ID "parsebytes")
(PUNCT "(")
(ID "s")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "message_from_file")
(PUNCT "(")
(ID "fp")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ",")
(PUNCT "**")
(ID "kws")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Read a file and parse its contents into a Message object model.\n\n    Optional _class and strict are passed to the Parser constructor.\n    ")
(NEWLINE)
(KEYWORD from)
(ID "email")
(PUNCT ".")
(ID "parser")
(KEYWORD import)
(ID "Parser")
(NEWLINE)
(KEYWORD return)
(ID "Parser")
(PUNCT "(")
(PUNCT "*")
(ID "args")
(PUNCT ",")
(PUNCT "**")
(ID "kws")
(PUNCT ")")
(PUNCT ".")
(ID "parse")
(PUNCT "(")
(ID "fp")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "message_from_binary_file")
(PUNCT "(")
(ID "fp")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ",")
(PUNCT "**")
(ID "kws")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Read a binary file and parse its contents into a Message object model.\n\n    Optional _class and strict are passed to the Parser constructor.\n    ")
(NEWLINE)
(KEYWORD from)
(ID "email")
(PUNCT ".")
(ID "parser")
(KEYWORD import)
(ID "BytesParser")
(NEWLINE)
(KEYWORD return)
(ID "BytesParser")
(PUNCT "(")
(PUNCT "*")
(ID "args")
(PUNCT ",")
(PUNCT "**")
(ID "kws")
(PUNCT ")")
(PUNCT ".")
(ID "parse")
(PUNCT "(")
(ID "fp")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ENDMARKER)
