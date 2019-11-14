(LIT "Implementation of the DOM Level 3 'LS-Load' feature.")
(NEWLINE)
(KEYWORD import)
(ID "copy")
(NEWLINE)
(KEYWORD import)
(ID "xml")
(PUNCT ".")
(ID "dom")
(NEWLINE)
(KEYWORD from)
(ID "xml")
(PUNCT ".")
(ID "dom")
(PUNCT ".")
(ID "NodeFilter")
(KEYWORD import)
(ID "NodeFilter")
(NEWLINE)
(ID "__all__")
(PUNCT "=")
(PUNCT "[")
(LIT "DOMBuilder")
(PUNCT ",")
(LIT "DOMEntityResolver")
(PUNCT ",")
(LIT "DOMInputSource")
(PUNCT "]")
(NEWLINE)
(KEYWORD class)
(ID "Options")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Features object that has variables set for each DOMBuilder feature.\n\n    The DOMBuilder class uses an instance of this class to pass settings to\n    the ExpatBuilder class.\n    ")
(NEWLINE)
(ID "namespaces")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(ID "namespace_declarations")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "validation")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(ID "external_parameter_entities")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "external_general_entities")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "external_dtd_subset")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "validate_if_schema")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(ID "validate")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(ID "datatype_normalization")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(ID "create_entity_ref_nodes")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "entities")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "whitespace_in_element_content")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "cdata_sections")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "comments")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "charset_overrides_xml_encoding")
(PUNCT "=")
(KEYWORD True)
(NEWLINE)
(ID "infoset")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(ID "supported_mediatypes_only")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(ID "errorHandler")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "filter")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "DOMBuilder")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "entityResolver")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "errorHandler")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "filter")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "ACTION_REPLACE")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(ID "ACTION_APPEND_AS_CHILDREN")
(PUNCT "=")
(LIT 2)
(NEWLINE)
(ID "ACTION_INSERT_AFTER")
(PUNCT "=")
(LIT 3)
(NEWLINE)
(ID "ACTION_INSERT_BEFORE")
(PUNCT "=")
(LIT 4)
(NEWLINE)
(ID "_legal_actions")
(PUNCT "=")
(PUNCT "(")
(ID "ACTION_REPLACE")
(PUNCT ",")
(ID "ACTION_APPEND_AS_CHILDREN")
(PUNCT ",")
(ID "ACTION_INSERT_AFTER")
(PUNCT ",")
(ID "ACTION_INSERT_BEFORE")
(PUNCT ")")
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
(ID "_options")
(PUNCT "=")
(ID "Options")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_get_entityResolver")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "entityResolver")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_set_entityResolver")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "entityResolver")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "entityResolver")
(PUNCT "=")
(ID "entityResolver")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_get_errorHandler")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "errorHandler")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_set_errorHandler")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "errorHandler")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "errorHandler")
(PUNCT "=")
(ID "errorHandler")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_get_filter")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "filter")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_set_filter")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "filter")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "filter")
(PUNCT "=")
(ID "filter")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "setFeature")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "state")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "supportsFeature")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "state")
(PUNCT "=")
(ID "state")
(KEYWORD and)
(LIT 1)
(KEYWORD or)
(LIT 0)
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "settings")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_settings")
(PUNCT "[")
(PUNCT "(")
(ID "_name_xform")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ",")
(ID "state")
(PUNCT ")")
(PUNCT "]")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "KeyError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "xml")
(PUNCT ".")
(ID "dom")
(PUNCT ".")
(ID "NotSupportedErr")
(PUNCT "(")
(LIT "unsupported feature: %r")
(PUNCT "%")
(PUNCT "(")
(ID "name")
(PUNCT ",")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "name")
(PUNCT ",")
(ID "value")
(KEYWORD in)
(ID "settings")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "setattr")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_options")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "value")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "xml")
(PUNCT ".")
(ID "dom")
(PUNCT ".")
(ID "NotFoundErr")
(PUNCT "(")
(LIT "unknown feature: ")
(PUNCT "+")
(ID "repr")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "supportsFeature")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "hasattr")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_options")
(PUNCT ",")
(ID "_name_xform")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "canSetFeature")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ",")
(ID "state")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "key")
(PUNCT "=")
(PUNCT "(")
(ID "_name_xform")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ",")
(ID "state")
(KEYWORD and)
(LIT 1)
(KEYWORD or)
(LIT 0)
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "key")
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_settings")
(NEWLINE)
(DEDENT)
(ID "_settings")
(PUNCT "=")
(PUNCT "{")
(PUNCT "(")
(LIT "namespace_declarations")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "namespace_declarations")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "namespace_declarations")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "namespace_declarations")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "validation")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "validation")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "external_general_entities")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "external_general_entities")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "external_general_entities")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "external_general_entities")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "external_parameter_entities")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "external_parameter_entities")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "external_parameter_entities")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "external_parameter_entities")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "validate_if_schema")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "validate_if_schema")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "create_entity_ref_nodes")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "create_entity_ref_nodes")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "create_entity_ref_nodes")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "create_entity_ref_nodes")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "entities")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "create_entity_ref_nodes")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(LIT "entities")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "entities")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "entities")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "whitespace_in_element_content")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "whitespace_in_element_content")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "whitespace_in_element_content")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "whitespace_in_element_content")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "cdata_sections")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "cdata_sections")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "cdata_sections")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "cdata_sections")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "comments")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "comments")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "comments")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "comments")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "charset_overrides_xml_encoding")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "charset_overrides_xml_encoding")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "charset_overrides_xml_encoding")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "charset_overrides_xml_encoding")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "infoset")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "infoset")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "namespace_declarations")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(LIT "validate_if_schema")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(LIT "create_entity_ref_nodes")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(LIT "entities")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(LIT "cdata_sections")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(LIT "datatype_normalization")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(LIT "whitespace_in_element_content")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(LIT "comments")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT ",")
(PUNCT "(")
(LIT "charset_overrides_xml_encoding")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "supported_mediatypes_only")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "supported_mediatypes_only")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "namespaces")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "namespaces")
(PUNCT ",")
(LIT 0)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "(")
(LIT "namespaces")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT ":")
(PUNCT "[")
(PUNCT "(")
(LIT "namespaces")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT "]")
(PUNCT ",")
(PUNCT "}")
(NEWLINE)
(KEYWORD def)
(ID "getFeature")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "xname")
(PUNCT "=")
(ID "_name_xform")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(NEWLINE)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "getattr")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_options")
(PUNCT ",")
(ID "xname")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "AttributeError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "name")
(PUNCT "==")
(LIT "infoset")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "options")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_options")
(NEWLINE)
(KEYWORD return)
(PUNCT "(")
(ID "options")
(PUNCT ".")
(ID "datatype_normalization")
(KEYWORD and)
(ID "options")
(PUNCT ".")
(ID "whitespace_in_element_content")
(KEYWORD and)
(ID "options")
(PUNCT ".")
(ID "comments")
(KEYWORD and)
(ID "options")
(PUNCT ".")
(ID "charset_overrides_xml_encoding")
(KEYWORD and)
(KEYWORD not)
(PUNCT "(")
(ID "options")
(PUNCT ".")
(ID "namespace_declarations")
(KEYWORD or)
(ID "options")
(PUNCT ".")
(ID "validate_if_schema")
(KEYWORD or)
(ID "options")
(PUNCT ".")
(ID "create_entity_ref_nodes")
(KEYWORD or)
(ID "options")
(PUNCT ".")
(ID "entities")
(KEYWORD or)
(ID "options")
(PUNCT ".")
(ID "cdata_sections")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD raise)
(ID "xml")
(PUNCT ".")
(ID "dom")
(PUNCT ".")
(ID "NotFoundErr")
(PUNCT "(")
(LIT "feature %s not known")
(PUNCT "%")
(ID "repr")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "parseURI")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "uri")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "self")
(PUNCT ".")
(ID "entityResolver")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "input")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "entityResolver")
(PUNCT ".")
(ID "resolveEntity")
(PUNCT "(")
(KEYWORD None)
(PUNCT ",")
(ID "uri")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD else)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "input")
(PUNCT "=")
(ID "DOMEntityResolver")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "resolveEntity")
(PUNCT "(")
(KEYWORD None)
(PUNCT ",")
(ID "uri")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "parse")
(PUNCT "(")
(ID "input")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "parse")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "input")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "options")
(PUNCT "=")
(ID "copy")
(PUNCT ".")
(ID "copy")
(PUNCT "(")
(ID "self")
(PUNCT ".")
(ID "_options")
(PUNCT ")")
(NEWLINE)
(ID "options")
(PUNCT ".")
(ID "filter")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "filter")
(NEWLINE)
(ID "options")
(PUNCT ".")
(ID "errorHandler")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "errorHandler")
(NEWLINE)
(ID "fp")
(PUNCT "=")
(ID "input")
(PUNCT ".")
(ID "byteStream")
(NEWLINE)
(KEYWORD if)
(ID "fp")
(KEYWORD is)
(KEYWORD None)
(KEYWORD and)
(ID "options")
(PUNCT ".")
(ID "systemId")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD import)
(ID "urllib")
(PUNCT ".")
(ID "request")
(NEWLINE)
(ID "fp")
(PUNCT "=")
(ID "urllib")
(PUNCT ".")
(ID "request")
(PUNCT ".")
(ID "urlopen")
(PUNCT "(")
(ID "input")
(PUNCT ".")
(ID "systemId")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_parse_bytestream")
(PUNCT "(")
(ID "fp")
(PUNCT ",")
(ID "options")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "parseWithContext")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "input")
(PUNCT ",")
(ID "cnode")
(PUNCT ",")
(ID "action")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "action")
(KEYWORD not)
(KEYWORD in)
(ID "self")
(PUNCT ".")
(ID "_legal_actions")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "not a legal action")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD raise)
(ID "NotImplementedError")
(PUNCT "(")
(LIT "Haven't written this yet...")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_parse_bytestream")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "stream")
(PUNCT ",")
(ID "options")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD import)
(ID "xml")
(PUNCT ".")
(ID "dom")
(PUNCT ".")
(ID "expatbuilder")
(NEWLINE)
(ID "builder")
(PUNCT "=")
(ID "xml")
(PUNCT ".")
(ID "dom")
(PUNCT ".")
(ID "expatbuilder")
(PUNCT ".")
(ID "makeBuilder")
(PUNCT "(")
(ID "options")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "builder")
(PUNCT ".")
(ID "parseFile")
(PUNCT "(")
(ID "stream")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_name_xform")
(PUNCT "(")
(ID "name")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "name")
(PUNCT ".")
(ID "lower")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "replace")
(PUNCT "(")
(LIT "-")
(PUNCT ",")
(LIT "_")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "DOMEntityResolver")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "__slots__")
(PUNCT "=")
(LIT "_opener")
(PUNCT ",")
(NEWLINE)
(KEYWORD def)
(ID "resolveEntity")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "publicId")
(PUNCT ",")
(ID "systemId")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD assert)
(ID "systemId")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(NEWLINE)
(ID "source")
(PUNCT "=")
(ID "DOMInputSource")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(ID "source")
(PUNCT ".")
(ID "publicId")
(PUNCT "=")
(ID "publicId")
(NEWLINE)
(ID "source")
(PUNCT ".")
(ID "systemId")
(PUNCT "=")
(ID "systemId")
(NEWLINE)
(ID "source")
(PUNCT ".")
(ID "byteStream")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_get_opener")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "open")
(PUNCT "(")
(ID "systemId")
(PUNCT ")")
(NEWLINE)
(ID "source")
(PUNCT ".")
(ID "encoding")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_guess_media_encoding")
(PUNCT "(")
(ID "source")
(PUNCT ")")
(NEWLINE)
(KEYWORD import)
(ID "posixpath")
(PUNCT ",")
(ID "urllib")
(PUNCT ".")
(ID "parse")
(NEWLINE)
(ID "parts")
(PUNCT "=")
(ID "urllib")
(PUNCT ".")
(ID "parse")
(PUNCT ".")
(ID "urlparse")
(PUNCT "(")
(ID "systemId")
(PUNCT ")")
(NEWLINE)
(ID "scheme")
(PUNCT ",")
(ID "netloc")
(PUNCT ",")
(ID "path")
(PUNCT ",")
(ID "params")
(PUNCT ",")
(ID "query")
(PUNCT ",")
(ID "fragment")
(PUNCT "=")
(ID "parts")
(NEWLINE)
(KEYWORD if)
(ID "path")
(KEYWORD and)
(KEYWORD not)
(ID "path")
(PUNCT ".")
(ID "endswith")
(PUNCT "(")
(LIT "/")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "path")
(PUNCT "=")
(ID "posixpath")
(PUNCT ".")
(ID "dirname")
(PUNCT "(")
(ID "path")
(PUNCT ")")
(PUNCT "+")
(LIT "/")
(NEWLINE)
(ID "parts")
(PUNCT "=")
(ID "scheme")
(PUNCT ",")
(ID "netloc")
(PUNCT ",")
(ID "path")
(PUNCT ",")
(ID "params")
(PUNCT ",")
(ID "query")
(PUNCT ",")
(ID "fragment")
(NEWLINE)
(ID "source")
(PUNCT ".")
(ID "baseURI")
(PUNCT "=")
(ID "urllib")
(PUNCT ".")
(ID "parse")
(PUNCT ".")
(ID "urlunparse")
(PUNCT "(")
(ID "parts")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "source")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_get_opener")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD try)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_opener")
(NEWLINE)
(DEDENT)
(KEYWORD except)
(ID "AttributeError")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "_opener")
(PUNCT "=")
(ID "self")
(PUNCT ".")
(ID "_create_opener")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "_opener")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "_create_opener")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD import)
(ID "urllib")
(PUNCT ".")
(ID "request")
(NEWLINE)
(KEYWORD return)
(ID "urllib")
(PUNCT ".")
(ID "request")
(PUNCT ".")
(ID "build_opener")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_guess_media_encoding")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "source")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "info")
(PUNCT "=")
(ID "source")
(PUNCT ".")
(ID "byteStream")
(PUNCT ".")
(ID "info")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(KEYWORD if)
(LIT "Content-Type")
(KEYWORD in)
(ID "info")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD for)
(ID "param")
(KEYWORD in)
(ID "info")
(PUNCT ".")
(ID "getplist")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "param")
(PUNCT ".")
(ID "startswith")
(PUNCT "(")
(LIT "charset=")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "param")
(PUNCT ".")
(ID "split")
(PUNCT "(")
(LIT "=")
(PUNCT ",")
(LIT 1)
(PUNCT ")")
(PUNCT "[")
(LIT 1)
(PUNCT "]")
(PUNCT ".")
(ID "lower")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(DEDENT)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "DOMInputSource")
(PUNCT "(")
(ID "object")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "__slots__")
(PUNCT "=")
(PUNCT "(")
(LIT "byteStream")
(PUNCT ",")
(LIT "characterStream")
(PUNCT ",")
(LIT "stringData")
(PUNCT ",")
(LIT "encoding")
(PUNCT ",")
(LIT "publicId")
(PUNCT ",")
(LIT "systemId")
(PUNCT ",")
(LIT "baseURI")
(PUNCT ")")
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
(ID "byteStream")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "characterStream")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "stringData")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "encoding")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "publicId")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "systemId")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(ID "self")
(PUNCT ".")
(ID "baseURI")
(PUNCT "=")
(KEYWORD None)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_get_byteStream")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "byteStream")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_set_byteStream")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "byteStream")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "byteStream")
(PUNCT "=")
(ID "byteStream")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_get_characterStream")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "characterStream")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_set_characterStream")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "characterStream")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "characterStream")
(PUNCT "=")
(ID "characterStream")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_get_stringData")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "stringData")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_set_stringData")
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
(ID "stringData")
(PUNCT "=")
(ID "data")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_get_encoding")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "encoding")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_set_encoding")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "encoding")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "encoding")
(PUNCT "=")
(ID "encoding")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_get_publicId")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "publicId")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_set_publicId")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "publicId")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "publicId")
(PUNCT "=")
(ID "publicId")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_get_systemId")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "systemId")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_set_systemId")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "systemId")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "systemId")
(PUNCT "=")
(ID "systemId")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_get_baseURI")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "baseURI")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_set_baseURI")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "uri")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "self")
(PUNCT ".")
(ID "baseURI")
(PUNCT "=")
(ID "uri")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "DOMBuilderFilter")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Element filter which can be used to tailor construction of\n    a DOM instance.\n    ")
(NEWLINE)
(ID "FILTER_ACCEPT")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(ID "FILTER_REJECT")
(PUNCT "=")
(LIT 2)
(NEWLINE)
(ID "FILTER_SKIP")
(PUNCT "=")
(LIT 3)
(NEWLINE)
(ID "FILTER_INTERRUPT")
(PUNCT "=")
(LIT 4)
(NEWLINE)
(ID "whatToShow")
(PUNCT "=")
(ID "NodeFilter")
(PUNCT ".")
(ID "SHOW_ALL")
(NEWLINE)
(KEYWORD def)
(ID "_get_whatToShow")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "whatToShow")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "acceptNode")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "element")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "FILTER_ACCEPT")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "startContainer")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "element")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "self")
(PUNCT ".")
(ID "FILTER_ACCEPT")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD del)
(ID "NodeFilter")
(NEWLINE)
(KEYWORD class)
(ID "DocumentLS")
(PUNCT ":")
(NEWLINE)
(INDENT)
(LIT "Mixin to create documents that conform to the load/save spec.")
(NEWLINE)
(ID "async")
(PUNCT "=")
(KEYWORD False)
(NEWLINE)
(KEYWORD def)
(ID "_get_async")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(KEYWORD False)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "_set_async")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "async")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "async")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "xml")
(PUNCT ".")
(ID "dom")
(PUNCT ".")
(ID "NotSupportedErr")
(PUNCT "(")
(LIT "asynchronous document loading is not supported")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD def)
(ID "abort")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "NotImplementedError")
(PUNCT "(")
(LIT "haven't figured out what this means yet")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "load")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "uri")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "NotImplementedError")
(PUNCT "(")
(LIT "haven't written this yet")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "loadXML")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "source")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "NotImplementedError")
(PUNCT "(")
(LIT "haven't written this yet")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "saveXML")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "snode")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "snode")
(KEYWORD is)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "snode")
(PUNCT "=")
(ID "self")
(NEWLINE)
(DEDENT)
(KEYWORD elif)
(ID "snode")
(PUNCT ".")
(ID "ownerDocument")
(KEYWORD is)
(KEYWORD not)
(ID "self")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "xml")
(PUNCT ".")
(ID "dom")
(PUNCT ".")
(ID "WrongDocumentErr")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD return)
(ID "snode")
(PUNCT ".")
(ID "toxml")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "DOMImplementationLS")
(PUNCT ":")
(NEWLINE)
(INDENT)
(ID "MODE_SYNCHRONOUS")
(PUNCT "=")
(LIT 1)
(NEWLINE)
(ID "MODE_ASYNCHRONOUS")
(PUNCT "=")
(LIT 2)
(NEWLINE)
(KEYWORD def)
(ID "createDOMBuilder")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "mode")
(PUNCT ",")
(ID "schemaType")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD if)
(ID "schemaType")
(KEYWORD is)
(KEYWORD not)
(KEYWORD None)
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "xml")
(PUNCT ".")
(ID "dom")
(PUNCT ".")
(ID "NotSupportedErr")
(PUNCT "(")
(LIT "schemaType not yet supported")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "mode")
(PUNCT "==")
(ID "self")
(PUNCT ".")
(ID "MODE_SYNCHRONOUS")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "DOMBuilder")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD if)
(ID "mode")
(PUNCT "==")
(ID "self")
(PUNCT ".")
(ID "MODE_ASYNCHRONOUS")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "xml")
(PUNCT ".")
(ID "dom")
(PUNCT ".")
(ID "NotSupportedErr")
(PUNCT "(")
(LIT "asynchronous builders are not supported")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD raise)
(ID "ValueError")
(PUNCT "(")
(LIT "unknown value for mode")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "createDOMWriter")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD raise)
(ID "NotImplementedError")
(PUNCT "(")
(LIT "the writer interface hasn't been written yet!")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "createDOMInputSource")
(PUNCT "(")
(ID "self")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "DOMInputSource")
(PUNCT "(")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(ENDMARKER)