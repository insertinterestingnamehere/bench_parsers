(KEYWORD from)
(ID "collections")
(KEYWORD import)
(ID "Sequence")
(PUNCT ",")
(ID "Iterable")
(NEWLINE)
(KEYWORD from)
(ID "functools")
(KEYWORD import)
(ID "total_ordering")
(NEWLINE)
(KEYWORD import)
(ID "fnmatch")
(NEWLINE)
(KEYWORD import)
(ID "linecache")
(NEWLINE)
(KEYWORD import)
(ID "os")
(PUNCT ".")
(ID "path")
(NEWLINE)
(KEYWORD import)
(ID "pickle")
(NEWLINE)
(KEYWORD from)
(ID "_tracemalloc")
(KEYWORD import)
(PUNCT "*")
(NEWLINE)
(KEYWORD from)
(ID "_tracemalloc")
(KEYWORD import)
(ID "_get_object_traceback")
(PUNCT ",")
(ID "_get_traces")
(NEWLINE)
(KEYWORD def)
(ID "_format_size")
(PUNCT "(")
(ID "size")
(PUNCT ",")
(ID "sign")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "unit")
(KEYWORD in)
(PUNCT "(")
(LIT "B")
(PUNCT ",")
(LIT "KiB")
(PUNCT ",")
(LIT "MiB")
(PUNCT ",")
(LIT "GiB")
(PUNCT ",")
(LIT "TiB")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "abs")
(PUNCT "(")
(ID "size")
(PUNCT ")")
(PUNCT "<")
(LIT 100)
(KEYWORD and)
(ID "unit")
(PUNCT "!=")
(LIT "B")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "sign")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "%+.1f %s")
(PUNCT "%")
(PUNCT "(")
(ID "size")
(PUNCT ",")
(ID "unit")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "%.1f %s")
(PUNCT "%")
(PUNCT "(")
(ID "size")
(PUNCT ",")
(ID "unit")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "abs")
(PUNCT "(")
(ID "size")
(PUNCT ")")
(PUNCT "<")
(LIT 10)
(PUNCT "*")
(LIT 1024)
(KEYWORD or)
(ID "unit")
(PUNCT "==")
(LIT "TiB")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "sign")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "%+.0f %s")
(PUNCT "%")
(PUNCT "(")
(ID "size")
(PUNCT ",")
(ID "unit")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(LIT "%.0f %s")
(PUNCT "%")
(PUNCT "(")
(ID "size")
(PUNCT ",")
(ID "unit")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "size")
(PUNCT "/=")
(LIT 1024)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "Statistic")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "\n    Statistic difference on memory allocations between two Snapshot instance.\n    ")
(NEWLINE)
(ID "__slots__")
(PUNCT "=")
(PUNCT "(")
(LIT "traceback")
(PUNCT ",")
(LIT "size")
(PUNCT ",")
(LIT "count")
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "traceback")
(PUNCT ",")
(ID "size")
(PUNCT ",")
(ID "count")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "traceback")
(PUNCT "=")
(ID "traceback")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "size")
(PUNCT "=")
(ID "size")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "count")
(PUNCT "=")
(ID "count")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__hash__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "hash")
(PUNCT "(")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "traceback")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "size")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "count")
(PUNCT ")")
(PUNCT ")")
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
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "traceback")
(PUNCT "==")
(ID "other")
(PUNCT ".")
(ID "traceback")
(KEYWORD and)
(ID "self")
(PUNCT ".")
(ID "size")
(PUNCT "==")
(ID "other")
(PUNCT ".")
(ID "size")
(KEYWORD and)
(ID "self")
(PUNCT ".")
(ID "count")
(PUNCT "==")
(ID "other")
(PUNCT ".")
(ID "count")
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
(ID "text")
(PUNCT "=")
(PUNCT "(")
(LIT "%s: size=%s, count=%i")
(PUNCT "%")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "traceback")
(PUNCT ",")
(ID "_format_size")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "size")
(PUNCT ",")
(KEYWORD False)
(PUNCT ")")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "count")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "count")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "average")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "size")
(PUNCT "/")
(ID "self")
(PUNCT ".")
(ID "count")
(NEWLINE)
(ID "text")
(PUNCT "+=")
(LIT ", average=%s")
(PUNCT "%")
(ID "_format_size")
(PUNCT "(")
(ID "average")
(PUNCT ",")
(KEYWORD False)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "text")
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
(PUNCT "(")
(LIT "<Statistic traceback=%r size=%i count=%i>")
(PUNCT "%")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "traceback")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "size")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "count")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_sort_key")
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
(ID "size")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "count")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "traceback")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "StatisticDiff")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "\n    Statistic difference on memory allocations between an old and a new\n    Snapshot instance.\n    ")
(NEWLINE)
(ID "__slots__")
(PUNCT "=")
(PUNCT "(")
(LIT "traceback")
(PUNCT ",")
(LIT "size")
(PUNCT ",")
(LIT "size_diff")
(PUNCT ",")
(LIT "count")
(PUNCT ",")
(LIT "count_diff")
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "traceback")
(PUNCT ",")
(ID "size")
(PUNCT ",")
(ID "size_diff")
(PUNCT ",")
(ID "count")
(PUNCT ",")
(ID "count_diff")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "traceback")
(PUNCT "=")
(ID "traceback")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "size")
(PUNCT "=")
(ID "size")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "size_diff")
(PUNCT "=")
(ID "size_diff")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "count")
(PUNCT "=")
(ID "count")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "count_diff")
(PUNCT "=")
(ID "count_diff")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__hash__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "hash")
(PUNCT "(")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "traceback")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "size")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "size_diff")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "count")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "count_diff")
(PUNCT ")")
(PUNCT ")")
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
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "traceback")
(PUNCT "==")
(ID "other")
(PUNCT ".")
(ID "traceback")
(KEYWORD and)
(ID "self")
(PUNCT ".")
(ID "size")
(PUNCT "==")
(ID "other")
(PUNCT ".")
(ID "size")
(KEYWORD and)
(ID "self")
(PUNCT ".")
(ID "size_diff")
(PUNCT "==")
(ID "other")
(PUNCT ".")
(ID "size_diff")
(KEYWORD and)
(ID "self")
(PUNCT ".")
(ID "count")
(PUNCT "==")
(ID "other")
(PUNCT ".")
(ID "count")
(KEYWORD and)
(ID "self")
(PUNCT ".")
(ID "count_diff")
(PUNCT "==")
(ID "other")
(PUNCT ".")
(ID "count_diff")
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
(ID "text")
(PUNCT "=")
(PUNCT "(")
(LIT "%s: size=%s (%s), count=%i (%+i)")
(PUNCT "%")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "traceback")
(PUNCT ",")
(ID "_format_size")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "size")
(PUNCT ",")
(KEYWORD False)
(PUNCT ")")
(PUNCT ",")
(ID "_format_size")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "size_diff")
(PUNCT ",")
(KEYWORD True)
(PUNCT ")")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "count")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "count_diff")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "count")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "average")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "size")
(PUNCT "/")
(ID "self")
(PUNCT ".")
(ID "count")
(NEWLINE)
(ID "text")
(PUNCT "+=")
(LIT ", average=%s")
(PUNCT "%")
(ID "_format_size")
(PUNCT "(")
(ID "average")
(PUNCT ",")
(KEYWORD False)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "text")
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
(PUNCT "(")
(LIT "<StatisticDiff traceback=%r size=%i (%+i) count=%i (%+i)>")
(PUNCT "%")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "traceback")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "size")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "size_diff")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "count")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "count_diff")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_sort_key")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "(")
(ID "abs")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "size_diff")
(PUNCT ")")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "size")
(PUNCT ",")
(ID "abs")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "count_diff")
(PUNCT ")")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "count")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "traceback")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_compare_grouped_stats")
(PUNCT "(")
(ID "old_group")
(PUNCT ",")
(ID "new_group")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "statistics")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "traceback")
(PUNCT ",")
(ID "stat")
(KEYWORD in)
(ID "new_group")
(PUNCT ".")
(ID "items")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "previous")
(PUNCT "=")
(ID "old_group")
(PUNCT ".")
(ID "pop")
(PUNCT "(")
(ID "traceback")
(PUNCT ",")
(KEYWORD None)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "previous")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "stat")
(PUNCT "=")
(ID "StatisticDiff")
(PUNCT "(")
(ID "traceback")
(PUNCT ",")
(ID "stat")
(PUNCT ".")
(ID "size")
(PUNCT ",")
(ID "stat")
(PUNCT ".")
(ID "size")
(PUNCT "-")
(ID "previous")
(PUNCT ".")
(ID "size")
(PUNCT ",")
(ID "stat")
(PUNCT ".")
(ID "count")
(PUNCT ",")
(ID "stat")
(PUNCT ".")
(ID "count")
(PUNCT "-")
(ID "previous")
(PUNCT ".")
(ID "count")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "stat")
(PUNCT "=")
(ID "StatisticDiff")
(PUNCT "(")
(ID "traceback")
(PUNCT ",")
(ID "stat")
(PUNCT ".")
(ID "size")
(PUNCT ",")
(ID "stat")
(PUNCT ".")
(ID "size")
(PUNCT ",")
(ID "stat")
(PUNCT ".")
(ID "count")
(PUNCT ",")
(ID "stat")
(PUNCT ".")
(ID "count")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "statistics")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "stat")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD for)
(ID "traceback")
(PUNCT ",")
(ID "stat")
(KEYWORD in)
(ID "old_group")
(PUNCT ".")
(ID "items")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "stat")
(PUNCT "=")
(ID "StatisticDiff")
(PUNCT "(")
(ID "traceback")
(PUNCT ",")
(LIT 0)
(PUNCT ",")
(PUNCT "-")
(ID "stat")
(PUNCT ".")
(ID "size")
(PUNCT ",")
(LIT 0)
(PUNCT ",")
(PUNCT "-")
(ID "stat")
(PUNCT ".")
(ID "count")
(PUNCT ")")
(NEWLINE)
(ID "statistics")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "stat")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "statistics")
(NEWLINE)
(DEDENT)
(PUNCT "@")
(ID "total_ordering")
(NEWLINE)
(KEYWORD class)
(ID "Frame")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "\n    Frame of a traceback.\n    ")
(NEWLINE)
(ID "__slots__")
(PUNCT "=")
(PUNCT "(")
(LIT "_frame")
(PUNCT ",")
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "frame")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_frame")
(PUNCT "=")
(ID "frame")
(NEWLINE)
(DEDENT)
(PUNCT "@")
(ID "property")
(NEWLINE)
(KEYWORD def)
(ID "filename")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_frame")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(PUNCT "@")
(ID "property")
(NEWLINE)
(KEYWORD def)
(ID "lineno")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_frame")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
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
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_frame")
(PUNCT "==")
(ID "other")
(PUNCT ".")
(ID "_frame")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__lt__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "other")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_frame")
(PUNCT "<")
(ID "other")
(PUNCT ".")
(ID "_frame")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__hash__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "hash")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_frame")
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
(LIT "%s:%s")
(PUNCT "%")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "filename")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "lineno")
(PUNCT ")")
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
(LIT "<Frame filename=%r lineno=%r>")
(PUNCT "%")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "filename")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "lineno")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(PUNCT "@")
(ID "total_ordering")
(NEWLINE)
(KEYWORD class)
(ID "Traceback")
(PUNCT "(")
(ID "Sequence")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "\n    Sequence of Frame instances sorted from the most recent frame\n    to the oldest frame.\n    ")
(NEWLINE)
(ID "__slots__")
(PUNCT "=")
(PUNCT "(")
(LIT "_frames")
(PUNCT ",")
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "frames")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "Sequence")
(PUNCT ".")
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_frames")
(PUNCT "=")
(ID "frames")
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
(KEYWORD return)
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_frames")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__getitem__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "index")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "index")
(PUNCT ",")
(ID "slice")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "tuple")
(PUNCT "(")
(ID "Frame")
(PUNCT "(")
(ID "trace")
(PUNCT ")")
(KEYWORD for)
(ID "trace")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_frames")
(PUNCT "[")
(ID "index")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "Frame")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_frames")
(PUNCT "[")
(ID "index")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "__contains__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "frame")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "frame")
(PUNCT ".")
(ID "_frame")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_frames")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__hash__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "hash")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_frames")
(PUNCT ")")
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
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_frames")
(PUNCT "==")
(ID "other")
(PUNCT ".")
(ID "_frames")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__lt__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "other")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_frames")
(PUNCT "<")
(ID "other")
(PUNCT ".")
(ID "_frames")
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
(ID "str")
(PUNCT "(")
(ID "self")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ")")
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
(LIT "<Traceback %r>")
(PUNCT "%")
(PUNCT "(")
(ID "tuple")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ",")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "format")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "limit")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "lines")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "limit")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(KEYWORD and)
(ID "limit")
(PUNCT "<")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "lines")
(NEWLINE)
(DEDENT)
(KEYWORD for)
(ID "frame")
(KEYWORD in)
(ID "self")
(PUNCT "[")
(PUNCT ":")
(ID "limit")
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "lines")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "  File \"%s\", line %s")
(PUNCT "%")
(PUNCT "(")
(ID "frame")
(PUNCT ".")
(ID "filename")
(PUNCT ",")
(ID "frame")
(PUNCT ".")
(ID "lineno")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "line")
(PUNCT "=")
(ID "linecache")
(PUNCT ".")
(ID "getline")
(PUNCT "(")
(ID "frame")
(PUNCT ".")
(ID "filename")
(PUNCT ",")
(ID "frame")
(PUNCT ".")
(ID "lineno")
(PUNCT ")")
(PUNCT ".")
(ID "strip")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "line")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "lines")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(LIT "    %s")
(PUNCT "%")
(ID "line")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "lines")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "get_object_traceback")
(PUNCT "(")
(ID "obj")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "\n    Get the traceback where the Python object *obj* was allocated.\n    Return a Traceback instance.\n\n    Return None if the tracemalloc module is not tracing memory allocations or\n    did not trace the allocation of the object.\n    ")
(NEWLINE)
(ID "frames")
(PUNCT "=")
(ID "_get_object_traceback")
(PUNCT "(")
(ID "obj")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "frames")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "Traceback")
(PUNCT "(")
(ID "frames")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD None)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "Trace")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "\n    Trace of a memory block.\n    ")
(NEWLINE)
(ID "__slots__")
(PUNCT "=")
(PUNCT "(")
(LIT "_trace")
(PUNCT ",")
(PUNCT ")")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "trace")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_trace")
(PUNCT "=")
(ID "trace")
(NEWLINE)
(DEDENT)
(PUNCT "@")
(ID "property")
(NEWLINE)
(KEYWORD def)
(ID "size")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_trace")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(PUNCT "@")
(ID "property")
(NEWLINE)
(KEYWORD def)
(ID "traceback")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "Traceback")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_trace")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ")")
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
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_trace")
(PUNCT "==")
(ID "other")
(PUNCT ".")
(ID "_trace")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__hash__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "hash")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_trace")
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
(LIT "%s: %s")
(PUNCT "%")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "traceback")
(PUNCT ",")
(ID "_format_size")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "size")
(PUNCT ",")
(KEYWORD False)
(PUNCT ")")
(PUNCT ")")
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
(PUNCT "(")
(LIT "<Trace size=%s, traceback=%r>")
(PUNCT "%")
(PUNCT "(")
(ID "_format_size")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "size")
(PUNCT ",")
(KEYWORD False)
(PUNCT ")")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "traceback")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "_Traces")
(PUNCT "(")
(ID "Sequence")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "traces")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "Sequence")
(PUNCT ".")
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_traces")
(PUNCT "=")
(ID "traces")
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
(KEYWORD return)
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_traces")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__getitem__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "index")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "index")
(PUNCT ",")
(ID "slice")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "tuple")
(PUNCT "(")
(ID "Trace")
(PUNCT "(")
(ID "trace")
(PUNCT ")")
(KEYWORD for)
(ID "trace")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_traces")
(PUNCT "[")
(ID "index")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "Trace")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_traces")
(PUNCT "[")
(ID "index")
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "__contains__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "trace")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "trace")
(PUNCT ".")
(ID "_trace")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_traces")
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
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_traces")
(PUNCT "==")
(ID "other")
(PUNCT ".")
(ID "_traces")
(PUNCT ")")
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
(LIT "<Traces len=%s>")
(PUNCT "%")
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_normalize_filename")
(PUNCT "(")
(ID "filename")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "filename")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "path")
(PUNCT ".")
(ID "normcase")
(PUNCT "(")
(ID "filename")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "filename")
(PUNCT ".")
(ID "endswith")
(PUNCT "(")
(PUNCT "(")
(LIT ".pyc")
(PUNCT ",")
(LIT ".pyo")
(PUNCT ")")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "filename")
(PUNCT "=")
(ID "filename")
(PUNCT "[")
(PUNCT ":")
(PUNCT "-")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "filename")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "Filter")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "inclusive")
(PUNCT ",")
(ID "filename_pattern")
(PUNCT ",")
(ID "lineno")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "all_frames")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "inclusive")
(PUNCT "=")
(ID "inclusive")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_filename_pattern")
(PUNCT "=")
(ID "_normalize_filename")
(PUNCT "(")
(ID "filename_pattern")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "lineno")
(PUNCT "=")
(ID "lineno")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "all_frames")
(PUNCT "=")
(ID "all_frames")
(NEWLINE)
(DEDENT)
(PUNCT "@")
(ID "property")
(NEWLINE)
(KEYWORD def)
(ID "filename_pattern")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_filename_pattern")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__match_frame")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "filename")
(PUNCT ",")
(ID "lineno")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "filename")
(PUNCT "=")
(ID "_normalize_filename")
(PUNCT "(")
(ID "filename")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "fnmatch")
(PUNCT ".")
(ID "fnmatch")
(PUNCT "(")
(ID "filename")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "_filename_pattern")
(PUNCT ")")
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
(ID "lineno")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD True)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "(")
(ID "lineno")
(PUNCT "==")
(ID "self")
(PUNCT ".")
(ID "lineno")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_match_frame")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "filename")
(PUNCT ",")
(ID "lineno")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "__match_frame")
(PUNCT "(")
(ID "filename")
(PUNCT ",")
(ID "lineno")
(PUNCT ")")
(PUNCT "^")
(PUNCT "(")
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "inclusive")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_match_traceback")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "traceback")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "all_frames")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "any")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "__match_frame")
(PUNCT "(")
(ID "filename")
(PUNCT ",")
(ID "lineno")
(PUNCT ")")
(KEYWORD for)
(ID "filename")
(PUNCT ",")
(ID "lineno")
(KEYWORD in)
(ID "traceback")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "inclusive")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(PUNCT "(")
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "inclusive")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "filename")
(PUNCT ",")
(ID "lineno")
(PUNCT "=")
(ID "traceback")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_match_frame")
(PUNCT "(")
(ID "filename")
(PUNCT ",")
(ID "lineno")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "Snapshot")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "\n    Snapshot of traces of memory blocks allocated by Python.\n    ")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "traces")
(PUNCT ",")
(ID "traceback_limit")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "traces")
(PUNCT "=")
(ID "_Traces")
(PUNCT "(")
(ID "traces")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "traceback_limit")
(PUNCT "=")
(ID "traceback_limit")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "dump")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "filename")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "\n        Write the snapshot into a file.\n        ")
(NEWLINE)
(KEYWORD with)
(ID "open")
(PUNCT "(")
(ID "filename")
(PUNCT ",")
(LIT "wb")
(PUNCT ")")
(KEYWORD as)
(ID "fp")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "pickle")
(PUNCT ".")
(ID "dump")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "fp")
(PUNCT ",")
(ID "pickle")
(PUNCT ".")
(ID "HIGHEST_PROTOCOL")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(PUNCT "@")
(ID "staticmethod")
(NEWLINE)
(KEYWORD def)
(ID "load")
(PUNCT "(")
(ID "filename")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "\n        Load a snapshot from a file.\n        ")
(NEWLINE)
(KEYWORD with)
(ID "open")
(PUNCT "(")
(ID "filename")
(PUNCT ",")
(LIT "rb")
(PUNCT ")")
(KEYWORD as)
(ID "fp")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "pickle")
(PUNCT ".")
(ID "load")
(PUNCT "(")
(ID "fp")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_filter_trace")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "include_filters")
(PUNCT ",")
(ID "exclude_filters")
(PUNCT ",")
(ID "trace")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "traceback")
(PUNCT "=")
(ID "trace")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(KEYWORD if)
(ID "include_filters")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(ID "any")
(PUNCT "(")
(ID "trace_filter")
(PUNCT ".")
(ID "_match_traceback")
(PUNCT "(")
(ID "traceback")
(PUNCT ")")
(KEYWORD for)
(ID "trace_filter")
(KEYWORD in)
(ID "include_filters")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD False)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "exclude_filters")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "any")
(PUNCT "(")
(KEYWORD not)
(ID "trace_filter")
(PUNCT ".")
(ID "_match_traceback")
(PUNCT "(")
(ID "traceback")
(PUNCT ")")
(KEYWORD for)
(ID "trace_filter")
(KEYWORD in)
(ID "exclude_filters")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD False)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(KEYWORD True)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "filter_traces")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "filters")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "\n        Create a new Snapshot instance with a filtered traces sequence, filters\n        is a list of Filter instances.  If filters is an empty list, return a\n        new Snapshot instance with a copy of the traces.\n        ")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "isinstance")
(PUNCT "(")
(ID "filters")
(PUNCT ",")
(ID "Iterable")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "TypeError")
(PUNCT "(")
(LIT "filters must be a list of filters, not %s")
(PUNCT "%")
(ID "type")
(PUNCT "(")
(ID "filters")
(PUNCT ")")
(PUNCT ".")
(ID "__name__")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "filters")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "include_filters")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "exclude_filters")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(KEYWORD for)
(ID "trace_filter")
(KEYWORD in)
(ID "filters")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "trace_filter")
(PUNCT ".")
(ID "inclusive")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "include_filters")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "trace_filter")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "exclude_filters")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "trace_filter")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "new_traces")
(PUNCT "=")
(PUNCT "[")
(ID "trace")
(KEYWORD for)
(ID "trace")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "traces")
(PUNCT ".")
(ID "_traces")
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_filter_trace")
(PUNCT "(")
(ID "include_filters")
(PUNCT ",")
(ID "exclude_filters")
(PUNCT ",")
(ID "trace")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "new_traces")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "traces")
(PUNCT ".")
(ID "_traces")
(PUNCT ".")
(ID "copy")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "Snapshot")
(PUNCT "(")
(ID "new_traces")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "traceback_limit")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_group_by")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "key_type")
(PUNCT ",")
(ID "cumulative")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "key_type")
(KEYWORD not)
(KEYWORD in)
(PUNCT "(")
(LIT "traceback")
(PUNCT ",")
(LIT "filename")
(PUNCT ",")
(LIT "lineno")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "unknown key_type: %r")
(PUNCT "%")
(PUNCT "(")
(ID "key_type")
(PUNCT ",")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "cumulative")
(KEYWORD and)
(ID "key_type")
(KEYWORD not)
(KEYWORD in)
(PUNCT "(")
(LIT "lineno")
(PUNCT ",")
(LIT "filename")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "cumulative mode cannot by used ")
(LIT "with key type %r")
(PUNCT "%")
(ID "key_type")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "stats")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(ID "tracebacks")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "cumulative")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "trace")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "traces")
(PUNCT ".")
(ID "_traces")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "size")
(PUNCT ",")
(ID "trace_traceback")
(PUNCT "=")
(ID "trace")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "traceback")
(PUNCT "=")
(ID "tracebacks")
(PUNCT "[")
(ID "trace_traceback")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "KeyError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "key_type")
(PUNCT "==")
(LIT "traceback")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "frames")
(PUNCT "=")
(ID "trace_traceback")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "key_type")
(PUNCT "==")
(LIT "lineno")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "frames")
(PUNCT "=")
(ID "trace_traceback")
(PUNCT "[")
(PUNCT ":")
(LIT 1)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "frames")
(PUNCT "=")
(PUNCT "(")
(PUNCT "(")
(ID "trace_traceback")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ",")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "traceback")
(PUNCT "=")
(ID "Traceback")
(PUNCT "(")
(ID "frames")
(PUNCT ")")
(NEWLINE)
(ID "tracebacks")
(PUNCT "[")
(ID "trace_traceback")
(PUNCT "]")
(PUNCT "=")
(ID "traceback")
(NEWLINE)
(DEDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "stat")
(PUNCT "=")
(ID "stats")
(PUNCT "[")
(ID "traceback")
(PUNCT "]")
(NEWLINE)
(ID "stat")
(PUNCT ".")
(ID "size")
(PUNCT "+=")
(ID "size")
(NEWLINE)
(ID "stat")
(PUNCT ".")
(ID "count")
(PUNCT "+=")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "KeyError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "stats")
(PUNCT "[")
(ID "traceback")
(PUNCT "]")
(PUNCT "=")
(ID "Statistic")
(PUNCT "(")
(ID "traceback")
(PUNCT ",")
(ID "size")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "trace")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "traces")
(PUNCT ".")
(ID "_traces")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "size")
(PUNCT ",")
(ID "trace_traceback")
(PUNCT "=")
(ID "trace")
(NEWLINE)
(KEYWORD for)
(ID "frame")
(KEYWORD in)
(ID "trace_traceback")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "traceback")
(PUNCT "=")
(ID "tracebacks")
(PUNCT "[")
(ID "frame")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "KeyError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "key_type")
(PUNCT "==")
(LIT "lineno")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "frames")
(PUNCT "=")
(PUNCT "(")
(ID "frame")
(PUNCT ",")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "frames")
(PUNCT "=")
(PUNCT "(")
(PUNCT "(")
(ID "frame")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ",")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "traceback")
(PUNCT "=")
(ID "Traceback")
(PUNCT "(")
(ID "frames")
(PUNCT ")")
(NEWLINE)
(ID "tracebacks")
(PUNCT "[")
(ID "frame")
(PUNCT "]")
(PUNCT "=")
(ID "traceback")
(NEWLINE)
(DEDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "stat")
(PUNCT "=")
(ID "stats")
(PUNCT "[")
(ID "traceback")
(PUNCT "]")
(NEWLINE)
(ID "stat")
(PUNCT ".")
(ID "size")
(PUNCT "+=")
(ID "size")
(NEWLINE)
(ID "stat")
(PUNCT ".")
(ID "count")
(PUNCT "+=")
(LIT 1)
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "KeyError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "stats")
(PUNCT "[")
(ID "traceback")
(PUNCT "]")
(PUNCT "=")
(ID "Statistic")
(PUNCT "(")
(ID "traceback")
(PUNCT ",")
(ID "size")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "stats")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "statistics")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "key_type")
(PUNCT ",")
(ID "cumulative")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "\n        Group statistics by key_type. Return a sorted list of Statistic\n        instances.\n        ")
(NEWLINE)
(ID "grouped")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_group_by")
(PUNCT "(")
(ID "key_type")
(PUNCT ",")
(ID "cumulative")
(PUNCT ")")
(NEWLINE)
(ID "statistics")
(PUNCT "=")
(ID "list")
(PUNCT "(")
(ID "grouped")
(PUNCT ".")
(ID "values")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "statistics")
(PUNCT ".")
(ID "sort")
(PUNCT "(")
(ID "reverse")
(PUNCT "=")
(KEYWORD True)
(PUNCT ",")
(ID "key")
(PUNCT "=")
(ID "Statistic")
(PUNCT ".")
(ID "_sort_key")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "statistics")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "compare_to")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "old_snapshot")
(PUNCT ",")
(ID "key_type")
(PUNCT ",")
(ID "cumulative")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "\n        Compute the differences with an old snapshot old_snapshot. Get\n        statistics as a sorted list of StatisticDiff instances, grouped by\n        group_by.\n        ")
(NEWLINE)
(ID "new_group")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_group_by")
(PUNCT "(")
(ID "key_type")
(PUNCT ",")
(ID "cumulative")
(PUNCT ")")
(NEWLINE)
(ID "old_group")
(PUNCT "=")
(ID "old_snapshot")
(PUNCT ".")
(ID "_group_by")
(PUNCT "(")
(ID "key_type")
(PUNCT ",")
(ID "cumulative")
(PUNCT ")")
(NEWLINE)
(ID "statistics")
(PUNCT "=")
(ID "_compare_grouped_stats")
(PUNCT "(")
(ID "old_group")
(PUNCT ",")
(ID "new_group")
(PUNCT ")")
(NEWLINE)
(ID "statistics")
(PUNCT ".")
(ID "sort")
(PUNCT "(")
(ID "reverse")
(PUNCT "=")
(KEYWORD True)
(PUNCT ",")
(ID "key")
(PUNCT "=")
(ID "StatisticDiff")
(PUNCT ".")
(ID "_sort_key")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "statistics")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "take_snapshot")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "\n    Take a snapshot of traces of memory blocks allocated by Python.\n    ")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "is_tracing")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "RuntimeError")
(PUNCT "(")
(LIT "the tracemalloc module must be tracing memory ")
(LIT "allocations to take a snapshot")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "traces")
(PUNCT "=")
(ID "_get_traces")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "traceback_limit")
(PUNCT "=")
(ID "get_traceback_limit")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "Snapshot")
(PUNCT "(")
(ID "traces")
(PUNCT ",")
(ID "traceback_limit")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ENDMARKER)
