(LIT "\nVarious Windows specific bits and pieces\n")
(NEWLINE)
(KEYWORD import)
(ID "sys")
(NEWLINE)
(KEYWORD if)
(ID "sys")
(PUNCT ".")
(ID "platform")
(PUNCT "!=")
(LIT "win32")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ImportError")
(PUNCT "(")
(LIT "win32 only")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD import)
(ID "_winapi")
(NEWLINE)
(KEYWORD import)
(ID "itertools")
(NEWLINE)
(KEYWORD import)
(ID "msvcrt")
(NEWLINE)
(KEYWORD import)
(ID "os")
(NEWLINE)
(KEYWORD import)
(ID "socket")
(NEWLINE)
(KEYWORD import)
(ID "subprocess")
(NEWLINE)
(KEYWORD import)
(ID "tempfile")
(NEWLINE)
(KEYWORD import)
(ID "warnings")
(NEWLINE)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "socketpair")
(PUNCT ",")
(LIT "pipe")
(PUNCT ",")
(LIT "Popen")
(PUNCT ",")
(LIT "PIPE")
(PUNCT ",")
(LIT "PipeHandle")
(PUNCT "]")
(NEWLINE)
(ID "BUFSIZE")
(PUNCT "=")
(LIT 8192)
(NEWLINE)
(ID "PIPE")
(PUNCT "=")
(ID "subprocess")
(PUNCT ".")
(ID "PIPE")
(NEWLINE)
(ID "STDOUT")
(PUNCT "=")
(ID "subprocess")
(PUNCT ".")
(ID "STDOUT")
(NEWLINE)
(ID "_mmap_counter")
(PUNCT "=")
(ID "itertools")
(PUNCT ".")
(ID "count")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "hasattr")
(PUNCT "(")
(ID "socket")
(PUNCT ",")
(LIT "socketpair")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "socketpair")
(PUNCT "=")
(ID "socket")
(PUNCT ".")
(ID "socketpair")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD def)
(ID "socketpair")
(PUNCT "(")
(ID "family")
(PUNCT "=")
(ID "socket")
(PUNCT ".")
(ID "AF_INET")
(PUNCT ",")
(ID "type")
(PUNCT "=")
(ID "socket")
(PUNCT ".")
(ID "SOCK_STREAM")
(PUNCT ",")
(ID "proto")
(PUNCT "=")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A socket pair usable as a self-pipe, for Windows.\n\n        Origin: https://gist.github.com/4325783, by Geert Jansen.\n        Public domain.\n        ")
(NEWLINE)
(KEYWORD if)
(ID "family")
(PUNCT "==")
(ID "socket")
(PUNCT ".")
(ID "AF_INET")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "host")
(PUNCT "=")
(LIT "127.0.0.1")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "family")
(PUNCT "==")
(ID "socket")
(PUNCT ".")
(ID "AF_INET6")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "host")
(PUNCT "=")
(LIT "::1")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "Only AF_INET and AF_INET6 socket address ")
(LIT "families are supported")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "type")
(PUNCT "!=")
(ID "socket")
(PUNCT ".")
(ID "SOCK_STREAM")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "Only SOCK_STREAM socket type is supported")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "proto")
(PUNCT "!=")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "Only protocol zero is supported")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "lsock")
(PUNCT "=")
(ID "socket")
(PUNCT ".")
(ID "socket")
(PUNCT "(")
(ID "family")
(PUNCT ",")
(ID "type")
(PUNCT ",")
(ID "proto")
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "lsock")
(PUNCT ".")
(ID "bind")
(PUNCT "(")
(PUNCT "(")
(ID "host")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "lsock")
(PUNCT ".")
(ID "listen")
(PUNCT "(")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(ID "addr")
(PUNCT ",")
(ID "port")
(PUNCT "=")
(ID "lsock")
(PUNCT ".")
(ID "getsockname")
(PUNCT "(")
(PUNCT ")")
(PUNCT "[")
(PUNCT ":")
(LIT 2)
(PUNCT "]")
(NEWLINE)
(ID "csock")
(PUNCT "=")
(ID "socket")
(PUNCT ".")
(ID "socket")
(PUNCT "(")
(ID "family")
(PUNCT ",")
(ID "type")
(PUNCT ",")
(ID "proto")
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "csock")
(PUNCT ".")
(ID "setblocking")
(PUNCT "(")
(KEYWORD False)
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "csock")
(PUNCT ".")
(ID "connect")
(PUNCT "(")
(PUNCT "(")
(ID "addr")
(PUNCT ",")
(ID "port")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(PUNCT "(")
(ID "BlockingIOError")
(PUNCT ",")
(ID "InterruptedError")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(ID "csock")
(PUNCT ".")
(ID "setblocking")
(PUNCT "(")
(KEYWORD True)
(PUNCT ")")
(NEWLINE)
(ID "ssock")
(PUNCT ",")
(ID "_")
(PUNCT "=")
(ID "lsock")
(PUNCT ".")
(ID "accept")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "csock")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD raise)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "lsock")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(PUNCT "(")
(ID "ssock")
(PUNCT ",")
(ID "csock")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "pipe")
(PUNCT "(")
(PUNCT "*")
(PUNCT ",")
(ID "duplex")
(PUNCT "=")
(KEYWORD False)
(PUNCT ",")
(ID "overlapped")
(PUNCT "=")
(PUNCT "(")
(KEYWORD True)
(PUNCT ",")
(KEYWORD True)
(PUNCT ")")
(PUNCT ",")
(ID "bufsize")
(PUNCT "=")
(ID "BUFSIZE")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Like os.pipe() but with overlapped support and using handles not fds.")
(NEWLINE)
(ID "address")
(PUNCT "=")
(ID "tempfile")
(PUNCT ".")
(ID "mktemp")
(PUNCT "(")
(ID "prefix")
(PUNCT "=")
(LIT "\\\\.\\pipe\\python-pipe-%d-%d-")
(PUNCT "%")
(PUNCT "(")
(ID "os")
(PUNCT ".")
(ID "getpid")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(ID "next")
(PUNCT "(")
(ID "_mmap_counter")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "duplex")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "openmode")
(PUNCT "=")
(ID "_winapi")
(PUNCT ".")
(ID "PIPE_ACCESS_DUPLEX")
(NEWLINE)
(ID "access")
(PUNCT "=")
(ID "_winapi")
(PUNCT ".")
(ID "GENERIC_READ")
(PUNCT "|")
(ID "_winapi")
(PUNCT ".")
(ID "GENERIC_WRITE")
(NEWLINE)
(ID "obsize")
(PUNCT ",")
(ID "ibsize")
(PUNCT "=")
(ID "bufsize")
(PUNCT ",")
(ID "bufsize")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "openmode")
(PUNCT "=")
(ID "_winapi")
(PUNCT ".")
(ID "PIPE_ACCESS_INBOUND")
(NEWLINE)
(ID "access")
(PUNCT "=")
(ID "_winapi")
(PUNCT ".")
(ID "GENERIC_WRITE")
(NEWLINE)
(ID "obsize")
(PUNCT ",")
(ID "ibsize")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "bufsize")
(NEWLINE)
(DEDENT)
(ID "openmode")
(PUNCT "|=")
(ID "_winapi")
(PUNCT ".")
(ID "FILE_FLAG_FIRST_PIPE_INSTANCE")
(NEWLINE)
(KEYWORD if)
(ID "overlapped")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "openmode")
(PUNCT "|=")
(ID "_winapi")
(PUNCT ".")
(ID "FILE_FLAG_OVERLAPPED")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "overlapped")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "flags_and_attribs")
(PUNCT "=")
(ID "_winapi")
(PUNCT ".")
(ID "FILE_FLAG_OVERLAPPED")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "flags_and_attribs")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(DEDENT)
(ID "h1")
(PUNCT "=")
(ID "h2")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "h1")
(PUNCT "=")
(ID "_winapi")
(PUNCT ".")
(ID "CreateNamedPipe")
(PUNCT "(")
(ID "address")
(PUNCT ",")
(ID "openmode")
(PUNCT ",")
(ID "_winapi")
(PUNCT ".")
(ID "PIPE_WAIT")
(PUNCT ",")
(LIT 1)
(PUNCT ",")
(ID "obsize")
(PUNCT ",")
(ID "ibsize")
(PUNCT ",")
(ID "_winapi")
(PUNCT ".")
(ID "NMPWAIT_WAIT_FOREVER")
(PUNCT ",")
(ID "_winapi")
(PUNCT ".")
(ID "NULL")
(PUNCT ")")
(NEWLINE)
(ID "h2")
(PUNCT "=")
(ID "_winapi")
(PUNCT ".")
(ID "CreateFile")
(PUNCT "(")
(ID "address")
(PUNCT ",")
(ID "access")
(PUNCT ",")
(LIT 0)
(PUNCT ",")
(ID "_winapi")
(PUNCT ".")
(ID "NULL")
(PUNCT ",")
(ID "_winapi")
(PUNCT ".")
(ID "OPEN_EXISTING")
(PUNCT ",")
(ID "flags_and_attribs")
(PUNCT ",")
(ID "_winapi")
(PUNCT ".")
(ID "NULL")
(PUNCT ")")
(NEWLINE)
(ID "ov")
(PUNCT "=")
(ID "_winapi")
(PUNCT ".")
(ID "ConnectNamedPipe")
(PUNCT "(")
(ID "h1")
(PUNCT ",")
(ID "overlapped")
(PUNCT "=")
(KEYWORD True)
(PUNCT ")")
(NEWLINE)
(ID "ov")
(PUNCT ".")
(ID "GetOverlappedResult")
(PUNCT "(")
(KEYWORD True)
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "h1")
(PUNCT ",")
(ID "h2")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "h1")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "_winapi")
(PUNCT ".")
(ID "CloseHandle")
(PUNCT "(")
(ID "h1")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "h2")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "_winapi")
(PUNCT ".")
(ID "CloseHandle")
(PUNCT "(")
(ID "h2")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD raise)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "PipeHandle")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Wrapper for an overlapped pipe handle which is vaguely file-object like.\n\n    The IOCP event loop can use these instead of socket objects.\n    ")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "handle")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_handle")
(PUNCT "=")
(ID "handle")
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
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_handle")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "handle")
(PUNCT "=")
(LIT "handle=%r")
(PUNCT "%")
(ID "self")
(PUNCT ".")
(ID "_handle")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "handle")
(PUNCT "=")
(LIT "closed")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(LIT "<%s %s>")
(PUNCT "%")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "__class__")
(PUNCT ".")
(ID "__name__")
(PUNCT ",")
(ID "handle")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(PUNCT "@")
(ID "property")
(NEWLINE)
(KEYWORD def)
(ID "handle")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_handle")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "fileno")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_handle")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "I/O operatioon on closed pipe")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_handle")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "close")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(PUNCT "*")
(PUNCT ",")
(ID "CloseHandle")
(PUNCT "=")
(ID "_winapi")
(PUNCT ".")
(ID "CloseHandle")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_handle")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "CloseHandle")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_handle")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_handle")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "__del__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_handle")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "warnings")
(PUNCT ".")
(ID "warn")
(PUNCT "(")
(LIT "unclosed %r")
(PUNCT "%")
(ID "self")
(PUNCT ",")
(ID "ResourceWarning")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "__enter__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "__exit__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "t")
(PUNCT ",")
(ID "v")
(PUNCT ",")
(ID "tb")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "Popen")
(PUNCT "(")
(ID "subprocess")
(PUNCT ".")
(ID "Popen")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Replacement for subprocess.Popen using overlapped pipe handles.\n\n    The stdin, stdout, stderr are None or instances of PipeHandle.\n    ")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "args")
(PUNCT ",")
(ID "stdin")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "stdout")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "stderr")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(PUNCT "**")
(ID "kwds")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD assert)
(KEYWORD not)
(ID "kwds")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(LIT "universal_newlines")
(PUNCT ")")
(NEWLINE)
(KEYWORD assert)
(ID "kwds")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(LIT "bufsize")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT "==")
(LIT 0)
(NEWLINE)
(ID "stdin_rfd")
(PUNCT "=")
(ID "stdout_wfd")
(PUNCT "=")
(ID "stderr_wfd")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "stdin_wh")
(PUNCT "=")
(ID "stdout_rh")
(PUNCT "=")
(ID "stderr_rh")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(KEYWORD if)
(ID "stdin")
(PUNCT "==")
(ID "PIPE")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "stdin_rh")
(PUNCT ",")
(ID "stdin_wh")
(PUNCT "=")
(ID "pipe")
(PUNCT "(")
(ID "overlapped")
(PUNCT "=")
(PUNCT "(")
(KEYWORD False)
(PUNCT ",")
(KEYWORD True)
(PUNCT ")")
(PUNCT ",")
(ID "duplex")
(PUNCT "=")
(KEYWORD True)
(PUNCT ")")
(NEWLINE)
(ID "stdin_rfd")
(PUNCT "=")
(ID "msvcrt")
(PUNCT ".")
(ID "open_osfhandle")
(PUNCT "(")
(ID "stdin_rh")
(PUNCT ",")
(ID "os")
(PUNCT ".")
(ID "O_RDONLY")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "stdin_rfd")
(PUNCT "=")
(ID "stdin")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "stdout")
(PUNCT "==")
(ID "PIPE")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "stdout_rh")
(PUNCT ",")
(ID "stdout_wh")
(PUNCT "=")
(ID "pipe")
(PUNCT "(")
(ID "overlapped")
(PUNCT "=")
(PUNCT "(")
(KEYWORD True)
(PUNCT ",")
(KEYWORD False)
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "stdout_wfd")
(PUNCT "=")
(ID "msvcrt")
(PUNCT ".")
(ID "open_osfhandle")
(PUNCT "(")
(ID "stdout_wh")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "stdout_wfd")
(PUNCT "=")
(ID "stdout")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "stderr")
(PUNCT "==")
(ID "PIPE")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "stderr_rh")
(PUNCT ",")
(ID "stderr_wh")
(PUNCT "=")
(ID "pipe")
(PUNCT "(")
(ID "overlapped")
(PUNCT "=")
(PUNCT "(")
(KEYWORD True)
(PUNCT ",")
(KEYWORD False)
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "stderr_wfd")
(PUNCT "=")
(ID "msvcrt")
(PUNCT ".")
(ID "open_osfhandle")
(PUNCT "(")
(ID "stderr_wh")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "stderr")
(PUNCT "==")
(ID "STDOUT")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "stderr_wfd")
(PUNCT "=")
(ID "stdout_wfd")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "stderr_wfd")
(PUNCT "=")
(ID "stderr")
(NEWLINE)
(DEDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "__init__")
(PUNCT "(")
(ID "args")
(PUNCT ",")
(ID "stdin")
(PUNCT "=")
(ID "stdin_rfd")
(PUNCT ",")
(ID "stdout")
(PUNCT "=")
(ID "stdout_wfd")
(PUNCT ",")
(ID "stderr")
(PUNCT "=")
(ID "stderr_wfd")
(PUNCT ",")
(PUNCT "**")
(ID "kwds")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "h")
(KEYWORD in)
(PUNCT "(")
(ID "stdin_wh")
(PUNCT ",")
(ID "stdout_rh")
(PUNCT ",")
(ID "stderr_rh")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "h")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "_winapi")
(PUNCT ".")
(ID "CloseHandle")
(PUNCT "(")
(ID "h")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD raise)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "stdin_wh")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stdin")
(PUNCT "=")
(ID "PipeHandle")
(PUNCT "(")
(ID "stdin_wh")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "stdout_rh")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stdout")
(PUNCT "=")
(ID "PipeHandle")
(PUNCT "(")
(ID "stdout_rh")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "stderr_rh")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stderr")
(PUNCT "=")
(ID "PipeHandle")
(PUNCT "(")
(ID "stderr_rh")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "stdin")
(PUNCT "==")
(ID "PIPE")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "os")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(ID "stdin_rfd")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "stdout")
(PUNCT "==")
(ID "PIPE")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "os")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(ID "stdout_wfd")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "stderr")
(PUNCT "==")
(ID "PIPE")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "os")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(ID "stderr_wfd")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(DEDENT)
(ENDMARKER)
