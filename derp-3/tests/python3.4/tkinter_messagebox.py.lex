(KEYWORD from)
(ID "tkinter")
(PUNCT ".")
(ID "commondialog")
(KEYWORD import)
(ID "Dialog")
(NEWLINE)
(ID "ERROR")
(PUNCT "=")
(LIT "error")
(NEWLINE)
(ID "INFO")
(PUNCT "=")
(LIT "info")
(NEWLINE)
(ID "QUESTION")
(PUNCT "=")
(LIT "question")
(NEWLINE)
(ID "WARNING")
(PUNCT "=")
(LIT "warning")
(NEWLINE)
(ID "ABORTRETRYIGNORE")
(PUNCT "=")
(LIT "abortretryignore")
(NEWLINE)
(ID "OK")
(PUNCT "=")
(LIT "ok")
(NEWLINE)
(ID "OKCANCEL")
(PUNCT "=")
(LIT "okcancel")
(NEWLINE)
(ID "RETRYCANCEL")
(PUNCT "=")
(LIT "retrycancel")
(NEWLINE)
(ID "YESNO")
(PUNCT "=")
(LIT "yesno")
(NEWLINE)
(ID "YESNOCANCEL")
(PUNCT "=")
(LIT "yesnocancel")
(NEWLINE)
(ID "ABORT")
(PUNCT "=")
(LIT "abort")
(NEWLINE)
(ID "RETRY")
(PUNCT "=")
(LIT "retry")
(NEWLINE)
(ID "IGNORE")
(PUNCT "=")
(LIT "ignore")
(NEWLINE)
(ID "OK")
(PUNCT "=")
(LIT "ok")
(NEWLINE)
(ID "CANCEL")
(PUNCT "=")
(LIT "cancel")
(NEWLINE)
(ID "YES")
(PUNCT "=")
(LIT "yes")
(NEWLINE)
(ID "NO")
(PUNCT "=")
(LIT "no")
(NEWLINE)
(KEYWORD class)
(ID "Message")
(PUNCT "(")
(ID "Dialog")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A message box")
(NEWLINE)
(ID "command")
(PUNCT "=")
(LIT "tk_messageBox")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_show")
(PUNCT "(")
(ID "title")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "message")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "_icon")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "_type")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(PUNCT "**")
(ID "options")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "_icon")
(KEYWORD and)
(LIT "icon")
(KEYWORD not)
(KEYWORD in)
(ID "options")
(PUNCT ":")
(ID "options")
(PUNCT "[")
(LIT "icon")
(PUNCT "]")
(PUNCT "=")
(ID "_icon")
(NEWLINE)
(KEYWORD if)
(ID "_type")
(KEYWORD and)
(LIT "type")
(KEYWORD not)
(KEYWORD in)
(ID "options")
(PUNCT ":")
(ID "options")
(PUNCT "[")
(LIT "type")
(PUNCT "]")
(PUNCT "=")
(ID "_type")
(NEWLINE)
(KEYWORD if)
(ID "title")
(PUNCT ":")
(ID "options")
(PUNCT "[")
(LIT "title")
(PUNCT "]")
(PUNCT "=")
(ID "title")
(NEWLINE)
(KEYWORD if)
(ID "message")
(PUNCT ":")
(ID "options")
(PUNCT "[")
(LIT "message")
(PUNCT "]")
(PUNCT "=")
(ID "message")
(NEWLINE)
(ID "res")
(PUNCT "=")
(ID "Message")
(PUNCT "(")
(PUNCT "**")
(ID "options")
(PUNCT ")")
(PUNCT ".")
(ID "show")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "isinstance")
(PUNCT "(")
(ID "res")
(PUNCT ",")
(ID "bool")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "res")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "YES")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "NO")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "str")
(PUNCT "(")
(ID "res")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "showinfo")
(PUNCT "(")
(ID "title")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "message")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(PUNCT "**")
(ID "options")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Show an info message")
(NEWLINE)
(KEYWORD return)
(ID "_show")
(PUNCT "(")
(ID "title")
(PUNCT ",")
(ID "message")
(PUNCT ",")
(ID "INFO")
(PUNCT ",")
(ID "OK")
(PUNCT ",")
(PUNCT "**")
(ID "options")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "showwarning")
(PUNCT "(")
(ID "title")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "message")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(PUNCT "**")
(ID "options")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Show a warning message")
(NEWLINE)
(KEYWORD return)
(ID "_show")
(PUNCT "(")
(ID "title")
(PUNCT ",")
(ID "message")
(PUNCT ",")
(ID "WARNING")
(PUNCT ",")
(ID "OK")
(PUNCT ",")
(PUNCT "**")
(ID "options")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "showerror")
(PUNCT "(")
(ID "title")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "message")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(PUNCT "**")
(ID "options")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Show an error message")
(NEWLINE)
(KEYWORD return)
(ID "_show")
(PUNCT "(")
(ID "title")
(PUNCT ",")
(ID "message")
(PUNCT ",")
(ID "ERROR")
(PUNCT ",")
(ID "OK")
(PUNCT ",")
(PUNCT "**")
(ID "options")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "askquestion")
(PUNCT "(")
(ID "title")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "message")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(PUNCT "**")
(ID "options")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Ask a question")
(NEWLINE)
(KEYWORD return)
(ID "_show")
(PUNCT "(")
(ID "title")
(PUNCT ",")
(ID "message")
(PUNCT ",")
(ID "QUESTION")
(PUNCT ",")
(ID "YESNO")
(PUNCT ",")
(PUNCT "**")
(ID "options")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "askokcancel")
(PUNCT "(")
(ID "title")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "message")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(PUNCT "**")
(ID "options")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Ask if operation should proceed; return true if the answer is ok")
(NEWLINE)
(ID "s")
(PUNCT "=")
(ID "_show")
(PUNCT "(")
(ID "title")
(PUNCT ",")
(ID "message")
(PUNCT ",")
(ID "QUESTION")
(PUNCT ",")
(ID "OKCANCEL")
(PUNCT ",")
(PUNCT "**")
(ID "options")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "s")
(PUNCT "==")
(ID "OK")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "askyesno")
(PUNCT "(")
(ID "title")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "message")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(PUNCT "**")
(ID "options")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Ask a question; return true if the answer is yes")
(NEWLINE)
(ID "s")
(PUNCT "=")
(ID "_show")
(PUNCT "(")
(ID "title")
(PUNCT ",")
(ID "message")
(PUNCT ",")
(ID "QUESTION")
(PUNCT ",")
(ID "YESNO")
(PUNCT ",")
(PUNCT "**")
(ID "options")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "s")
(PUNCT "==")
(ID "YES")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "askyesnocancel")
(PUNCT "(")
(ID "title")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "message")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(PUNCT "**")
(ID "options")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Ask a question; return true if the answer is yes, None if cancelled.")
(NEWLINE)
(ID "s")
(PUNCT "=")
(ID "_show")
(PUNCT "(")
(ID "title")
(PUNCT ",")
(ID "message")
(PUNCT ",")
(ID "QUESTION")
(PUNCT ",")
(ID "YESNOCANCEL")
(PUNCT ",")
(PUNCT "**")
(ID "options")
(PUNCT ")")
(NEWLINE)
(ID "s")
(PUNCT "=")
(ID "str")
(PUNCT "(")
(ID "s")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "s")
(PUNCT "==")
(ID "CANCEL")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD None)
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "s")
(PUNCT "==")
(ID "YES")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "askretrycancel")
(PUNCT "(")
(ID "title")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "message")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(PUNCT "**")
(ID "options")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Ask if operation should be retried; return true if the answer is yes")
(NEWLINE)
(ID "s")
(PUNCT "=")
(ID "_show")
(PUNCT "(")
(ID "title")
(PUNCT ",")
(ID "message")
(PUNCT ",")
(ID "WARNING")
(PUNCT ",")
(ID "RETRYCANCEL")
(PUNCT ",")
(PUNCT "**")
(ID "options")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "s")
(PUNCT "==")
(ID "RETRY")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "__name__")
(PUNCT "==")
(LIT "__main__")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "print")
(PUNCT "(")
(LIT "info")
(PUNCT ",")
(ID "showinfo")
(PUNCT "(")
(LIT "Spam")
(PUNCT ",")
(LIT "Egg Information")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(LIT "warning")
(PUNCT ",")
(ID "showwarning")
(PUNCT "(")
(LIT "Spam")
(PUNCT ",")
(LIT "Egg Warning")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(LIT "error")
(PUNCT ",")
(ID "showerror")
(PUNCT "(")
(LIT "Spam")
(PUNCT ",")
(LIT "Egg Alert")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(LIT "question")
(PUNCT ",")
(ID "askquestion")
(PUNCT "(")
(LIT "Spam")
(PUNCT ",")
(LIT "Question?")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(LIT "proceed")
(PUNCT ",")
(ID "askokcancel")
(PUNCT "(")
(LIT "Spam")
(PUNCT ",")
(LIT "Proceed?")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(LIT "yes/no")
(PUNCT ",")
(ID "askyesno")
(PUNCT "(")
(LIT "Spam")
(PUNCT ",")
(LIT "Got it?")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(LIT "yes/no/cancel")
(PUNCT ",")
(ID "askyesnocancel")
(PUNCT "(")
(LIT "Spam")
(PUNCT ",")
(LIT "Want it?")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "print")
(PUNCT "(")
(LIT "try again")
(PUNCT ",")
(ID "askretrycancel")
(PUNCT "(")
(LIT "Spam")
(PUNCT ",")
(LIT "Try again?")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ENDMARKER)
