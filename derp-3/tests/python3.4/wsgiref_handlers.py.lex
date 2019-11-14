(LIT "Base classes for server/gateway implementations")
(NEWLINE)
(KEYWORD from)
(PUNCT ".")
(ID "util")
(KEYWORD import)
(ID "FileWrapper")
(PUNCT ",")
(ID "guess_scheme")
(PUNCT ",")
(ID "is_hop_by_hop")
(NEWLINE)
(KEYWORD from)
(PUNCT ".")
(ID "headers")
(KEYWORD import)
(ID "Headers")
(NEWLINE)
(KEYWORD import)
(ID "sys")
(PUNCT ",")
(ID "os")
(PUNCT ",")
(ID "time")
(NEWLINE)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "BaseHandler")
(PUNCT ",")
(LIT "SimpleHandler")
(PUNCT ",")
(LIT "BaseCGIHandler")
(PUNCT ",")
(LIT "CGIHandler")
(PUNCT ",")
(LIT "IISCGIHandler")
(PUNCT ",")
(LIT "read_environ")
(PUNCT "]")
(NEWLINE)
(ID "_weekdayname")
(PUNCT "=")
(PUNCT "[")
(LIT "Mon")
(PUNCT ",")
(LIT "Tue")
(PUNCT ",")
(LIT "Wed")
(PUNCT ",")
(LIT "Thu")
(PUNCT ",")
(LIT "Fri")
(PUNCT ",")
(LIT "Sat")
(PUNCT ",")
(LIT "Sun")
(PUNCT "]")
(NEWLINE)
(ID "_monthname")
(PUNCT "=")
(PUNCT "[")
(KEYWORD None)
(PUNCT ",")
(LIT "Jan")
(PUNCT ",")
(LIT "Feb")
(PUNCT ",")
(LIT "Mar")
(PUNCT ",")
(LIT "Apr")
(PUNCT ",")
(LIT "May")
(PUNCT ",")
(LIT "Jun")
(PUNCT ",")
(LIT "Jul")
(PUNCT ",")
(LIT "Aug")
(PUNCT ",")
(LIT "Sep")
(PUNCT ",")
(LIT "Oct")
(PUNCT ",")
(LIT "Nov")
(PUNCT ",")
(LIT "Dec")
(PUNCT "]")
(NEWLINE)
(KEYWORD def)
(ID "format_date_time")
(PUNCT "(")
(ID "timestamp")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "year")
(PUNCT ",")
(ID "month")
(PUNCT ",")
(ID "day")
(PUNCT ",")
(ID "hh")
(PUNCT ",")
(ID "mm")
(PUNCT ",")
(ID "ss")
(PUNCT ",")
(ID "wd")
(PUNCT ",")
(ID "y")
(PUNCT ",")
(ID "z")
(PUNCT "=")
(ID "time")
(PUNCT ".")
(ID "gmtime")
(PUNCT "(")
(ID "timestamp")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(LIT "%s, %02d %3s %4d %02d:%02d:%02d GMT")
(PUNCT "%")
(PUNCT "(")
(ID "_weekdayname")
(PUNCT "[")
(ID "wd")
(PUNCT "]")
(PUNCT ",")
(ID "day")
(PUNCT ",")
(ID "_monthname")
(PUNCT "[")
(ID "month")
(PUNCT "]")
(PUNCT ",")
(ID "year")
(PUNCT ",")
(ID "hh")
(PUNCT ",")
(ID "mm")
(PUNCT ",")
(ID "ss")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "_is_request")
(PUNCT "=")
(PUNCT "{")
(LIT "SCRIPT_NAME")
(PUNCT ",")
(LIT "PATH_INFO")
(PUNCT ",")
(LIT "QUERY_STRING")
(PUNCT ",")
(LIT "REQUEST_METHOD")
(PUNCT ",")
(LIT "AUTH_TYPE")
(PUNCT ",")
(LIT "CONTENT_TYPE")
(PUNCT ",")
(LIT "CONTENT_LENGTH")
(PUNCT ",")
(LIT "HTTPS")
(PUNCT ",")
(LIT "REMOTE_USER")
(PUNCT ",")
(LIT "REMOTE_IDENT")
(PUNCT ",")
(PUNCT "}")
(PUNCT ".")
(ID "__contains__")
(NEWLINE)
(KEYWORD def)
(ID "_needs_transcode")
(PUNCT "(")
(ID "k")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "_is_request")
(PUNCT "(")
(ID "k")
(PUNCT ")")
(KEYWORD or)
(ID "k")
(PUNCT ".")
(ID "startswith")
(PUNCT "(")
(LIT "HTTP_")
(PUNCT ")")
(KEYWORD or)
(ID "k")
(PUNCT ".")
(ID "startswith")
(PUNCT "(")
(LIT "SSL_")
(PUNCT ")")
(KEYWORD or)
(PUNCT "(")
(ID "k")
(PUNCT ".")
(ID "startswith")
(PUNCT "(")
(LIT "REDIRECT_")
(PUNCT ")")
(KEYWORD and)
(ID "_needs_transcode")
(PUNCT "(")
(ID "k")
(PUNCT "[")
(LIT 9)
(PUNCT ":")
(PUNCT "]")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "read_environ")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Read environment, fixing HTTP variables")
(NEWLINE)
(ID "enc")
(PUNCT "=")
(ID "sys")
(PUNCT ".")
(ID "getfilesystemencoding")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "esc")
(PUNCT "=")
(LIT "surrogateescape")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "")
(PUNCT ".")
(ID "encode")
(PUNCT "(")
(LIT "utf-8")
(PUNCT ",")
(ID "esc")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "LookupError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "esc")
(PUNCT "=")
(LIT "replace")
(NEWLINE)
(DEDENT)
(ID "environ")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(KEYWORD for)
(ID "k")
(PUNCT ",")
(ID "v")
(KEYWORD in)
(ID "os")
(PUNCT ".")
(ID "environ")
(PUNCT ".")
(ID "items")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "_needs_transcode")
(PUNCT "(")
(ID "k")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "sys")
(PUNCT ".")
(ID "platform")
(PUNCT "==")
(LIT "win32")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "software")
(PUNCT "=")
(ID "os")
(PUNCT ".")
(ID "environ")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(LIT "SERVER_SOFTWARE")
(PUNCT ",")
(LIT "")
(PUNCT ")")
(PUNCT ".")
(ID "lower")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "software")
(PUNCT ".")
(ID "startswith")
(PUNCT "(")
(LIT "microsoft-iis/")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "v")
(PUNCT "=")
(ID "v")
(PUNCT ".")
(ID "encode")
(PUNCT "(")
(LIT "utf-8")
(PUNCT ")")
(PUNCT ".")
(ID "decode")
(PUNCT "(")
(LIT "iso-8859-1")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "software")
(PUNCT ".")
(ID "startswith")
(PUNCT "(")
(LIT "apache/")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(PUNCT "(")
(ID "software")
(PUNCT ".")
(ID "startswith")
(PUNCT "(")
(LIT "simplehttp/")
(PUNCT ")")
(KEYWORD and)
(LIT "python/3")
(KEYWORD in)
(ID "software")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "v")
(PUNCT "=")
(ID "v")
(PUNCT ".")
(ID "encode")
(PUNCT "(")
(LIT "utf-8")
(PUNCT ")")
(PUNCT ".")
(ID "decode")
(PUNCT "(")
(LIT "iso-8859-1")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "v")
(PUNCT "=")
(ID "v")
(PUNCT ".")
(ID "encode")
(PUNCT "(")
(ID "enc")
(PUNCT ",")
(LIT "replace")
(PUNCT ")")
(PUNCT ".")
(ID "decode")
(PUNCT "(")
(LIT "iso-8859-1")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "v")
(PUNCT "=")
(ID "v")
(PUNCT ".")
(ID "encode")
(PUNCT "(")
(ID "enc")
(PUNCT ",")
(ID "esc")
(PUNCT ")")
(PUNCT ".")
(ID "decode")
(PUNCT "(")
(LIT "iso-8859-1")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "environ")
(PUNCT "[")
(ID "k")
(PUNCT "]")
(PUNCT "=")
(ID "v")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "environ")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "BaseHandler")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Manage the invocation of a WSGI application")
(NEWLINE)
(ID "wsgi_version")
(PUNCT "=")
(PUNCT "(")
(LIT 1)
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(NEWLINE)
(ID "wsgi_multithread")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "wsgi_multiprocess")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "wsgi_run_once")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(ID "origin_server")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "http_version")
(PUNCT "=")
(LIT "1.0")
(NEWLINE)
(ID "server_software")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "os_environ")
(PUNCT "=")
(ID "read_environ")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "wsgi_file_wrapper")
(PUNCT "=")
(ID "FileWrapper")
(NEWLINE)
(ID "headers_class")
(PUNCT "=")
(ID "Headers")
(NEWLINE)
(ID "traceback_limit")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "error_status")
(PUNCT "=")
(LIT "500 Internal Server Error")
(NEWLINE)
(ID "error_headers")
(PUNCT "=")
(PUNCT "[")
(PUNCT "(")
(LIT "Content-Type")
(PUNCT ",")
(LIT "text/plain")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(ID "error_body")
(PUNCT "=")
(LIT #"A server error occurred.  Please contact the administrator.")
(NEWLINE)
(ID "status")
(PUNCT "=")
(ID "result")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "headers_sent")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(ID "headers")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "bytes_sent")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(KEYWORD def)
(ID "run")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "application")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Invoke the application")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "setup_environ")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "result")
(PUNCT "=")
(ID "application")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "environ")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "start_response")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "finish_response")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "handle_error")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD raise)
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "setup_environ")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Set up the environment for one request")
(NEWLINE)
(ID "env")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "environ")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "os_environ")
(PUNCT ".")
(ID "copy")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "add_cgi_vars")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "env")
(PUNCT "[")
(LIT "wsgi.input")
(PUNCT "]")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "get_stdin")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "env")
(PUNCT "[")
(LIT "wsgi.errors")
(PUNCT "]")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "get_stderr")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "env")
(PUNCT "[")
(LIT "wsgi.version")
(PUNCT "]")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "wsgi_version")
(NEWLINE)
(ID "env")
(PUNCT "[")
(LIT "wsgi.run_once")
(PUNCT "]")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "wsgi_run_once")
(NEWLINE)
(ID "env")
(PUNCT "[")
(LIT "wsgi.url_scheme")
(PUNCT "]")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "get_scheme")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "env")
(PUNCT "[")
(LIT "wsgi.multithread")
(PUNCT "]")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "wsgi_multithread")
(NEWLINE)
(ID "env")
(PUNCT "[")
(LIT "wsgi.multiprocess")
(PUNCT "]")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "wsgi_multiprocess")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "wsgi_file_wrapper")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "env")
(PUNCT "[")
(LIT "wsgi.file_wrapper")
(PUNCT "]")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "wsgi_file_wrapper")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "origin_server")
(KEYWORD and)
(ID "self")
(PUNCT ".")
(ID "server_software")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "env")
(PUNCT ".")
(ID "setdefault")
(PUNCT "(")
(LIT "SERVER_SOFTWARE")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "server_software")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "finish_response")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Send any iterable data, then close self and the iterable\n\n        Subclasses intended for use in asynchronous servers will\n        want to redefine this method, such that it sets up callbacks\n        in the event loop to iterate over the data, and to call\n        'self.close()' once the response is finished.\n        ")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "result_is_file")
(PUNCT "(")
(PUNCT ")")
(KEYWORD or)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "sendfile")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "data")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "result")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "finish_content")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD finally)
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
(KEYWORD def)
(ID "get_scheme")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Return the URL scheme being used")
(NEWLINE)
(KEYWORD return)
(ID "guess_scheme")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "environ")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "set_content_length")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Compute Content-Length or switch to chunked encoding if possible")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "blocks")
(PUNCT "=")
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "result")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(PUNCT "(")
(ID "TypeError")
(PUNCT ",")
(ID "AttributeError")
(PUNCT ",")
(ID "NotImplementedError")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "blocks")
(PUNCT "==")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "headers")
(PUNCT "[")
(LIT "Content-Length")
(PUNCT "]")
(PUNCT "=")
(ID "str")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "bytes_sent")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "cleanup_headers")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Make any necessary header changes or defaults\n\n        Subclasses can extend this to add other defaults.\n        ")
(NEWLINE)
(KEYWORD if)
(LIT "Content-Length")
(KEYWORD not)
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "headers")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "set_content_length")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "start_response")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "status")
(PUNCT ",")
(ID "headers")
(PUNCT ",")
(ID "exc_info")
(PUNCT "=")
(KEYWORD None)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "'start_response()' callable as specified by PEP 3333")
(NEWLINE)
(KEYWORD if)
(ID "exc_info")
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
(ID "headers_sent")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "exc_info")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT "(")
(ID "exc_info")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ")")
(PUNCT ".")
(ID "with_traceback")
(PUNCT "(")
(ID "exc_info")
(PUNCT "[")
(LIT 2)
(PUNCT "]")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "exc_info")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD elif)
(ID "self")
(PUNCT ".")
(ID "headers")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "AssertionError")
(PUNCT "(")
(LIT "Headers already set!")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "status")
(PUNCT "=")
(ID "status")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "headers")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "headers_class")
(PUNCT "(")
(ID "headers")
(PUNCT ")")
(NEWLINE)
(ID "status")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_convert_string_type")
(PUNCT "(")
(ID "status")
(PUNCT ",")
(LIT "Status")
(PUNCT ")")
(NEWLINE)
(KEYWORD assert)
(ID "len")
(PUNCT "(")
(ID "status")
(PUNCT ")")
(PUNCT ">=")
(LIT 4)
(PUNCT ",")
(LIT "Status must be at least 4 characters")
(NEWLINE)
(KEYWORD assert)
(ID "int")
(PUNCT "(")
(ID "status")
(PUNCT "[")
(PUNCT ":")
(LIT 3)
(PUNCT "]")
(PUNCT ")")
(PUNCT ",")
(LIT "Status message must begin w/3-digit code")
(NEWLINE)
(KEYWORD assert)
(ID "status")
(PUNCT "[")
(LIT 3)
(PUNCT "]")
(PUNCT "==")
(LIT " ")
(PUNCT ",")
(LIT "Status message must have a space after code")
(NEWLINE)
(KEYWORD if)
(ID "__debug__")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "name")
(PUNCT ",")
(ID "val")
(KEYWORD in)
(ID "headers")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "name")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_convert_string_type")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(LIT "Header name")
(PUNCT ")")
(NEWLINE)
(ID "val")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_convert_string_type")
(PUNCT "(")
(ID "val")
(PUNCT ",")
(LIT "Header value")
(PUNCT ")")
(NEWLINE)
(KEYWORD assert)
(KEYWORD not)
(ID "is_hop_by_hop")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ",")
(LIT "Hop-by-hop headers not allowed")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "write")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_convert_string_type")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "value")
(PUNCT ",")
(ID "title")
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
(LIT "{0} must be of type str (got {1})")
(PUNCT ".")
(ID "format")
(PUNCT "(")
(ID "title")
(PUNCT ",")
(ID "repr")
(PUNCT "(")
(ID "value")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "send_preamble")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Transmit version/status/date/server, via self._write()")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "origin_server")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "client_is_modern")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(PUNCT "(")
(LIT "HTTP/%s %s\r\n")
(PUNCT "%")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "http_version")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "status")
(PUNCT ")")
(PUNCT ")")
(PUNCT ".")
(ID "encode")
(PUNCT "(")
(LIT "iso-8859-1")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(LIT "Date")
(KEYWORD not)
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "headers")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(PUNCT "(")
(LIT "Date: %s\r\n")
(PUNCT "%")
(ID "format_date_time")
(PUNCT "(")
(ID "time")
(PUNCT ".")
(ID "time")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(PUNCT ".")
(ID "encode")
(PUNCT "(")
(LIT "iso-8859-1")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "server_software")
(KEYWORD and)
(LIT "Server")
(KEYWORD not)
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "headers")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(PUNCT "(")
(LIT "Server: %s\r\n")
(PUNCT "%")
(ID "self")
(PUNCT ".")
(ID "server_software")
(PUNCT ")")
(PUNCT ".")
(ID "encode")
(PUNCT "(")
(LIT "iso-8859-1")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(PUNCT "(")
(LIT "Status: %s\r\n")
(PUNCT "%")
(ID "self")
(PUNCT ".")
(ID "status")
(PUNCT ")")
(PUNCT ".")
(ID "encode")
(PUNCT "(")
(LIT "iso-8859-1")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
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
(LIT "'write()' callable as specified by PEP 3333")
(NEWLINE)
(KEYWORD assert)
(ID "type")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(KEYWORD is)
(ID "bytes")
(PUNCT ",")
(LIT "write() argument must be a bytes instance")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "status")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "AssertionError")
(PUNCT "(")
(LIT "write() before start_response()")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "headers_sent")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "bytes_sent")
(PUNCT "=")
(ID "len")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "send_headers")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "bytes_sent")
(PUNCT "+=")
(ID "len")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_flush")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "sendfile")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Platform-specific file transmission\n\n        Override this method in subclasses to support platform-specific\n        file transmission.  It is only called if the application's\n        return iterable ('self.result') is an instance of\n        'self.wsgi_file_wrapper'.\n\n        This method should return a true value if it was able to actually\n        transmit the wrapped file-like object using a platform-specific\n        approach.  It should return a false value if normal iteration\n        should be used instead.  An exception can be raised to indicate\n        that transmission was attempted, but failed.\n\n        NOTE: this method should call 'self.send_headers()' if\n        'self.headers_sent' is false and it is going to attempt direct\n        transmission of the file.\n        ")
(NEWLINE)
(KEYWORD return)
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "finish_content")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Ensure headers and content have both been sent")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "headers_sent")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "headers")
(PUNCT ".")
(ID "setdefault")
(PUNCT "(")
(LIT "Content-Length")
(PUNCT ",")
(LIT "0")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "send_headers")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "close")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Close the iterable (if needed) and reset all instance vars\n\n        Subclasses may want to also drop the client connection.\n        ")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "hasattr")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "result")
(PUNCT ",")
(LIT "close")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "result")
(PUNCT ".")
(ID "close")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "result")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "headers")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "status")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "environ")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "bytes_sent")
(PUNCT "=")
(LIT 0)
(PUNCT ";")
(ID "self")
(PUNCT ".")
(ID "headers_sent")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "send_headers")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Transmit headers to the client, via self._write()")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "cleanup_headers")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "headers_sent")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "origin_server")
(KEYWORD or)
(ID "self")
(PUNCT ".")
(ID "client_is_modern")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "send_preamble")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_write")
(PUNCT "(")
(ID "bytes")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "headers")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "result_is_file")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "True if 'self.result' is an instance of 'self.wsgi_file_wrapper'")
(NEWLINE)
(ID "wrapper")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "wsgi_file_wrapper")
(NEWLINE)
(KEYWORD return)
(ID "wrapper")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(KEYWORD and)
(ID "isinstance")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "result")
(PUNCT ",")
(ID "wrapper")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "client_is_modern")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "True if client can accept status and headers")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "environ")
(PUNCT "[")
(LIT "SERVER_PROTOCOL")
(PUNCT "]")
(PUNCT ".")
(ID "upper")
(PUNCT "(")
(PUNCT ")")
(PUNCT "!=")
(LIT "HTTP/0.9")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "log_exception")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "exc_info")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Log the 'exc_info' tuple in the server log\n\n        Subclasses may override to retarget the output or change its format.\n        ")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD from)
(ID "traceback")
(KEYWORD import)
(ID "print_exception")
(NEWLINE)
(ID "stderr")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "get_stderr")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "print_exception")
(PUNCT "(")
(ID "exc_info")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(PUNCT ",")
(ID "exc_info")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ",")
(ID "exc_info")
(PUNCT "[")
(LIT 2)
(PUNCT "]")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "traceback_limit")
(PUNCT ",")
(ID "stderr")
(PUNCT ")")
(NEWLINE)
(ID "stderr")
(PUNCT ".")
(ID "flush")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD finally)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "exc_info")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "handle_error")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Log current error, and send error output to client if possible")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "log_exception")
(PUNCT "(")
(ID "sys")
(PUNCT ".")
(ID "exc_info")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "headers_sent")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "result")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "error_output")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "environ")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "start_response")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "finish_response")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "error_output")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "environ")
(PUNCT ",")
(ID "start_response")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "WSGI mini-app to create error output\n\n        By default, this just uses the 'error_status', 'error_headers',\n        and 'error_body' attributes to generate an output page.  It can\n        be overridden in a subclass to dynamically generate diagnostics,\n        choose an appropriate message for the user's preferred language, etc.\n\n        Note, however, that it's not recommended from a security perspective to\n        spit out diagnostics to any old user; ideally, you should have to do\n        something special to enable diagnostic output, which is why we don't\n        include any here!\n        ")
(NEWLINE)
(ID "start_response")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "error_status")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "error_headers")
(PUNCT "[")
(PUNCT ":")
(PUNCT "]")
(PUNCT ",")
(ID "sys")
(PUNCT ".")
(ID "exc_info")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(PUNCT "[")
(ID "self")
(PUNCT ".")
(ID "error_body")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_write")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "data")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Override in subclass to buffer data for send to client\n\n        It's okay if this method actually transmits the data; BaseHandler\n        just separates write and flush operations for greater efficiency\n        when the underlying system actually has such a distinction.\n        ")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_flush")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Override in subclass to force sending of recent '_write()' calls\n\n        It's okay if this method is a no-op (i.e., if '_write()' actually\n        sends the data.\n        ")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "get_stdin")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Override in subclass to return suitable 'wsgi.input'")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "get_stderr")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Override in subclass to return suitable 'wsgi.errors'")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "add_cgi_vars")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Override in subclass to insert CGI variables in 'self.environ'")
(NEWLINE)
(KEYWORD raise)
(ID "NotImplementedError")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "SimpleHandler")
(PUNCT "(")
(ID "BaseHandler")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Handler that's just initialized with streams, environment, etc.\n\n    This handler subclass is intended for synchronous HTTP/1.0 origin servers,\n    and handles sending the entire response output, given the correct inputs.\n\n    Usage::\n\n        handler = SimpleHandler(\n            inp,out,err,env, multithread=False, multiprocess=True\n        )\n        handler.run(app)")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "stdin")
(PUNCT ",")
(ID "stdout")
(PUNCT ",")
(ID "stderr")
(PUNCT ",")
(ID "environ")
(PUNCT ",")
(ID "multithread")
(PUNCT "=")
(KEYWORD True)
(PUNCT ",")
(ID "multiprocess")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stdin")
(PUNCT "=")
(ID "stdin")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "stdout")
(PUNCT "=")
(ID "stdout")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "stderr")
(PUNCT "=")
(ID "stderr")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "base_env")
(PUNCT "=")
(ID "environ")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "wsgi_multithread")
(PUNCT "=")
(ID "multithread")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "wsgi_multiprocess")
(PUNCT "=")
(ID "multiprocess")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "get_stdin")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "stdin")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "get_stderr")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "stderr")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "add_cgi_vars")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "environ")
(PUNCT ".")
(ID "update")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "base_env")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_write")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "data")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stdout")
(PUNCT ".")
(ID "write")
(PUNCT "(")
(ID "data")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_flush")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "stdout")
(PUNCT ".")
(ID "flush")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_flush")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "stdout")
(PUNCT ".")
(ID "flush")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "BaseCGIHandler")
(PUNCT "(")
(ID "SimpleHandler")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "CGI-like systems using input/output/error streams and environ mapping\n\n    Usage::\n\n        handler = BaseCGIHandler(inp,out,err,env)\n        handler.run(app)\n\n    This handler class is useful for gateway protocols like ReadyExec and\n    FastCGI, that have usable input/output/error streams and an environment\n    mapping.  It's also the base class for CGIHandler, which just uses\n    sys.stdin, os.environ, and so on.\n\n    The constructor also takes keyword arguments 'multithread' and\n    'multiprocess' (defaulting to 'True' and 'False' respectively) to control\n    the configuration sent to the application.  It sets 'origin_server' to\n    False (to enable CGI-like output), and assumes that 'wsgi.run_once' is\n    False.\n    ")
(NEWLINE)
(ID "origin_server")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "CGIHandler")
(PUNCT "(")
(ID "BaseCGIHandler")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "CGI-based invocation via sys.stdin/stdout/stderr and os.environ\n\n    Usage::\n\n        CGIHandler().run(app)\n\n    The difference between this class and BaseCGIHandler is that it always\n    uses 'wsgi.run_once' of 'True', 'wsgi.multithread' of 'False', and\n    'wsgi.multiprocess' of 'True'.  It does not take any initialization\n    parameters, but always uses 'sys.stdin', 'os.environ', and friends.\n\n    If you need to override any of these parameters, use BaseCGIHandler\n    instead.\n    ")
(NEWLINE)
(ID "wsgi_run_once")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "os_environ")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "BaseCGIHandler")
(PUNCT ".")
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "sys")
(PUNCT ".")
(ID "stdin")
(PUNCT ".")
(ID "buffer")
(PUNCT ",")
(ID "sys")
(PUNCT ".")
(ID "stdout")
(PUNCT ".")
(ID "buffer")
(PUNCT ",")
(ID "sys")
(PUNCT ".")
(ID "stderr")
(PUNCT ",")
(ID "read_environ")
(PUNCT "(")
(PUNCT ")")
(PUNCT ",")
(ID "multithread")
(PUNCT "=")
(KEYWORD False)
(PUNCT ",")
(ID "multiprocess")
(PUNCT "=")
(KEYWORD True)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "IISCGIHandler")
(PUNCT "(")
(ID "BaseCGIHandler")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "CGI-based invocation with workaround for IIS path bug\n\n    This handler should be used in preference to CGIHandler when deploying on\n    Microsoft IIS without having set the config allowPathInfo option (IIS>=7)\n    or metabase allowPathInfoForScriptMappings (IIS<7).\n    ")
(NEWLINE)
(ID "wsgi_run_once")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "os_environ")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "environ")
(PUNCT "=")
(ID "read_environ")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "path")
(PUNCT "=")
(ID "environ")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(LIT "PATH_INFO")
(PUNCT ",")
(LIT "")
(PUNCT ")")
(NEWLINE)
(ID "script")
(PUNCT "=")
(ID "environ")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(LIT "SCRIPT_NAME")
(PUNCT ",")
(LIT "")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(PUNCT "(")
(ID "path")
(PUNCT "+")
(LIT "/")
(PUNCT ")")
(PUNCT ".")
(ID "startswith")
(PUNCT "(")
(ID "script")
(PUNCT "+")
(LIT "/")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "environ")
(PUNCT "[")
(LIT "PATH_INFO")
(PUNCT "]")
(PUNCT "=")
(ID "path")
(PUNCT "[")
(ID "len")
(PUNCT "(")
(ID "script")
(PUNCT ")")
(PUNCT ":")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(ID "BaseCGIHandler")
(PUNCT ".")
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "sys")
(PUNCT ".")
(ID "stdin")
(PUNCT ".")
(ID "buffer")
(PUNCT ",")
(ID "sys")
(PUNCT ".")
(ID "stdout")
(PUNCT ".")
(ID "buffer")
(PUNCT ",")
(ID "sys")
(PUNCT ".")
(ID "stderr")
(PUNCT ",")
(ID "environ")
(PUNCT ",")
(ID "multithread")
(PUNCT "=")
(KEYWORD False)
(PUNCT ",")
(ID "multiprocess")
(PUNCT "=")
(KEYWORD True)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)