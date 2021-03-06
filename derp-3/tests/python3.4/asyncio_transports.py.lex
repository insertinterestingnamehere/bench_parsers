(LIT "Abstract Transport class.")
(NEWLINE)
(KEYWORD import)
(ID "sys")
(NEWLINE)
(ID "_PY34")
(PUNCT "=")
(ID "sys")
(PUNCT ".")
(ID "version_info")
(PUNCT ">=")
(PUNCT "(")
(LIT 3)
(PUNCT ",")
(LIT 4)
(PUNCT ")")
(NEWLINE)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "BaseTransport")
(PUNCT ",")
(LIT "ReadTransport")
(PUNCT ",")
(LIT "WriteTransport")
(PUNCT ",")
(LIT "Transport")
(PUNCT ",")
(LIT "DatagramTransport")
(PUNCT ",")
(LIT "SubprocessTransport")
(PUNCT ",")
(PUNCT "]")
(NEWLINE)
(KEYWORD class)
(ID "BaseTransport")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Base class for transports.")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "extra")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "extra")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "extra")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_extra")
(PUNCT "=")
(ID "extra")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "get_extra_info")
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
(LIT "Get optional transport information.")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_extra")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(ID "default")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "close")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Close the transport.\n\n        Buffered data will be flushed asynchronously.  No more data\n        will be received.  After all buffered data is flushed, the\n        protocol's connection_lost() method will (eventually) called\n        with None as its argument.\n        ")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "ReadTransport")
(PUNCT "(")
(ID "BaseTransport")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Interface for read-only transports.")
(NEWLINE)
(KEYWORD def)
(ID "pause_reading")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Pause the receiving end.\n\n        No data will be passed to the protocol's data_received()\n        method until resume_reading() is called.\n        ")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "resume_reading")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Resume the receiving end.\n\n        Data received will once again be passed to the protocol's\n        data_received() method.\n        ")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "WriteTransport")
(PUNCT "(")
(ID "BaseTransport")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Interface for write-only transports.")
(NEWLINE)
(KEYWORD def)
(ID "set_write_buffer_limits")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "high")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "low")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Set the high- and low-water limits for write flow control.\n\n        These two values control when to call the protocol's\n        pause_writing() and resume_writing() methods.  If specified,\n        the low-water limit must be less than or equal to the\n        high-water limit.  Neither value can be negative.\n\n        The defaults are implementation-specific.  If only the\n        high-water limit is given, the low-water limit defaults to a\n        implementation-specific value less than or equal to the\n        high-water limit.  Setting high to zero forces low to zero as\n        well, and causes pause_writing() to be called whenever the\n        buffer becomes non-empty.  Setting low to zero causes\n        resume_writing() to be called only once the buffer is empty.\n        Use of zero for either limit is generally sub-optimal as it\n        reduces opportunities for doing I/O and computation\n        concurrently.\n        ")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "get_write_buffer_size")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return the current size of the write buffer.")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "write")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "data")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Write some data bytes to the transport.\n\n        This does not block; it buffers the data and arranges for it\n        to be sent out asynchronously.\n        ")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "writelines")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "list_of_data")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Write a list (or any iterable) of data bytes to the transport.\n\n        The default implementation concatenates the arguments and\n        calls write() on the result.\n        ")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "_PY34")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "list_of_data")
(PUNCT "=")
(PUNCT "(")
(ID "bytes")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "data")
(PUNCT ",")
(ID "memoryview")
(PUNCT ")")
(KEYWORD else)
(ID "data")
(KEYWORD for)
(ID "data")
(KEYWORD in)
(ID "list_of_data")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(LIT #"")
(PUNCT ".")
(ID "join")
(PUNCT "(")
(ID "list_of_data")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "write_eof")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Close the write end after flushing buffered data.\n\n        (This is like typing ^D into a UNIX program reading from stdin.)\n\n        Data may still be received.\n        ")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "can_write_eof")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return True if this transport supports write_eof(), False if not.")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "abort")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Close the transport immediately.\n\n        Buffered data will be lost.  No more data will be received.\n        The protocol's connection_lost() method will (eventually) be\n        called with None as its argument.\n        ")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "Transport")
(PUNCT "(")
(ID "ReadTransport")
(PUNCT ",")
(ID "WriteTransport")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Interface representing a bidirectional transport.\n\n    There may be several implementations, but typically, the user does\n    not implement new transports; rather, the platform provides some\n    useful transports that are implemented using the platform's best\n    practices.\n\n    The user never instantiates a transport directly; they call a\n    utility function, passing it a protocol factory and other\n    information necessary to create the transport and protocol.  (E.g.\n    EventLoop.create_connection() or EventLoop.create_server().)\n\n    The utility function will asynchronously create a transport and a\n    protocol and hook them up by calling the protocol's\n    connection_made() method, passing it the transport.\n\n    The implementation here raises NotImplemented for every method\n    except writelines(), which calls write() in a loop.\n    ")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "DatagramTransport")
(PUNCT "(")
(ID "BaseTransport")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Interface for datagram (UDP) transports.")
(NEWLINE)
(KEYWORD def)
(ID "sendto")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "data")
(PUNCT ",")
(ID "addr")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Send data to the transport.\n\n        This does not block; it buffers the data and arranges for it\n        to be sent out asynchronously.\n        addr is target socket address.\n        If addr is None use target address pointed on transport creation.\n        ")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "abort")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Close the transport immediately.\n\n        Buffered data will be lost.  No more data will be received.\n        The protocol's connection_lost() method will (eventually) be\n        called with None as its argument.\n        ")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "SubprocessTransport")
(PUNCT "(")
(ID "BaseTransport")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD def)
(ID "get_pid")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Get subprocess id.")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "get_returncode")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Get subprocess returncode.\n\n        See also\n        http://docs.python.org/3/library/subprocess#subprocess.Popen.returncode\n        ")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "get_pipe_transport")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "fd")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Get transport for pipe with number fd.")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "send_signal")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "signal")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Send signal to subprocess.\n\n        See also:\n        docs.python.org/3/library/subprocess#subprocess.Popen.send_signal\n        ")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "terminate")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Stop the subprocess.\n\n        Alias for close() method.\n\n        On Posix OSs the method sends SIGTERM to the subprocess.\n        On Windows the Win32 API function TerminateProcess()\n         is called to stop the subprocess.\n\n        See also:\n        http://docs.python.org/3/library/subprocess#subprocess.Popen.terminate\n        ")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "kill")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Kill the subprocess.\n\n        On Posix OSs the function sends SIGKILL to the subprocess.\n        On Windows kill() is an alias for terminate().\n\n        See also:\n        http://docs.python.org/3/library/subprocess#subprocess.Popen.kill\n        ")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "_FlowControlMixin")
(PUNCT "(")
(ID "Transport")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "All the logic for (write) flow control in a mix-in base class.\n\n    The subclass must implement get_write_buffer_size().  It must call\n    _maybe_pause_protocol() whenever the write buffer size increases,\n    and _maybe_resume_protocol() whenever it decreases.  It may also\n    override set_write_buffer_limits() (e.g. to specify different\n    defaults).\n\n    The subclass constructor must call super().__init__(extra).  This\n    will call set_write_buffer_limits().\n\n    The user may call set_write_buffer_limits() and\n    get_write_buffer_size(), and their protocol's pause_writing() and\n    resume_writing() may be called.\n    ")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "extra")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "loop")
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
(ID "extra")
(PUNCT ")")
(NEWLINE)
(KEYWORD assert)
(ID "loop")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_loop")
(PUNCT "=")
(ID "loop")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_protocol_paused")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_set_write_buffer_limits")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_maybe_pause_protocol")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "size")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "get_write_buffer_size")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "size")
(PUNCT "<=")
(ID "self")
(PUNCT ".")
(ID "_high_water")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "_protocol_paused")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_protocol_paused")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_protocol")
(PUNCT ".")
(ID "pause_writing")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "Exception")
(KEYWORD as)
(ID "exc")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_loop")
(PUNCT ".")
(ID "call_exception_handler")
(PUNCT "(")
(PUNCT "{")
(LIT "message")
(PUNCT ":")
(LIT "protocol.pause_writing() failed")
(PUNCT ",")
(LIT "exception")
(PUNCT ":")
(ID "exc")
(PUNCT ",")
(LIT "transport")
(PUNCT ":")
(ID "self")
(PUNCT ",")
(LIT "protocol")
(PUNCT ":")
(ID "self")
(PUNCT ".")
(ID "_protocol")
(PUNCT ",")
(PUNCT "}")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_maybe_resume_protocol")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_protocol_paused")
(KEYWORD and)
(ID "self")
(PUNCT ".")
(ID "get_write_buffer_size")
(PUNCT "(")
(PUNCT ")")
(PUNCT "<=")
(ID "self")
(PUNCT ".")
(ID "_low_water")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_protocol_paused")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_protocol")
(PUNCT ".")
(ID "resume_writing")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "Exception")
(KEYWORD as)
(ID "exc")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_loop")
(PUNCT ".")
(ID "call_exception_handler")
(PUNCT "(")
(PUNCT "{")
(LIT "message")
(PUNCT ":")
(LIT "protocol.resume_writing() failed")
(PUNCT ",")
(LIT "exception")
(PUNCT ":")
(ID "exc")
(PUNCT ",")
(LIT "transport")
(PUNCT ":")
(ID "self")
(PUNCT ",")
(LIT "protocol")
(PUNCT ":")
(ID "self")
(PUNCT ".")
(ID "_protocol")
(PUNCT ",")
(PUNCT "}")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "get_write_buffer_limits")
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
(ID "_low_water")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "_high_water")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_set_write_buffer_limits")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "high")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "low")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "high")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "low")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "high")
(PUNCT "=")
(LIT 64)
(PUNCT "*")
(LIT 1024)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "high")
(PUNCT "=")
(LIT 4)
(PUNCT "*")
(ID "low")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD if)
(ID "low")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "low")
(PUNCT "=")
(ID "high")
(PUNCT "//")
(LIT 4)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(KEYWORD not)
(ID "high")
(PUNCT ">=")
(ID "low")
(PUNCT ">=")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "high (%r) must be >= low (%r) must be >= 0")
(PUNCT "%")
(PUNCT "(")
(ID "high")
(PUNCT ",")
(ID "low")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_high_water")
(PUNCT "=")
(ID "high")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_low_water")
(PUNCT "=")
(ID "low")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "set_write_buffer_limits")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "high")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "low")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_set_write_buffer_limits")
(PUNCT "(")
(ID "high")
(PUNCT "=")
(ID "high")
(PUNCT ",")
(ID "low")
(PUNCT "=")
(ID "low")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_maybe_pause_protocol")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "get_write_buffer_size")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)
