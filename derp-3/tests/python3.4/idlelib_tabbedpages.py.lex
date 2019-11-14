(LIT "An implementation of tabbed pages using only standard Tkinter.\n\nOriginally developed for use in IDLE. Based on tabpage.py.\n\nClasses exported:\nTabbedPageSet -- A Tkinter implementation of a tabbed-page widget.\nTabSet -- A widget containing tabs (buttons) in one or more rows.\n\n")
(NEWLINE)
(KEYWORD from)
(ID "tkinter")
(KEYWORD import)
(PUNCT "*")
(NEWLINE)
(KEYWORD class)
(ID "InvalidNameError")
(PUNCT "(")
(ID "Exception")
(PUNCT ")")
(PUNCT ":")
(KEYWORD pass)
(NEWLINE)
(KEYWORD class)
(ID "AlreadyExistsError")
(PUNCT "(")
(ID "Exception")
(PUNCT ")")
(PUNCT ":")
(KEYWORD pass)
(NEWLINE)
(KEYWORD class)
(ID "TabSet")
(PUNCT "(")
(ID "Frame")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A widget containing tabs (buttons) in one or more rows.\n\n    Only one tab may be selected at a time.\n\n    ")
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "page_set")
(PUNCT ",")
(ID "select_command")
(PUNCT ",")
(ID "tabs")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "n_rows")
(PUNCT "=")
(LIT 1)
(PUNCT ",")
(ID "max_tabs_per_row")
(PUNCT "=")
(LIT 5)
(PUNCT ",")
(ID "expand_tabs")
(PUNCT "=")
(KEYWORD False)
(PUNCT ",")
(PUNCT "**")
(ID "kw")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Constructor arguments:\n\n        select_command -- A callable which will be called when a tab is\n        selected. It is called with the name of the selected tab as an\n        argument.\n\n        tabs -- A list of strings, the names of the tabs. Should be specified in\n        the desired tab order. The first tab will be the default and first\n        active tab. If tabs is None or empty, the TabSet will be initialized\n        empty.\n\n        n_rows -- Number of rows of tabs to be shown. If n_rows <= 0 or is\n        None, then the number of rows will be decided by TabSet. See\n        _arrange_tabs() for details.\n\n        max_tabs_per_row -- Used for deciding how many rows of tabs are needed,\n        when the number of rows is not constant. See _arrange_tabs() for\n        details.\n\n        ")
(NEWLINE)
(ID "Frame")
(PUNCT ".")
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "page_set")
(PUNCT ",")
(PUNCT "**")
(ID "kw")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "select_command")
(PUNCT "=")
(ID "select_command")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "n_rows")
(PUNCT "=")
(ID "n_rows")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "max_tabs_per_row")
(PUNCT "=")
(ID "max_tabs_per_row")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "expand_tabs")
(PUNCT "=")
(ID "expand_tabs")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "page_set")
(PUNCT "=")
(ID "page_set")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_tabs")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_tab2row")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(KEYWORD if)
(ID "tabs")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_tab_names")
(PUNCT "=")
(ID "list")
(PUNCT "(")
(ID "tabs")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_tab_names")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_selected_tab")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_tab_rows")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "padding_frame")
(PUNCT "=")
(ID "Frame")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "height")
(PUNCT "=")
(LIT 2)
(PUNCT ",")
(ID "borderwidth")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "relief")
(PUNCT "=")
(ID "FLAT")
(PUNCT ",")
(ID "background")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "cget")
(PUNCT "(")
(LIT "background")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "padding_frame")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(ID "side")
(PUNCT "=")
(ID "TOP")
(PUNCT ",")
(ID "fill")
(PUNCT "=")
(ID "X")
(PUNCT ",")
(ID "expand")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_arrange_tabs")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "add_tab")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "tab_name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Add a new tab with the name given in tab_name.")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "tab_name")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "InvalidNameError")
(PUNCT "(")
(LIT "Invalid Tab name: '%s'")
(PUNCT "%")
(ID "tab_name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "tab_name")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_tab_names")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "AlreadyExistsError")
(PUNCT "(")
(LIT "Tab named '%s' already exists")
(PUNCT "%")
(ID "tab_name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_tab_names")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "tab_name")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_arrange_tabs")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "remove_tab")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "tab_name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Remove the tab named <tab_name>")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "tab_name")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_tab_names")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "KeyError")
(PUNCT "(")
(LIT "No such Tab: '%s")
(PUNCT "%")
(ID "tab_name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_tab_names")
(PUNCT ".")
(ID "remove")
(PUNCT "(")
(ID "tab_name")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_arrange_tabs")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "set_selected_tab")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "tab_name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Show the tab named <tab_name> as the selected one")
(NEWLINE)
(KEYWORD if)
(ID "tab_name")
(PUNCT "==")
(ID "self")
(PUNCT ".")
(ID "_selected_tab")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "tab_name")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(KEYWORD and)
(ID "tab_name")
(KEYWORD not)
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_tabs")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "KeyError")
(PUNCT "(")
(LIT "No such Tab: '%s")
(PUNCT "%")
(ID "tab_name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_selected_tab")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_tabs")
(PUNCT "[")
(ID "self")
(PUNCT ".")
(ID "_selected_tab")
(PUNCT "]")
(PUNCT ".")
(ID "set_normal")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_selected_tab")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(KEYWORD if)
(ID "tab_name")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_selected_tab")
(PUNCT "=")
(ID "tab_name")
(NEWLINE)
(ID "tab")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_tabs")
(PUNCT "[")
(ID "tab_name")
(PUNCT "]")
(NEWLINE)
(ID "tab")
(PUNCT ".")
(ID "set_selected")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "tab_row")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_tab2row")
(PUNCT "[")
(ID "tab")
(PUNCT "]")
(NEWLINE)
(ID "tab_row")
(PUNCT ".")
(ID "pack_forget")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "tab_row")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(ID "side")
(PUNCT "=")
(ID "TOP")
(PUNCT ",")
(ID "fill")
(PUNCT "=")
(ID "X")
(PUNCT ",")
(ID "expand")
(PUNCT "=")
(LIT 0)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_add_tab_row")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "tab_names")
(PUNCT ",")
(ID "expand_tabs")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(KEYWORD not)
(ID "tab_names")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(ID "tab_row")
(PUNCT "=")
(ID "Frame")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(NEWLINE)
(ID "tab_row")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(ID "side")
(PUNCT "=")
(ID "TOP")
(PUNCT ",")
(ID "fill")
(PUNCT "=")
(ID "X")
(PUNCT ",")
(ID "expand")
(PUNCT "=")
(LIT 0)
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_tab_rows")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "tab_row")
(PUNCT ")")
(NEWLINE)
(KEYWORD for)
(ID "tab_name")
(KEYWORD in)
(ID "tab_names")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "tab")
(PUNCT "=")
(ID "TabSet")
(PUNCT ".")
(ID "TabButton")
(PUNCT "(")
(ID "tab_name")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "select_command")
(PUNCT ",")
(ID "tab_row")
(PUNCT ",")
(ID "self")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "expand_tabs")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "tab")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(ID "side")
(PUNCT "=")
(ID "LEFT")
(PUNCT ",")
(ID "fill")
(PUNCT "=")
(ID "X")
(PUNCT ",")
(ID "expand")
(PUNCT "=")
(KEYWORD True)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "tab")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(ID "side")
(PUNCT "=")
(ID "LEFT")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_tabs")
(PUNCT "[")
(ID "tab_name")
(PUNCT "]")
(PUNCT "=")
(ID "tab")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_tab2row")
(PUNCT "[")
(ID "tab")
(PUNCT "]")
(PUNCT "=")
(ID "tab_row")
(NEWLINE)
(DEDENT)
(ID "tab")
(PUNCT ".")
(ID "is_last_in_row")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_reset_tab_rows")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD while)
(ID "self")
(PUNCT ".")
(ID "_tab_rows")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "tab_row")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_tab_rows")
(PUNCT ".")
(ID "pop")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "tab_row")
(PUNCT ".")
(ID "destroy")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_tab2row")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_arrange_tabs")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "\n        Arrange the tabs in rows, in the order in which they were added.\n\n        If n_rows >= 1, this will be the number of rows used. Otherwise the\n        number of rows will be calculated according to the number of tabs and\n        max_tabs_per_row. In this case, the number of rows may change when\n        adding/removing tabs.\n\n        ")
(NEWLINE)
(KEYWORD while)
(ID "self")
(PUNCT ".")
(ID "_tabs")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_tabs")
(PUNCT ".")
(ID "popitem")
(PUNCT "(")
(PUNCT ")")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ".")
(ID "destroy")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_reset_tab_rows")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "_tab_names")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "n_rows")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(KEYWORD and)
(ID "self")
(PUNCT ".")
(ID "n_rows")
(PUNCT ">")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "n_rows")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "n_rows")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "n_rows")
(PUNCT "=")
(PUNCT "(")
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_tab_names")
(PUNCT ")")
(PUNCT "-")
(LIT 1)
(PUNCT ")")
(PUNCT "//")
(ID "self")
(PUNCT ".")
(ID "max_tabs_per_row")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(DEDENT)
(ID "expand_tabs")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "expand_tabs")
(KEYWORD or)
(ID "n_rows")
(PUNCT ">")
(LIT 1)
(NEWLINE)
(ID "i")
(PUNCT "=")
(LIT 0)
(NEWLINE)
(KEYWORD for)
(ID "row_index")
(KEYWORD in)
(ID "range")
(PUNCT "(")
(ID "n_rows")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "n_tabs")
(PUNCT "=")
(PUNCT "(")
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_tab_names")
(PUNCT ")")
(PUNCT "-")
(ID "i")
(PUNCT "-")
(LIT 1)
(PUNCT ")")
(PUNCT "//")
(PUNCT "(")
(ID "n_rows")
(PUNCT "-")
(ID "row_index")
(PUNCT ")")
(PUNCT "+")
(LIT 1)
(NEWLINE)
(ID "tab_names")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_tab_names")
(PUNCT "[")
(ID "i")
(PUNCT ":")
(ID "i")
(PUNCT "+")
(ID "n_tabs")
(PUNCT "]")
(NEWLINE)
(ID "i")
(PUNCT "+=")
(ID "n_tabs")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_add_tab_row")
(PUNCT "(")
(ID "tab_names")
(PUNCT ",")
(ID "expand_tabs")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "selected")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_selected_tab")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "set_selected_tab")
(PUNCT "(")
(KEYWORD None)
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "selected")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_tab_names")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "set_selected_tab")
(PUNCT "(")
(ID "selected")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "TabButton")
(PUNCT "(")
(ID "Frame")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A simple tab-like widget.")
(NEWLINE)
(ID "bw")
(PUNCT "=")
(LIT 2)
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "select_command")
(PUNCT ",")
(ID "tab_row")
(PUNCT ",")
(ID "tab_set")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Constructor arguments:\n\n            name -- The tab's name, which will appear in its button.\n\n            select_command -- The command to be called upon selection of the\n            tab. It is called with the tab's name as an argument.\n\n            ")
(NEWLINE)
(ID "Frame")
(PUNCT ".")
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "tab_row")
(PUNCT ",")
(ID "borderwidth")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "bw")
(PUNCT ",")
(ID "relief")
(PUNCT "=")
(ID "RAISED")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "name")
(PUNCT "=")
(ID "name")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "select_command")
(PUNCT "=")
(ID "select_command")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "tab_set")
(PUNCT "=")
(ID "tab_set")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "is_last_in_row")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "button")
(PUNCT "=")
(ID "Radiobutton")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "text")
(PUNCT "=")
(ID "name")
(PUNCT ",")
(ID "command")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_select_event")
(PUNCT ",")
(ID "padx")
(PUNCT "=")
(LIT 5)
(PUNCT ",")
(ID "pady")
(PUNCT "=")
(LIT 1)
(PUNCT ",")
(ID "takefocus")
(PUNCT "=")
(ID "FALSE")
(PUNCT ",")
(ID "indicatoron")
(PUNCT "=")
(ID "FALSE")
(PUNCT ",")
(ID "highlightthickness")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "selectcolor")
(PUNCT "=")
(LIT "")
(PUNCT ",")
(ID "borderwidth")
(PUNCT "=")
(LIT 0)
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "button")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(ID "side")
(PUNCT "=")
(ID "LEFT")
(PUNCT ",")
(ID "fill")
(PUNCT "=")
(ID "X")
(PUNCT ",")
(ID "expand")
(PUNCT "=")
(KEYWORD True)
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_init_masks")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "set_normal")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_select_event")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(PUNCT "*")
(ID "args")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Event handler for tab selection.\n\n            With TabbedPageSet, this calls TabbedPageSet.change_page, so that\n            selecting a tab changes the page.\n\n            Note that this does -not- call set_selected -- it will be called by\n            TabSet.set_selected_tab, which should be called when whatever the\n            tabs are related to changes.\n\n            ")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "select_command")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "name")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "set_selected")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Assume selected look")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_place_masks")
(PUNCT "(")
(ID "selected")
(PUNCT "=")
(KEYWORD True)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "set_normal")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Assume normal look")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_place_masks")
(PUNCT "(")
(ID "selected")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_init_masks")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "page_set")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "tab_set")
(PUNCT ".")
(ID "page_set")
(NEWLINE)
(ID "background")
(PUNCT "=")
(ID "page_set")
(PUNCT ".")
(ID "pages_frame")
(PUNCT ".")
(ID "cget")
(PUNCT "(")
(LIT "background")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "mask")
(PUNCT "=")
(ID "Frame")
(PUNCT "(")
(ID "page_set")
(PUNCT ",")
(ID "borderwidth")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "relief")
(PUNCT "=")
(ID "FLAT")
(PUNCT ",")
(ID "background")
(PUNCT "=")
(ID "background")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "mskl")
(PUNCT "=")
(ID "Frame")
(PUNCT "(")
(ID "page_set")
(PUNCT ",")
(ID "borderwidth")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "relief")
(PUNCT "=")
(ID "FLAT")
(PUNCT ",")
(ID "background")
(PUNCT "=")
(ID "background")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "mskl")
(PUNCT ".")
(ID "ml")
(PUNCT "=")
(ID "Frame")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "mskl")
(PUNCT ",")
(ID "borderwidth")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "bw")
(PUNCT ",")
(ID "relief")
(PUNCT "=")
(ID "RAISED")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "mskl")
(PUNCT ".")
(ID "ml")
(PUNCT ".")
(ID "place")
(PUNCT "(")
(ID "x")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "y")
(PUNCT "=")
(PUNCT "-")
(ID "self")
(PUNCT ".")
(ID "bw")
(PUNCT ",")
(ID "width")
(PUNCT "=")
(LIT 2)
(PUNCT "*")
(ID "self")
(PUNCT ".")
(ID "bw")
(PUNCT ",")
(ID "height")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "bw")
(PUNCT "*")
(LIT 4)
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "mskr")
(PUNCT "=")
(ID "Frame")
(PUNCT "(")
(ID "page_set")
(PUNCT ",")
(ID "borderwidth")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "relief")
(PUNCT "=")
(ID "FLAT")
(PUNCT ",")
(ID "background")
(PUNCT "=")
(ID "background")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "mskr")
(PUNCT ".")
(ID "mr")
(PUNCT "=")
(ID "Frame")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "mskr")
(PUNCT ",")
(ID "borderwidth")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "bw")
(PUNCT ",")
(ID "relief")
(PUNCT "=")
(ID "RAISED")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_place_masks")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "selected")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "height")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "bw")
(NEWLINE)
(KEYWORD if)
(ID "selected")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "height")
(PUNCT "+=")
(ID "self")
(PUNCT ".")
(ID "bw")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "mask")
(PUNCT ".")
(ID "place")
(PUNCT "(")
(ID "in_")
(PUNCT "=")
(ID "self")
(PUNCT ",")
(ID "relx")
(PUNCT "=")
(LIT 0.0)
(PUNCT ",")
(ID "x")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "rely")
(PUNCT "=")
(LIT 1.0)
(PUNCT ",")
(ID "y")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "relwidth")
(PUNCT "=")
(LIT 1.0)
(PUNCT ",")
(ID "width")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "relheight")
(PUNCT "=")
(LIT 0.0)
(PUNCT ",")
(ID "height")
(PUNCT "=")
(ID "height")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "mskl")
(PUNCT ".")
(ID "place")
(PUNCT "(")
(ID "in_")
(PUNCT "=")
(ID "self")
(PUNCT ",")
(ID "relx")
(PUNCT "=")
(LIT 0.0)
(PUNCT ",")
(ID "x")
(PUNCT "=")
(PUNCT "-")
(ID "self")
(PUNCT ".")
(ID "bw")
(PUNCT ",")
(ID "rely")
(PUNCT "=")
(LIT 1.0)
(PUNCT ",")
(ID "y")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "relwidth")
(PUNCT "=")
(LIT 0.0)
(PUNCT ",")
(ID "width")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "bw")
(PUNCT ",")
(ID "relheight")
(PUNCT "=")
(LIT 0.0)
(PUNCT ",")
(ID "height")
(PUNCT "=")
(ID "height")
(PUNCT ")")
(NEWLINE)
(ID "page_set")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "tab_set")
(PUNCT ".")
(ID "page_set")
(NEWLINE)
(KEYWORD if)
(ID "selected")
(KEYWORD and)
(PUNCT "(")
(PUNCT "(")
(KEYWORD not)
(ID "self")
(PUNCT ".")
(ID "is_last_in_row")
(PUNCT ")")
(KEYWORD or)
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "winfo_rootx")
(PUNCT "(")
(PUNCT ")")
(PUNCT "+")
(ID "self")
(PUNCT ".")
(ID "winfo_width")
(PUNCT "(")
(PUNCT ")")
(PUNCT "<")
(ID "page_set")
(PUNCT ".")
(ID "winfo_rootx")
(PUNCT "(")
(PUNCT ")")
(PUNCT "+")
(ID "page_set")
(PUNCT ".")
(ID "winfo_width")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "height")
(PUNCT "-=")
(ID "self")
(PUNCT ".")
(ID "bw")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "mskr")
(PUNCT ".")
(ID "place")
(PUNCT "(")
(ID "in_")
(PUNCT "=")
(ID "self")
(PUNCT ",")
(ID "relx")
(PUNCT "=")
(LIT 1.0)
(PUNCT ",")
(ID "x")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "rely")
(PUNCT "=")
(LIT 1.0)
(PUNCT ",")
(ID "y")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "relwidth")
(PUNCT "=")
(LIT 0.0)
(PUNCT ",")
(ID "width")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "bw")
(PUNCT ",")
(ID "relheight")
(PUNCT "=")
(LIT 0.0)
(PUNCT ",")
(ID "height")
(PUNCT "=")
(ID "height")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "mskr")
(PUNCT ".")
(ID "mr")
(PUNCT ".")
(ID "place")
(PUNCT "(")
(ID "x")
(PUNCT "=")
(PUNCT "-")
(ID "self")
(PUNCT ".")
(ID "bw")
(PUNCT ",")
(ID "y")
(PUNCT "=")
(PUNCT "-")
(ID "self")
(PUNCT ".")
(ID "bw")
(PUNCT ",")
(ID "width")
(PUNCT "=")
(LIT 2)
(PUNCT "*")
(ID "self")
(PUNCT ".")
(ID "bw")
(PUNCT ",")
(ID "height")
(PUNCT "=")
(ID "height")
(PUNCT "+")
(ID "self")
(PUNCT ".")
(ID "bw")
(PUNCT "*")
(LIT 2)
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "tab_set")
(PUNCT ".")
(ID "lower")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "TabbedPageSet")
(PUNCT "(")
(ID "Frame")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "A Tkinter tabbed-pane widget.\n\n    Constains set of 'pages' (or 'panes') with tabs above for selecting which\n    page is displayed. Only one page will be displayed at a time.\n\n    Pages may be accessed through the 'pages' attribute, which is a dictionary\n    of pages, using the name given as the key. A page is an instance of a\n    subclass of Tk's Frame widget.\n\n    The page widgets will be created (and destroyed when required) by the\n    TabbedPageSet. Do not call the page's pack/place/grid/destroy methods.\n\n    Pages may be added or removed at any time using the add_page() and\n    remove_page() methods.\n\n    ")
(NEWLINE)
(KEYWORD class)
(ID "Page")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Abstract base class for TabbedPageSet's pages.\n\n        Subclasses must override the _show() and _hide() methods.\n\n        ")
(NEWLINE)
(ID "uses_grid")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "page_set")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "frame")
(PUNCT "=")
(ID "Frame")
(PUNCT "(")
(ID "page_set")
(PUNCT ",")
(ID "borderwidth")
(PUNCT "=")
(LIT 2)
(PUNCT ",")
(ID "relief")
(PUNCT "=")
(ID "RAISED")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_show")
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
(KEYWORD def)
(ID "_hide")
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
(KEYWORD class)
(ID "PageRemove")
(PUNCT "(")
(ID "Page")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Page class using the grid placement manager's \"remove\" mechanism.")
(NEWLINE)
(ID "uses_grid")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(KEYWORD def)
(ID "_show")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "frame")
(PUNCT ".")
(ID "grid")
(PUNCT "(")
(ID "row")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "column")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "sticky")
(PUNCT "=")
(ID "NSEW")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_hide")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "frame")
(PUNCT ".")
(ID "grid_remove")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "PageLift")
(PUNCT "(")
(ID "Page")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Page class using the grid placement manager's \"lift\" mechanism.")
(NEWLINE)
(ID "uses_grid")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "page_set")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "super")
(PUNCT "(")
(ID "TabbedPageSet")
(PUNCT ".")
(ID "PageLift")
(PUNCT ",")
(ID "self")
(PUNCT ")")
(PUNCT ".")
(ID "__init__")
(PUNCT "(")
(ID "page_set")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "frame")
(PUNCT ".")
(ID "grid")
(PUNCT "(")
(ID "row")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "column")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "sticky")
(PUNCT "=")
(ID "NSEW")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "frame")
(PUNCT ".")
(ID "lower")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_show")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "frame")
(PUNCT ".")
(ID "lift")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_hide")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "frame")
(PUNCT ".")
(ID "lower")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "PagePackForget")
(PUNCT "(")
(ID "Page")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Page class using the pack placement manager's \"forget\" mechanism.")
(NEWLINE)
(KEYWORD def)
(ID "_show")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "frame")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(ID "fill")
(PUNCT "=")
(ID "BOTH")
(PUNCT ",")
(ID "expand")
(PUNCT "=")
(KEYWORD True)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_hide")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "frame")
(PUNCT ".")
(ID "pack_forget")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "parent")
(PUNCT ",")
(ID "page_names")
(PUNCT "=")
(KEYWORD None)
(PUNCT ",")
(ID "page_class")
(PUNCT "=")
(ID "PageLift")
(PUNCT ",")
(ID "n_rows")
(PUNCT "=")
(LIT 1)
(PUNCT ",")
(ID "max_tabs_per_row")
(PUNCT "=")
(LIT 5)
(PUNCT ",")
(ID "expand_tabs")
(PUNCT "=")
(KEYWORD False)
(PUNCT ",")
(PUNCT "**")
(ID "kw")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Constructor arguments:\n\n        page_names -- A list of strings, each will be the dictionary key to a\n        page's widget, and the name displayed on the page's tab. Should be\n        specified in the desired page order. The first page will be the default\n        and first active page. If page_names is None or empty, the\n        TabbedPageSet will be initialized empty.\n\n        n_rows, max_tabs_per_row -- Parameters for the TabSet which will\n        manage the tabs. See TabSet's docs for details.\n\n        page_class -- Pages can be shown/hidden using three mechanisms:\n\n        * PageLift - All pages will be rendered one on top of the other. When\n          a page is selected, it will be brought to the top, thus hiding all\n          other pages. Using this method, the TabbedPageSet will not be resized\n          when pages are switched. (It may still be resized when pages are\n          added/removed.)\n\n        * PageRemove - When a page is selected, the currently showing page is\n          hidden, and the new page shown in its place. Using this method, the\n          TabbedPageSet may resize when pages are changed.\n\n        * PagePackForget - This mechanism uses the pack placement manager.\n          When a page is shown it is packed, and when it is hidden it is\n          unpacked (i.e. pack_forget). This mechanism may also cause the\n          TabbedPageSet to resize when the page is changed.\n\n        ")
(NEWLINE)
(ID "Frame")
(PUNCT ".")
(ID "__init__")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "parent")
(PUNCT ",")
(PUNCT "**")
(ID "kw")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "page_class")
(PUNCT "=")
(ID "page_class")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "pages")
(PUNCT "=")
(PUNCT "{")
(PUNCT "}")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_pages_order")
(PUNCT "=")
(PUNCT "[")
(PUNCT "]")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_current_page")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_default_page")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "columnconfigure")
(PUNCT "(")
(LIT 0)
(PUNCT ",")
(ID "weight")
(PUNCT "=")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "rowconfigure")
(PUNCT "(")
(LIT 1)
(PUNCT ",")
(ID "weight")
(PUNCT "=")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "pages_frame")
(PUNCT "=")
(ID "Frame")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "pages_frame")
(PUNCT ".")
(ID "grid")
(PUNCT "(")
(ID "row")
(PUNCT "=")
(LIT 1)
(PUNCT ",")
(ID "column")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "sticky")
(PUNCT "=")
(ID "NSEW")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "page_class")
(PUNCT ".")
(ID "uses_grid")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "pages_frame")
(PUNCT ".")
(ID "columnconfigure")
(PUNCT "(")
(LIT 0)
(PUNCT ",")
(ID "weight")
(PUNCT "=")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "pages_frame")
(PUNCT ".")
(ID "rowconfigure")
(PUNCT "(")
(LIT 0)
(PUNCT ",")
(ID "weight")
(PUNCT "=")
(LIT 1)
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_tab_set")
(PUNCT "=")
(ID "TabSet")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "change_page")
(PUNCT ",")
(ID "n_rows")
(PUNCT "=")
(ID "n_rows")
(PUNCT ",")
(ID "max_tabs_per_row")
(PUNCT "=")
(ID "max_tabs_per_row")
(PUNCT ",")
(ID "expand_tabs")
(PUNCT "=")
(ID "expand_tabs")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "page_names")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "name")
(KEYWORD in)
(ID "page_names")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "add_page")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_tab_set")
(PUNCT ".")
(ID "grid")
(PUNCT "(")
(ID "row")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "column")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "sticky")
(PUNCT "=")
(ID "NSEW")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "change_page")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_default_page")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "add_page")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "page_name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Add a new page with the name given in page_name.")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "page_name")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "InvalidNameError")
(PUNCT "(")
(LIT "Invalid TabPage name: '%s'")
(PUNCT "%")
(ID "page_name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "page_name")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "pages")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "AlreadyExistsError")
(PUNCT "(")
(LIT "TabPage named '%s' already exists")
(PUNCT "%")
(ID "page_name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "pages")
(PUNCT "[")
(ID "page_name")
(PUNCT "]")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "page_class")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "pages_frame")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_pages_order")
(PUNCT ".")
(ID "append")
(PUNCT "(")
(ID "page_name")
(PUNCT ")")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "_tab_set")
(PUNCT ".")
(ID "add_tab")
(PUNCT "(")
(ID "page_name")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "pages")
(PUNCT ")")
(PUNCT "==")
(LIT 1)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_default_page")
(PUNCT "=")
(ID "page_name")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "change_page")
(PUNCT "(")
(ID "page_name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "remove_page")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "page_name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Destroy the page whose name is given in page_name.")
(NEWLINE)
(KEYWORD if)
(KEYWORD not)
(ID "page_name")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "pages")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "KeyError")
(PUNCT "(")
(LIT "No such TabPage: '%s")
(PUNCT "%")
(ID "page_name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_pages_order")
(PUNCT ".")
(ID "remove")
(PUNCT "(")
(ID "page_name")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(ID "len")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_pages_order")
(PUNCT ")")
(PUNCT ">")
(LIT 0)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "page_name")
(PUNCT "==")
(ID "self")
(PUNCT ".")
(ID "_default_page")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_default_page")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_pages_order")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_default_page")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "page_name")
(PUNCT "==")
(ID "self")
(PUNCT ".")
(ID "_current_page")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "change_page")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_default_page")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_tab_set")
(PUNCT ".")
(ID "remove_tab")
(PUNCT "(")
(ID "page_name")
(PUNCT ")")
(NEWLINE)
(ID "page")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "pages")
(PUNCT ".")
(ID "pop")
(PUNCT "(")
(ID "page_name")
(PUNCT ")")
(NEWLINE)
(ID "page")
(PUNCT ".")
(ID "frame")
(PUNCT ".")
(ID "destroy")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "change_page")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "page_name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Show the page whose name is given in page_name.")
(NEWLINE)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_current_page")
(PUNCT "==")
(ID "page_name")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "page_name")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(KEYWORD and)
(ID "page_name")
(KEYWORD not)
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "pages")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "KeyError")
(PUNCT "(")
(LIT "No such TabPage: '%s'")
(PUNCT "%")
(ID "page_name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "_current_page")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "pages")
(PUNCT "[")
(ID "self")
(PUNCT ".")
(ID "_current_page")
(PUNCT "]")
(PUNCT ".")
(ID "_hide")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_current_page")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(KEYWORD if)
(ID "page_name")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_current_page")
(PUNCT "=")
(ID "page_name")
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "pages")
(PUNCT "[")
(ID "page_name")
(PUNCT "]")
(PUNCT ".")
(ID "_show")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "self")
(PUNCT ".")
(ID "_tab_set")
(PUNCT ".")
(ID "set_selected_tab")
(PUNCT "(")
(ID "page_name")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_tabbed_pages")
(PUNCT "(")
(ID "parent")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "root")
(PUNCT "=")
(ID "Tk")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "width")
(PUNCT ",")
(ID "height")
(PUNCT ",")
(ID "x")
(PUNCT ",")
(ID "y")
(PUNCT "=")
(ID "list")
(PUNCT "(")
(ID "map")
(PUNCT "(")
(ID "int")
(PUNCT ",")
(ID "re")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT "[x+]")
(PUNCT ",")
(ID "parent")
(PUNCT ".")
(ID "geometry")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "root")
(PUNCT ".")
(ID "geometry")
(PUNCT "(")
(LIT "+%d+%d")
(PUNCT "%")
(PUNCT "(")
(ID "x")
(PUNCT ",")
(ID "y")
(PUNCT "+")
(LIT 175)
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "root")
(PUNCT ".")
(ID "title")
(PUNCT "(")
(LIT "Test tabbed pages")
(PUNCT ")")
(NEWLINE)
(ID "tabPage")
(PUNCT "=")
(ID "TabbedPageSet")
(PUNCT "(")
(ID "root")
(PUNCT ",")
(ID "page_names")
(PUNCT "=")
(PUNCT "[")
(LIT "Foobar")
(PUNCT ",")
(LIT "Baz")
(PUNCT "]")
(PUNCT ",")
(ID "n_rows")
(PUNCT "=")
(LIT 0)
(PUNCT ",")
(ID "expand_tabs")
(PUNCT "=")
(KEYWORD False)
(PUNCT ",")
(PUNCT ")")
(NEWLINE)
(ID "tabPage")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(ID "side")
(PUNCT "=")
(ID "TOP")
(PUNCT ",")
(ID "expand")
(PUNCT "=")
(ID "TRUE")
(PUNCT ",")
(ID "fill")
(PUNCT "=")
(ID "BOTH")
(PUNCT ")")
(NEWLINE)
(ID "Label")
(PUNCT "(")
(ID "tabPage")
(PUNCT ".")
(ID "pages")
(PUNCT "[")
(LIT "Foobar")
(PUNCT "]")
(PUNCT ".")
(ID "frame")
(PUNCT ",")
(ID "text")
(PUNCT "=")
(LIT "Foo")
(PUNCT ",")
(ID "pady")
(PUNCT "=")
(LIT 20)
(PUNCT ")")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "Label")
(PUNCT "(")
(ID "tabPage")
(PUNCT ".")
(ID "pages")
(PUNCT "[")
(LIT "Foobar")
(PUNCT "]")
(PUNCT ".")
(ID "frame")
(PUNCT ",")
(ID "text")
(PUNCT "=")
(LIT "Bar")
(PUNCT ",")
(ID "pady")
(PUNCT "=")
(LIT 20)
(PUNCT ")")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "Label")
(PUNCT "(")
(ID "tabPage")
(PUNCT ".")
(ID "pages")
(PUNCT "[")
(LIT "Baz")
(PUNCT "]")
(PUNCT ".")
(ID "frame")
(PUNCT ",")
(ID "text")
(PUNCT "=")
(LIT "Baz")
(PUNCT ")")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "entryPgName")
(PUNCT "=")
(ID "Entry")
(PUNCT "(")
(ID "root")
(PUNCT ")")
(NEWLINE)
(ID "buttonAdd")
(PUNCT "=")
(ID "Button")
(PUNCT "(")
(ID "root")
(PUNCT ",")
(ID "text")
(PUNCT "=")
(LIT "Add Page")
(PUNCT ",")
(ID "command")
(PUNCT "=")
(KEYWORD lambda)
(PUNCT ":")
(ID "tabPage")
(PUNCT ".")
(ID "add_page")
(PUNCT "(")
(ID "entryPgName")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "buttonRemove")
(PUNCT "=")
(ID "Button")
(PUNCT "(")
(ID "root")
(PUNCT ",")
(ID "text")
(PUNCT "=")
(LIT "Remove Page")
(PUNCT ",")
(ID "command")
(PUNCT "=")
(KEYWORD lambda)
(PUNCT ":")
(ID "tabPage")
(PUNCT ".")
(ID "remove_page")
(PUNCT "(")
(ID "entryPgName")
(PUNCT ".")
(ID "get")
(PUNCT "(")
(PUNCT ")")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "labelPgName")
(PUNCT "=")
(ID "Label")
(PUNCT "(")
(ID "root")
(PUNCT ",")
(ID "text")
(PUNCT "=")
(LIT "name of page to add/remove:")
(PUNCT ")")
(NEWLINE)
(ID "buttonAdd")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(ID "padx")
(PUNCT "=")
(LIT 5)
(PUNCT ",")
(ID "pady")
(PUNCT "=")
(LIT 5)
(PUNCT ")")
(NEWLINE)
(ID "buttonRemove")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(ID "padx")
(PUNCT "=")
(LIT 5)
(PUNCT ",")
(ID "pady")
(PUNCT "=")
(LIT 5)
(PUNCT ")")
(NEWLINE)
(ID "labelPgName")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(ID "padx")
(PUNCT "=")
(LIT 5)
(PUNCT ")")
(NEWLINE)
(ID "entryPgName")
(PUNCT ".")
(ID "pack")
(PUNCT "(")
(ID "padx")
(PUNCT "=")
(LIT 5)
(PUNCT ")")
(NEWLINE)
(ID "root")
(PUNCT ".")
(ID "mainloop")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "__name__")
(PUNCT "==")
(LIT "__main__")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD from)
(ID "idlelib")
(PUNCT ".")
(ID "idle_test")
(PUNCT ".")
(ID "htest")
(KEYWORD import)
(ID "run")
(NEWLINE)
(ID "run")
(PUNCT "(")
(ID "_tabbed_pages")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ENDMARKER)