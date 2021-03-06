(LIT " robotparser.py\n\n    Copyright (C) 2000  Bastian Kleineidam\n\n    You can choose between two licenses when using this package:\n    1) GNU GPLv2\n    2) PSF license for Python 2.2\n\n    The robots.txt Exclusion Protocol is implemented as specified in\n    http://www.robotstxt.org/norobots-rfc.txt\n")
(NEWLINE)
(KEYWORD import)
(ID "urllib")
(PUNCT ".")
(ID "parse")
(PUNCT ",")
(ID "urllib")
(PUNCT ".")
(ID "request")
(NEWLINE)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "RobotFileParser")
(PUNCT "]")
(NEWLINE)
(KEYWORD class)
(ID "RobotFileParser")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT " This class provides a set of methods to read, parse and answer\n    questions about a single robots.txt file.\n\n    ")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "url")
(PUNCT "=")
(LIT "")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "entries")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "default_entry")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "disallow_all")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "allow_all")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "set_url")
(PUNCT "(")
(ID "url")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "last_checked")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "mtime")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Returns the time the robots.txt file was last fetched.\n\n        This is useful for long-running web spiders that need to\n        check for new robots.txt files periodically.\n\n        ")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "last_checked")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "modified")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Sets the time the robots.txt file was last fetched to the\n        current time.\n\n        ")
(NEWLINE)
(KEYWORD import)
(ID "time")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "last_checked")
(PUNCT "=")
(ID "time")
(PUNCT ".")
(ID "time")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "set_url")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "url")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Sets the URL referring to a robots.txt file.")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "url")
(PUNCT "=")
(ID "url")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "host")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "path")
(PUNCT "=")
(ID "urllib")
(PUNCT ".")
(ID "parse")
(PUNCT ".")
(ID "urlparse")
(PUNCT "(")
(ID "url")
(PUNCT ")")
(PUNCT "[")
(LIT 1)
(PUNCT ":")
(LIT 3)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "read")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Reads the robots.txt URL and feeds it to the parser.")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "f")
(PUNCT "=")
(ID "urllib")
(PUNCT ".")
(ID "request")
(PUNCT ".")
(ID "urlopen")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "url")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "urllib")
(PUNCT ".")
(ID "error")
(PUNCT ".")
(ID "HTTPError")
(KEYWORD as)
(ID "err")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "err")
(PUNCT ".")
(ID "code")
(KEYWORD in)
(PUNCT "(")
(LIT 401)
(PUNCT ",")
(LIT 403)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "disallow_all")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "err")
(PUNCT ".")
(ID "code")
(PUNCT ">=")
(LIT 400)
(KEYWORD and)
(ID "err")
(PUNCT ".")
(ID "code")
(PUNCT "<")
(LIT 500)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "allow_all")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "raw")
(PUNCT "=")
(ID "f")
(PUNCT ".")
(ID "read")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "parse")
(PUNCT "(")
(ID "raw")
(PUNCT ".")
(ID "decode")
(PUNCT "(")
(LIT "utf-8")
(PUNCT ")")
(PUNCT ".")
(ID "splitlines")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_add_entry")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "entry")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(LIT "*")
(KEYWORD in)
(ID "entry")
(PUNCT ".")
(ID "useragents")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "default_entry")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "default_entry")
(PUNCT "=")
(ID "entry")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "entries")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "entry")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "parse")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "lines")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Parse the input lines from a robots.txt file.\n\n        We allow that a user-agent: line is not preceded by\n        one or more blank lines.\n        ")
(NEWLINE)
(ID "state")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(ID "entry")
(PUNCT "=")
(ID "Entry")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "modified")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "line")
(KEYWORD in)
(ID "lines")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(ID "line")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "state")
(PUNCT "==")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "entry")
(PUNCT "=")
(ID "Entry")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "state")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "state")
(PUNCT "==")
(LIT 2)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_add_entry")
(PUNCT "(")
(ID "entry")
(PUNCT ")")
(NEWLINE)
(ID "entry")
(PUNCT "=")
(ID "Entry")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "state")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "i")
(PUNCT "=")
(ID "line")
(PUNCT ".")
(ID "find")
(PUNCT "(")
(LIT "#")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "i")
(PUNCT ">=")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "line")
(PUNCT "=")
(ID "line")
(PUNCT "[")
(PUNCT ":")
(ID "i")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(ID "line")
(PUNCT "=")
(ID "line")
(PUNCT ".")
(ID "strip")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "line")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD continue)
(NEWLINE)
(DEDENT)
(ID "line")
(PUNCT "=")
(ID "line")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT ":")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(PUNCT "==")
(LIT 2)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "line")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "=")
(ID "line")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ".")
(ID "strip")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "lower")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "line")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT "=")
(ID "urllib")
(PUNCT ".")
(ID "parse")
(PUNCT ".")
(ID "unquote")
(PUNCT "(")
(ID "line")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ".")
(ID "strip")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "line")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "==")
(LIT "user-agent")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "state")
(PUNCT "==")
(LIT 2)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_add_entry")
(PUNCT "(")
(ID "entry")
(PUNCT ")")
(NEWLINE)
(ID "entry")
(PUNCT "=")
(ID "Entry")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "entry")
(PUNCT ".")
(ID "useragents")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "line")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(ID "state")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "line")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "==")
(LIT "disallow")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "state")
(PUNCT "!=")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "entry")
(PUNCT ".")
(ID "rulelines")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "RuleLine")
(PUNCT "(")
(ID "line")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ",")
(KEYWORD False)
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "state")
(PUNCT "=")
(LIT 2)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(ID "line")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "==")
(LIT "allow")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "state")
(PUNCT "!=")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "entry")
(PUNCT ".")
(ID "rulelines")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "RuleLine")
(PUNCT "(")
(ID "line")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ",")
(KEYWORD True)
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "state")
(PUNCT "=")
(LIT 2)
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "state")
(PUNCT "==")
(LIT 2)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_add_entry")
(PUNCT "(")
(ID "entry")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "can_fetch")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "useragent")
(PUNCT ",")
(ID "url")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "using the parsed robots.txt decide if useragent can fetch url")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "disallow_all")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "allow_all")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD True)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "last_checked")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD False)
(NEWLINE)
(DEDENT)
(ID "parsed_url")
(PUNCT "=")
(ID "urllib")
(PUNCT ".")
(ID "parse")
(PUNCT ".")
(ID "urlparse")
(PUNCT "(")
(ID "urllib")
(PUNCT ".")
(ID "parse")
(PUNCT ".")
(ID "unquote")
(PUNCT "(")
(ID "url")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "url")
(PUNCT "=")
(ID "urllib")
(PUNCT ".")
(ID "parse")
(PUNCT ".")
(ID "urlunparse")
(PUNCT "(")
(PUNCT "(")
(LIT "")
(PUNCT ",")
(LIT "")
(PUNCT ",")
(ID "parsed_url")
(PUNCT ".")
(ID "path")
(PUNCT ",")
(ID "parsed_url")
(PUNCT ".")
(ID "params")
(PUNCT ",")
(ID "parsed_url")
(PUNCT ".")
(ID "query")
(PUNCT ",")
(ID "parsed_url")
(PUNCT ".")
(ID "fragment")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "url")
(PUNCT "=")
(ID "urllib")
(PUNCT ".")
(ID "parse")
(PUNCT ".")
(ID "quote")
(PUNCT "(")
(ID "url")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "url")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "url")
(PUNCT "=")
(LIT "/")
(NEWLINE)
(DEDENT)
(KEYWORD for)
(ID "entry")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "entries")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "entry")
(PUNCT ".")
(ID "applies_to")
(PUNCT "(")
(ID "useragent")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "entry")
(PUNCT ".")
(ID "allowance")
(PUNCT "(")
(ID "url")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "default_entry")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "default_entry")
(PUNCT ".")
(ID "allowance")
(PUNCT "(")
(ID "url")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(KEYWORD True)
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
(LIT "")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(PUNCT "[")
(ID "str")
(PUNCT "(")
(ID "entry")
(PUNCT ")")
(PUNCT "+")
(LIT "\n")
(KEYWORD for)
(ID "entry")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "entries")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "RuleLine")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A rule line is a single \"Allow:\" (allowance==True) or \"Disallow:\"\n       (allowance==False) followed by a path.")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "path")
(PUNCT ",")
(ID "allowance")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "path")
(PUNCT "==")
(LIT "")
(KEYWORD and)
(KEYWORD not)
(ID "allowance")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "allowance")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(DEDENT)
(ID "path")
(PUNCT "=")
(ID "urllib")
(PUNCT ".")
(ID "parse")
(PUNCT ".")
(ID "urlunparse")
(PUNCT "(")
(ID "urllib")
(PUNCT ".")
(ID "parse")
(PUNCT ".")
(ID "urlparse")
(PUNCT "(")
(ID "path")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "path")
(PUNCT "=")
(ID "urllib")
(PUNCT ".")
(ID "parse")
(PUNCT ".")
(ID "quote")
(PUNCT "(")
(ID "path")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "allowance")
(PUNCT "=")
(ID "allowance")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "applies_to")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "filename")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "path")
(PUNCT "==")
(LIT "*")
(KEYWORD or)
(ID "filename")
(PUNCT ".")
(ID "startswith")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "path")
(PUNCT ")")
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
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "allowance")
(KEYWORD and)
(LIT "Allow")
(KEYWORD or)
(LIT "Disallow")
(PUNCT ")")
(PUNCT "+")
(LIT ": ")
(PUNCT "+")
(ID "self")
(PUNCT ".")
(ID "path")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "Entry")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "An entry has one or more user-agents and zero or more rulelines")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "useragents")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "rulelines")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
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
(ID "ret")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "agent")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "useragents")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ret")
(PUNCT ".")
(ID "extend")
(PUNCT "(")
(PUNCT "[")
(LIT "User-agent: ")
(PUNCT ",")
(ID "agent")
(PUNCT ",")
(LIT "\n")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD for)
(ID "line")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "rulelines")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "ret")
(PUNCT ".")
(ID "extend")
(PUNCT "(")
(PUNCT "[")
(ID "str")
(PUNCT "(")
(ID "line")
(PUNCT ")")
(PUNCT ",")
(LIT "\n")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(LIT "")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "ret")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "applies_to")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "useragent")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "check if this entry applies to the specified agent")
(NEWLINE)
(ID "useragent")
(PUNCT "=")
(ID "useragent")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT "/")
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ".")
(ID "lower")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "agent")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "useragents")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "agent")
(PUNCT "==")
(LIT "*")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD True)
(NEWLINE)
(DEDENT)
(ID "agent")
(PUNCT "=")
(ID "agent")
(PUNCT ".")
(ID "lower")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "agent")
(KEYWORD in)
(ID "useragent")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD True)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "allowance")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "filename")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Preconditions:\n        - our agent applies to this entry\n        - filename is URL decoded")
(NEWLINE)
(KEYWORD for)
(ID "line")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "rulelines")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "line")
(PUNCT ".")
(ID "applies_to")
(PUNCT "(")
(ID "filename")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "line")
(PUNCT ".")
(ID "allowance")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(KEYWORD True)
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)
