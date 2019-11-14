(LIT " Python Character Mapping Codec generated from 'VENDORS/MICSFT/PC/CP855.TXT' with gencodec.py.\n\n")
(NEWLINE)
(KEYWORD import)
(ID "codecs")
(NEWLINE)
(KEYWORD class)
(ID "Codec")
(PUNCT "(")
(ID "codecs")
(PUNCT ".")
(ID "Codec")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD def)
(ID "encode")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "input")
(PUNCT ",")
(ID "errors")
(PUNCT "=")
(LIT "strict")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "codecs")
(PUNCT ".")
(ID "charmap_encode")
(PUNCT "(")
(ID "input")
(PUNCT ",")
(ID "errors")
(PUNCT ",")
(ID "encoding_map")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "decode")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "input")
(PUNCT ",")
(ID "errors")
(PUNCT "=")
(LIT "strict")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "codecs")
(PUNCT ".")
(ID "charmap_decode")
(PUNCT "(")
(ID "input")
(PUNCT ",")
(ID "errors")
(PUNCT ",")
(ID "decoding_table")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "IncrementalEncoder")
(PUNCT "(")
(ID "codecs")
(PUNCT ".")
(ID "IncrementalEncoder")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD def)
(ID "encode")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "input")
(PUNCT ",")
(ID "final")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "codecs")
(PUNCT ".")
(ID "charmap_encode")
(PUNCT "(")
(ID "input")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "errors")
(PUNCT ",")
(ID "encoding_map")
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "IncrementalDecoder")
(PUNCT "(")
(ID "codecs")
(PUNCT ".")
(ID "IncrementalDecoder")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD def)
(ID "decode")
(PUNCT "(")
(ID "self")
(PUNCT ",")
(ID "input")
(PUNCT ",")
(ID "final")
(PUNCT "=")
(KEYWORD False)
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "codecs")
(PUNCT ".")
(ID "charmap_decode")
(PUNCT "(")
(ID "input")
(PUNCT ",")
(ID "self")
(PUNCT ".")
(ID "errors")
(PUNCT ",")
(ID "decoding_table")
(PUNCT ")")
(PUNCT "[")
(LIT 0)
(PUNCT "]")
(NEWLINE)
(DEDENT)
(DEDENT)
(KEYWORD class)
(ID "StreamWriter")
(PUNCT "(")
(ID "Codec")
(PUNCT ",")
(ID "codecs")
(PUNCT ".")
(ID "StreamWriter")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(KEYWORD class)
(ID "StreamReader")
(PUNCT "(")
(ID "Codec")
(PUNCT ",")
(ID "codecs")
(PUNCT ".")
(ID "StreamReader")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD pass)
(NEWLINE)
(DEDENT)
(KEYWORD def)
(ID "getregentry")
(PUNCT "(")
(PUNCT ")")
(PUNCT ":")
(NEWLINE)
(INDENT)
(KEYWORD return)
(ID "codecs")
(PUNCT ".")
(ID "CodecInfo")
(PUNCT "(")
(ID "name")
(PUNCT "=")
(LIT "cp855")
(PUNCT ",")
(ID "encode")
(PUNCT "=")
(ID "Codec")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "encode")
(PUNCT ",")
(ID "decode")
(PUNCT "=")
(ID "Codec")
(PUNCT "(")
(PUNCT ")")
(PUNCT ".")
(ID "decode")
(PUNCT ",")
(ID "incrementalencoder")
(PUNCT "=")
(ID "IncrementalEncoder")
(PUNCT ",")
(ID "incrementaldecoder")
(PUNCT "=")
(ID "IncrementalDecoder")
(PUNCT ",")
(ID "streamreader")
(PUNCT "=")
(ID "StreamReader")
(PUNCT ",")
(ID "streamwriter")
(PUNCT "=")
(ID "StreamWriter")
(PUNCT ",")
(PUNCT ")")
(NEWLINE)
(DEDENT)
(ID "decoding_map")
(PUNCT "=")
(ID "codecs")
(PUNCT ".")
(ID "make_identity_dict")
(PUNCT "(")
(ID "range")
(PUNCT "(")
(LIT 256)
(PUNCT ")")
(PUNCT ")")
(NEWLINE)
(ID "decoding_map")
(PUNCT ".")
(ID "update")
(PUNCT "(")
(PUNCT "{")
(LIT 128)
(PUNCT ":")
(LIT 1106)
(PUNCT ",")
(LIT 129)
(PUNCT ":")
(LIT 1026)
(PUNCT ",")
(LIT 130)
(PUNCT ":")
(LIT 1107)
(PUNCT ",")
(LIT 131)
(PUNCT ":")
(LIT 1027)
(PUNCT ",")
(LIT 132)
(PUNCT ":")
(LIT 1105)
(PUNCT ",")
(LIT 133)
(PUNCT ":")
(LIT 1025)
(PUNCT ",")
(LIT 134)
(PUNCT ":")
(LIT 1108)
(PUNCT ",")
(LIT 135)
(PUNCT ":")
(LIT 1028)
(PUNCT ",")
(LIT 136)
(PUNCT ":")
(LIT 1109)
(PUNCT ",")
(LIT 137)
(PUNCT ":")
(LIT 1029)
(PUNCT ",")
(LIT 138)
(PUNCT ":")
(LIT 1110)
(PUNCT ",")
(LIT 139)
(PUNCT ":")
(LIT 1030)
(PUNCT ",")
(LIT 140)
(PUNCT ":")
(LIT 1111)
(PUNCT ",")
(LIT 141)
(PUNCT ":")
(LIT 1031)
(PUNCT ",")
(LIT 142)
(PUNCT ":")
(LIT 1112)
(PUNCT ",")
(LIT 143)
(PUNCT ":")
(LIT 1032)
(PUNCT ",")
(LIT 144)
(PUNCT ":")
(LIT 1113)
(PUNCT ",")
(LIT 145)
(PUNCT ":")
(LIT 1033)
(PUNCT ",")
(LIT 146)
(PUNCT ":")
(LIT 1114)
(PUNCT ",")
(LIT 147)
(PUNCT ":")
(LIT 1034)
(PUNCT ",")
(LIT 148)
(PUNCT ":")
(LIT 1115)
(PUNCT ",")
(LIT 149)
(PUNCT ":")
(LIT 1035)
(PUNCT ",")
(LIT 150)
(PUNCT ":")
(LIT 1116)
(PUNCT ",")
(LIT 151)
(PUNCT ":")
(LIT 1036)
(PUNCT ",")
(LIT 152)
(PUNCT ":")
(LIT 1118)
(PUNCT ",")
(LIT 153)
(PUNCT ":")
(LIT 1038)
(PUNCT ",")
(LIT 154)
(PUNCT ":")
(LIT 1119)
(PUNCT ",")
(LIT 155)
(PUNCT ":")
(LIT 1039)
(PUNCT ",")
(LIT 156)
(PUNCT ":")
(LIT 1102)
(PUNCT ",")
(LIT 157)
(PUNCT ":")
(LIT 1070)
(PUNCT ",")
(LIT 158)
(PUNCT ":")
(LIT 1098)
(PUNCT ",")
(LIT 159)
(PUNCT ":")
(LIT 1066)
(PUNCT ",")
(LIT 160)
(PUNCT ":")
(LIT 1072)
(PUNCT ",")
(LIT 161)
(PUNCT ":")
(LIT 1040)
(PUNCT ",")
(LIT 162)
(PUNCT ":")
(LIT 1073)
(PUNCT ",")
(LIT 163)
(PUNCT ":")
(LIT 1041)
(PUNCT ",")
(LIT 164)
(PUNCT ":")
(LIT 1094)
(PUNCT ",")
(LIT 165)
(PUNCT ":")
(LIT 1062)
(PUNCT ",")
(LIT 166)
(PUNCT ":")
(LIT 1076)
(PUNCT ",")
(LIT 167)
(PUNCT ":")
(LIT 1044)
(PUNCT ",")
(LIT 168)
(PUNCT ":")
(LIT 1077)
(PUNCT ",")
(LIT 169)
(PUNCT ":")
(LIT 1045)
(PUNCT ",")
(LIT 170)
(PUNCT ":")
(LIT 1092)
(PUNCT ",")
(LIT 171)
(PUNCT ":")
(LIT 1060)
(PUNCT ",")
(LIT 172)
(PUNCT ":")
(LIT 1075)
(PUNCT ",")
(LIT 173)
(PUNCT ":")
(LIT 1043)
(PUNCT ",")
(LIT 174)
(PUNCT ":")
(LIT 171)
(PUNCT ",")
(LIT 175)
(PUNCT ":")
(LIT 187)
(PUNCT ",")
(LIT 176)
(PUNCT ":")
(LIT 9617)
(PUNCT ",")
(LIT 177)
(PUNCT ":")
(LIT 9618)
(PUNCT ",")
(LIT 178)
(PUNCT ":")
(LIT 9619)
(PUNCT ",")
(LIT 179)
(PUNCT ":")
(LIT 9474)
(PUNCT ",")
(LIT 180)
(PUNCT ":")
(LIT 9508)
(PUNCT ",")
(LIT 181)
(PUNCT ":")
(LIT 1093)
(PUNCT ",")
(LIT 182)
(PUNCT ":")
(LIT 1061)
(PUNCT ",")
(LIT 183)
(PUNCT ":")
(LIT 1080)
(PUNCT ",")
(LIT 184)
(PUNCT ":")
(LIT 1048)
(PUNCT ",")
(LIT 185)
(PUNCT ":")
(LIT 9571)
(PUNCT ",")
(LIT 186)
(PUNCT ":")
(LIT 9553)
(PUNCT ",")
(LIT 187)
(PUNCT ":")
(LIT 9559)
(PUNCT ",")
(LIT 188)
(PUNCT ":")
(LIT 9565)
(PUNCT ",")
(LIT 189)
(PUNCT ":")
(LIT 1081)
(PUNCT ",")
(LIT 190)
(PUNCT ":")
(LIT 1049)
(PUNCT ",")
(LIT 191)
(PUNCT ":")
(LIT 9488)
(PUNCT ",")
(LIT 192)
(PUNCT ":")
(LIT 9492)
(PUNCT ",")
(LIT 193)
(PUNCT ":")
(LIT 9524)
(PUNCT ",")
(LIT 194)
(PUNCT ":")
(LIT 9516)
(PUNCT ",")
(LIT 195)
(PUNCT ":")
(LIT 9500)
(PUNCT ",")
(LIT 196)
(PUNCT ":")
(LIT 9472)
(PUNCT ",")
(LIT 197)
(PUNCT ":")
(LIT 9532)
(PUNCT ",")
(LIT 198)
(PUNCT ":")
(LIT 1082)
(PUNCT ",")
(LIT 199)
(PUNCT ":")
(LIT 1050)
(PUNCT ",")
(LIT 200)
(PUNCT ":")
(LIT 9562)
(PUNCT ",")
(LIT 201)
(PUNCT ":")
(LIT 9556)
(PUNCT ",")
(LIT 202)
(PUNCT ":")
(LIT 9577)
(PUNCT ",")
(LIT 203)
(PUNCT ":")
(LIT 9574)
(PUNCT ",")
(LIT 204)
(PUNCT ":")
(LIT 9568)
(PUNCT ",")
(LIT 205)
(PUNCT ":")
(LIT 9552)
(PUNCT ",")
(LIT 206)
(PUNCT ":")
(LIT 9580)
(PUNCT ",")
(LIT 207)
(PUNCT ":")
(LIT 164)
(PUNCT ",")
(LIT 208)
(PUNCT ":")
(LIT 1083)
(PUNCT ",")
(LIT 209)
(PUNCT ":")
(LIT 1051)
(PUNCT ",")
(LIT 210)
(PUNCT ":")
(LIT 1084)
(PUNCT ",")
(LIT 211)
(PUNCT ":")
(LIT 1052)
(PUNCT ",")
(LIT 212)
(PUNCT ":")
(LIT 1085)
(PUNCT ",")
(LIT 213)
(PUNCT ":")
(LIT 1053)
(PUNCT ",")
(LIT 214)
(PUNCT ":")
(LIT 1086)
(PUNCT ",")
(LIT 215)
(PUNCT ":")
(LIT 1054)
(PUNCT ",")
(LIT 216)
(PUNCT ":")
(LIT 1087)
(PUNCT ",")
(LIT 217)
(PUNCT ":")
(LIT 9496)
(PUNCT ",")
(LIT 218)
(PUNCT ":")
(LIT 9484)
(PUNCT ",")
(LIT 219)
(PUNCT ":")
(LIT 9608)
(PUNCT ",")
(LIT 220)
(PUNCT ":")
(LIT 9604)
(PUNCT ",")
(LIT 221)
(PUNCT ":")
(LIT 1055)
(PUNCT ",")
(LIT 222)
(PUNCT ":")
(LIT 1103)
(PUNCT ",")
(LIT 223)
(PUNCT ":")
(LIT 9600)
(PUNCT ",")
(LIT 224)
(PUNCT ":")
(LIT 1071)
(PUNCT ",")
(LIT 225)
(PUNCT ":")
(LIT 1088)
(PUNCT ",")
(LIT 226)
(PUNCT ":")
(LIT 1056)
(PUNCT ",")
(LIT 227)
(PUNCT ":")
(LIT 1089)
(PUNCT ",")
(LIT 228)
(PUNCT ":")
(LIT 1057)
(PUNCT ",")
(LIT 229)
(PUNCT ":")
(LIT 1090)
(PUNCT ",")
(LIT 230)
(PUNCT ":")
(LIT 1058)
(PUNCT ",")
(LIT 231)
(PUNCT ":")
(LIT 1091)
(PUNCT ",")
(LIT 232)
(PUNCT ":")
(LIT 1059)
(PUNCT ",")
(LIT 233)
(PUNCT ":")
(LIT 1078)
(PUNCT ",")
(LIT 234)
(PUNCT ":")
(LIT 1046)
(PUNCT ",")
(LIT 235)
(PUNCT ":")
(LIT 1074)
(PUNCT ",")
(LIT 236)
(PUNCT ":")
(LIT 1042)
(PUNCT ",")
(LIT 237)
(PUNCT ":")
(LIT 1100)
(PUNCT ",")
(LIT 238)
(PUNCT ":")
(LIT 1068)
(PUNCT ",")
(LIT 239)
(PUNCT ":")
(LIT 8470)
(PUNCT ",")
(LIT 240)
(PUNCT ":")
(LIT 173)
(PUNCT ",")
(LIT 241)
(PUNCT ":")
(LIT 1099)
(PUNCT ",")
(LIT 242)
(PUNCT ":")
(LIT 1067)
(PUNCT ",")
(LIT 243)
(PUNCT ":")
(LIT 1079)
(PUNCT ",")
(LIT 244)
(PUNCT ":")
(LIT 1047)
(PUNCT ",")
(LIT 245)
(PUNCT ":")
(LIT 1096)
(PUNCT ",")
(LIT 246)
(PUNCT ":")
(LIT 1064)
(PUNCT ",")
(LIT 247)
(PUNCT ":")
(LIT 1101)
(PUNCT ",")
(LIT 248)
(PUNCT ":")
(LIT 1069)
(PUNCT ",")
(LIT 249)
(PUNCT ":")
(LIT 1097)
(PUNCT ",")
(LIT 250)
(PUNCT ":")
(LIT 1065)
(PUNCT ",")
(LIT 251)
(PUNCT ":")
(LIT 1095)
(PUNCT ",")
(LIT 252)
(PUNCT ":")
(LIT 1063)
(PUNCT ",")
(LIT 253)
(PUNCT ":")
(LIT 167)
(PUNCT ",")
(LIT 254)
(PUNCT ":")
(LIT 9632)
(PUNCT ",")
(LIT 255)
(PUNCT ":")
(LIT 160)
(PUNCT ",")
(PUNCT "}")
(PUNCT ")")
(NEWLINE)
(ID "decoding_table")
(PUNCT "=")
(PUNCT "(")
(LIT "\u0000")
(LIT "\u0001")
(LIT "\u0002")
(LIT "\u0003")
(LIT "\u0004")
(LIT "\u0005")
(LIT "\u0006")
(LIT "\a")
(LIT "\b")
(LIT "\t")
(LIT "\n")
(LIT "\v")
(LIT "\f")
(LIT "\r")
(LIT "\u000E")
(LIT "\u000F")
(LIT "\u0010")
(LIT "\u0011")
(LIT "\u0012")
(LIT "\u0013")
(LIT "\u0014")
(LIT "\u0015")
(LIT "\u0016")
(LIT "\u0017")
(LIT "\u0018")
(LIT "\u0019")
(LIT "\u001A")
(LIT "\e")
(LIT "\u001C")
(LIT "\u001D")
(LIT "\u001E")
(LIT "\u001F")
(LIT " ")
(LIT "!")
(LIT "\"")
(LIT "#")
(LIT "$")
(LIT "%")
(LIT "&")
(LIT "'")
(LIT "(")
(LIT ")")
(LIT "*")
(LIT "+")
(LIT ",")
(LIT "-")
(LIT ".")
(LIT "/")
(LIT "0")
(LIT "1")
(LIT "2")
(LIT "3")
(LIT "4")
(LIT "5")
(LIT "6")
(LIT "7")
(LIT "8")
(LIT "9")
(LIT ":")
(LIT ";")
(LIT "<")
(LIT "=")
(LIT ">")
(LIT "?")
(LIT "@")
(LIT "A")
(LIT "B")
(LIT "C")
(LIT "D")
(LIT "E")
(LIT "F")
(LIT "G")
(LIT "H")
(LIT "I")
(LIT "J")
(LIT "K")
(LIT "L")
(LIT "M")
(LIT "N")
(LIT "O")
(LIT "P")
(LIT "Q")
(LIT "R")
(LIT "S")
(LIT "T")
(LIT "U")
(LIT "V")
(LIT "W")
(LIT "X")
(LIT "Y")
(LIT "Z")
(LIT "[")
(LIT "\\")
(LIT "]")
(LIT "^")
(LIT "_")
(LIT "`")
(LIT "a")
(LIT "b")
(LIT "c")
(LIT "d")
(LIT "e")
(LIT "f")
(LIT "g")
(LIT "h")
(LIT "i")
(LIT "j")
(LIT "k")
(LIT "l")
(LIT "m")
(LIT "n")
(LIT "o")
(LIT "p")
(LIT "q")
(LIT "r")
(LIT "s")
(LIT "t")
(LIT "u")
(LIT "v")
(LIT "w")
(LIT "x")
(LIT "y")
(LIT "z")
(LIT "{")
(LIT "|")
(LIT "}")
(LIT "~")
(LIT "\u007F")
(LIT "ђ")
(LIT "Ђ")
(LIT "ѓ")
(LIT "Ѓ")
(LIT "ё")
(LIT "Ё")
(LIT "є")
(LIT "Є")
(LIT "ѕ")
(LIT "Ѕ")
(LIT "і")
(LIT "І")
(LIT "ї")
(LIT "Ї")
(LIT "ј")
(LIT "Ј")
(LIT "љ")
(LIT "Љ")
(LIT "њ")
(LIT "Њ")
(LIT "ћ")
(LIT "Ћ")
(LIT "ќ")
(LIT "Ќ")
(LIT "ў")
(LIT "Ў")
(LIT "џ")
(LIT "Џ")
(LIT "ю")
(LIT "Ю")
(LIT "ъ")
(LIT "Ъ")
(LIT "а")
(LIT "А")
(LIT "б")
(LIT "Б")
(LIT "ц")
(LIT "Ц")
(LIT "д")
(LIT "Д")
(LIT "е")
(LIT "Е")
(LIT "ф")
(LIT "Ф")
(LIT "г")
(LIT "Г")
(LIT "«")
(LIT "»")
(LIT "░")
(LIT "▒")
(LIT "▓")
(LIT "│")
(LIT "┤")
(LIT "х")
(LIT "Х")
(LIT "и")
(LIT "И")
(LIT "╣")
(LIT "║")
(LIT "╗")
(LIT "╝")
(LIT "й")
(LIT "Й")
(LIT "┐")
(LIT "└")
(LIT "┴")
(LIT "┬")
(LIT "├")
(LIT "─")
(LIT "┼")
(LIT "к")
(LIT "К")
(LIT "╚")
(LIT "╔")
(LIT "╩")
(LIT "╦")
(LIT "╠")
(LIT "═")
(LIT "╬")
(LIT "¤")
(LIT "л")
(LIT "Л")
(LIT "м")
(LIT "М")
(LIT "н")
(LIT "Н")
(LIT "о")
(LIT "О")
(LIT "п")
(LIT "┘")
(LIT "┌")
(LIT "█")
(LIT "▄")
(LIT "П")
(LIT "я")
(LIT "▀")
(LIT "Я")
(LIT "р")
(LIT "Р")
(LIT "с")
(LIT "С")
(LIT "т")
(LIT "Т")
(LIT "у")
(LIT "У")
(LIT "ж")
(LIT "Ж")
(LIT "в")
(LIT "В")
(LIT "ь")
(LIT "Ь")
(LIT "№")
(LIT "\u00AD")
(LIT "ы")
(LIT "Ы")
(LIT "з")
(LIT "З")
(LIT "ш")
(LIT "Ш")
(LIT "э")
(LIT "Э")
(LIT "щ")
(LIT "Щ")
(LIT "ч")
(LIT "Ч")
(LIT "§")
(LIT "■")
(LIT " ")
(PUNCT ")")
(NEWLINE)
(ID "encoding_map")
(PUNCT "=")
(PUNCT "{")
(LIT 0)
(PUNCT ":")
(LIT 0)
(PUNCT ",")
(LIT 1)
(PUNCT ":")
(LIT 1)
(PUNCT ",")
(LIT 2)
(PUNCT ":")
(LIT 2)
(PUNCT ",")
(LIT 3)
(PUNCT ":")
(LIT 3)
(PUNCT ",")
(LIT 4)
(PUNCT ":")
(LIT 4)
(PUNCT ",")
(LIT 5)
(PUNCT ":")
(LIT 5)
(PUNCT ",")
(LIT 6)
(PUNCT ":")
(LIT 6)
(PUNCT ",")
(LIT 7)
(PUNCT ":")
(LIT 7)
(PUNCT ",")
(LIT 8)
(PUNCT ":")
(LIT 8)
(PUNCT ",")
(LIT 9)
(PUNCT ":")
(LIT 9)
(PUNCT ",")
(LIT 10)
(PUNCT ":")
(LIT 10)
(PUNCT ",")
(LIT 11)
(PUNCT ":")
(LIT 11)
(PUNCT ",")
(LIT 12)
(PUNCT ":")
(LIT 12)
(PUNCT ",")
(LIT 13)
(PUNCT ":")
(LIT 13)
(PUNCT ",")
(LIT 14)
(PUNCT ":")
(LIT 14)
(PUNCT ",")
(LIT 15)
(PUNCT ":")
(LIT 15)
(PUNCT ",")
(LIT 16)
(PUNCT ":")
(LIT 16)
(PUNCT ",")
(LIT 17)
(PUNCT ":")
(LIT 17)
(PUNCT ",")
(LIT 18)
(PUNCT ":")
(LIT 18)
(PUNCT ",")
(LIT 19)
(PUNCT ":")
(LIT 19)
(PUNCT ",")
(LIT 20)
(PUNCT ":")
(LIT 20)
(PUNCT ",")
(LIT 21)
(PUNCT ":")
(LIT 21)
(PUNCT ",")
(LIT 22)
(PUNCT ":")
(LIT 22)
(PUNCT ",")
(LIT 23)
(PUNCT ":")
(LIT 23)
(PUNCT ",")
(LIT 24)
(PUNCT ":")
(LIT 24)
(PUNCT ",")
(LIT 25)
(PUNCT ":")
(LIT 25)
(PUNCT ",")
(LIT 26)
(PUNCT ":")
(LIT 26)
(PUNCT ",")
(LIT 27)
(PUNCT ":")
(LIT 27)
(PUNCT ",")
(LIT 28)
(PUNCT ":")
(LIT 28)
(PUNCT ",")
(LIT 29)
(PUNCT ":")
(LIT 29)
(PUNCT ",")
(LIT 30)
(PUNCT ":")
(LIT 30)
(PUNCT ",")
(LIT 31)
(PUNCT ":")
(LIT 31)
(PUNCT ",")
(LIT 32)
(PUNCT ":")
(LIT 32)
(PUNCT ",")
(LIT 33)
(PUNCT ":")
(LIT 33)
(PUNCT ",")
(LIT 34)
(PUNCT ":")
(LIT 34)
(PUNCT ",")
(LIT 35)
(PUNCT ":")
(LIT 35)
(PUNCT ",")
(LIT 36)
(PUNCT ":")
(LIT 36)
(PUNCT ",")
(LIT 37)
(PUNCT ":")
(LIT 37)
(PUNCT ",")
(LIT 38)
(PUNCT ":")
(LIT 38)
(PUNCT ",")
(LIT 39)
(PUNCT ":")
(LIT 39)
(PUNCT ",")
(LIT 40)
(PUNCT ":")
(LIT 40)
(PUNCT ",")
(LIT 41)
(PUNCT ":")
(LIT 41)
(PUNCT ",")
(LIT 42)
(PUNCT ":")
(LIT 42)
(PUNCT ",")
(LIT 43)
(PUNCT ":")
(LIT 43)
(PUNCT ",")
(LIT 44)
(PUNCT ":")
(LIT 44)
(PUNCT ",")
(LIT 45)
(PUNCT ":")
(LIT 45)
(PUNCT ",")
(LIT 46)
(PUNCT ":")
(LIT 46)
(PUNCT ",")
(LIT 47)
(PUNCT ":")
(LIT 47)
(PUNCT ",")
(LIT 48)
(PUNCT ":")
(LIT 48)
(PUNCT ",")
(LIT 49)
(PUNCT ":")
(LIT 49)
(PUNCT ",")
(LIT 50)
(PUNCT ":")
(LIT 50)
(PUNCT ",")
(LIT 51)
(PUNCT ":")
(LIT 51)
(PUNCT ",")
(LIT 52)
(PUNCT ":")
(LIT 52)
(PUNCT ",")
(LIT 53)
(PUNCT ":")
(LIT 53)
(PUNCT ",")
(LIT 54)
(PUNCT ":")
(LIT 54)
(PUNCT ",")
(LIT 55)
(PUNCT ":")
(LIT 55)
(PUNCT ",")
(LIT 56)
(PUNCT ":")
(LIT 56)
(PUNCT ",")
(LIT 57)
(PUNCT ":")
(LIT 57)
(PUNCT ",")
(LIT 58)
(PUNCT ":")
(LIT 58)
(PUNCT ",")
(LIT 59)
(PUNCT ":")
(LIT 59)
(PUNCT ",")
(LIT 60)
(PUNCT ":")
(LIT 60)
(PUNCT ",")
(LIT 61)
(PUNCT ":")
(LIT 61)
(PUNCT ",")
(LIT 62)
(PUNCT ":")
(LIT 62)
(PUNCT ",")
(LIT 63)
(PUNCT ":")
(LIT 63)
(PUNCT ",")
(LIT 64)
(PUNCT ":")
(LIT 64)
(PUNCT ",")
(LIT 65)
(PUNCT ":")
(LIT 65)
(PUNCT ",")
(LIT 66)
(PUNCT ":")
(LIT 66)
(PUNCT ",")
(LIT 67)
(PUNCT ":")
(LIT 67)
(PUNCT ",")
(LIT 68)
(PUNCT ":")
(LIT 68)
(PUNCT ",")
(LIT 69)
(PUNCT ":")
(LIT 69)
(PUNCT ",")
(LIT 70)
(PUNCT ":")
(LIT 70)
(PUNCT ",")
(LIT 71)
(PUNCT ":")
(LIT 71)
(PUNCT ",")
(LIT 72)
(PUNCT ":")
(LIT 72)
(PUNCT ",")
(LIT 73)
(PUNCT ":")
(LIT 73)
(PUNCT ",")
(LIT 74)
(PUNCT ":")
(LIT 74)
(PUNCT ",")
(LIT 75)
(PUNCT ":")
(LIT 75)
(PUNCT ",")
(LIT 76)
(PUNCT ":")
(LIT 76)
(PUNCT ",")
(LIT 77)
(PUNCT ":")
(LIT 77)
(PUNCT ",")
(LIT 78)
(PUNCT ":")
(LIT 78)
(PUNCT ",")
(LIT 79)
(PUNCT ":")
(LIT 79)
(PUNCT ",")
(LIT 80)
(PUNCT ":")
(LIT 80)
(PUNCT ",")
(LIT 81)
(PUNCT ":")
(LIT 81)
(PUNCT ",")
(LIT 82)
(PUNCT ":")
(LIT 82)
(PUNCT ",")
(LIT 83)
(PUNCT ":")
(LIT 83)
(PUNCT ",")
(LIT 84)
(PUNCT ":")
(LIT 84)
(PUNCT ",")
(LIT 85)
(PUNCT ":")
(LIT 85)
(PUNCT ",")
(LIT 86)
(PUNCT ":")
(LIT 86)
(PUNCT ",")
(LIT 87)
(PUNCT ":")
(LIT 87)
(PUNCT ",")
(LIT 88)
(PUNCT ":")
(LIT 88)
(PUNCT ",")
(LIT 89)
(PUNCT ":")
(LIT 89)
(PUNCT ",")
(LIT 90)
(PUNCT ":")
(LIT 90)
(PUNCT ",")
(LIT 91)
(PUNCT ":")
(LIT 91)
(PUNCT ",")
(LIT 92)
(PUNCT ":")
(LIT 92)
(PUNCT ",")
(LIT 93)
(PUNCT ":")
(LIT 93)
(PUNCT ",")
(LIT 94)
(PUNCT ":")
(LIT 94)
(PUNCT ",")
(LIT 95)
(PUNCT ":")
(LIT 95)
(PUNCT ",")
(LIT 96)
(PUNCT ":")
(LIT 96)
(PUNCT ",")
(LIT 97)
(PUNCT ":")
(LIT 97)
(PUNCT ",")
(LIT 98)
(PUNCT ":")
(LIT 98)
(PUNCT ",")
(LIT 99)
(PUNCT ":")
(LIT 99)
(PUNCT ",")
(LIT 100)
(PUNCT ":")
(LIT 100)
(PUNCT ",")
(LIT 101)
(PUNCT ":")
(LIT 101)
(PUNCT ",")
(LIT 102)
(PUNCT ":")
(LIT 102)
(PUNCT ",")
(LIT 103)
(PUNCT ":")
(LIT 103)
(PUNCT ",")
(LIT 104)
(PUNCT ":")
(LIT 104)
(PUNCT ",")
(LIT 105)
(PUNCT ":")
(LIT 105)
(PUNCT ",")
(LIT 106)
(PUNCT ":")
(LIT 106)
(PUNCT ",")
(LIT 107)
(PUNCT ":")
(LIT 107)
(PUNCT ",")
(LIT 108)
(PUNCT ":")
(LIT 108)
(PUNCT ",")
(LIT 109)
(PUNCT ":")
(LIT 109)
(PUNCT ",")
(LIT 110)
(PUNCT ":")
(LIT 110)
(PUNCT ",")
(LIT 111)
(PUNCT ":")
(LIT 111)
(PUNCT ",")
(LIT 112)
(PUNCT ":")
(LIT 112)
(PUNCT ",")
(LIT 113)
(PUNCT ":")
(LIT 113)
(PUNCT ",")
(LIT 114)
(PUNCT ":")
(LIT 114)
(PUNCT ",")
(LIT 115)
(PUNCT ":")
(LIT 115)
(PUNCT ",")
(LIT 116)
(PUNCT ":")
(LIT 116)
(PUNCT ",")
(LIT 117)
(PUNCT ":")
(LIT 117)
(PUNCT ",")
(LIT 118)
(PUNCT ":")
(LIT 118)
(PUNCT ",")
(LIT 119)
(PUNCT ":")
(LIT 119)
(PUNCT ",")
(LIT 120)
(PUNCT ":")
(LIT 120)
(PUNCT ",")
(LIT 121)
(PUNCT ":")
(LIT 121)
(PUNCT ",")
(LIT 122)
(PUNCT ":")
(LIT 122)
(PUNCT ",")
(LIT 123)
(PUNCT ":")
(LIT 123)
(PUNCT ",")
(LIT 124)
(PUNCT ":")
(LIT 124)
(PUNCT ",")
(LIT 125)
(PUNCT ":")
(LIT 125)
(PUNCT ",")
(LIT 126)
(PUNCT ":")
(LIT 126)
(PUNCT ",")
(LIT 127)
(PUNCT ":")
(LIT 127)
(PUNCT ",")
(LIT 160)
(PUNCT ":")
(LIT 255)
(PUNCT ",")
(LIT 164)
(PUNCT ":")
(LIT 207)
(PUNCT ",")
(LIT 167)
(PUNCT ":")
(LIT 253)
(PUNCT ",")
(LIT 171)
(PUNCT ":")
(LIT 174)
(PUNCT ",")
(LIT 173)
(PUNCT ":")
(LIT 240)
(PUNCT ",")
(LIT 187)
(PUNCT ":")
(LIT 175)
(PUNCT ",")
(LIT 1025)
(PUNCT ":")
(LIT 133)
(PUNCT ",")
(LIT 1026)
(PUNCT ":")
(LIT 129)
(PUNCT ",")
(LIT 1027)
(PUNCT ":")
(LIT 131)
(PUNCT ",")
(LIT 1028)
(PUNCT ":")
(LIT 135)
(PUNCT ",")
(LIT 1029)
(PUNCT ":")
(LIT 137)
(PUNCT ",")
(LIT 1030)
(PUNCT ":")
(LIT 139)
(PUNCT ",")
(LIT 1031)
(PUNCT ":")
(LIT 141)
(PUNCT ",")
(LIT 1032)
(PUNCT ":")
(LIT 143)
(PUNCT ",")
(LIT 1033)
(PUNCT ":")
(LIT 145)
(PUNCT ",")
(LIT 1034)
(PUNCT ":")
(LIT 147)
(PUNCT ",")
(LIT 1035)
(PUNCT ":")
(LIT 149)
(PUNCT ",")
(LIT 1036)
(PUNCT ":")
(LIT 151)
(PUNCT ",")
(LIT 1038)
(PUNCT ":")
(LIT 153)
(PUNCT ",")
(LIT 1039)
(PUNCT ":")
(LIT 155)
(PUNCT ",")
(LIT 1040)
(PUNCT ":")
(LIT 161)
(PUNCT ",")
(LIT 1041)
(PUNCT ":")
(LIT 163)
(PUNCT ",")
(LIT 1042)
(PUNCT ":")
(LIT 236)
(PUNCT ",")
(LIT 1043)
(PUNCT ":")
(LIT 173)
(PUNCT ",")
(LIT 1044)
(PUNCT ":")
(LIT 167)
(PUNCT ",")
(LIT 1045)
(PUNCT ":")
(LIT 169)
(PUNCT ",")
(LIT 1046)
(PUNCT ":")
(LIT 234)
(PUNCT ",")
(LIT 1047)
(PUNCT ":")
(LIT 244)
(PUNCT ",")
(LIT 1048)
(PUNCT ":")
(LIT 184)
(PUNCT ",")
(LIT 1049)
(PUNCT ":")
(LIT 190)
(PUNCT ",")
(LIT 1050)
(PUNCT ":")
(LIT 199)
(PUNCT ",")
(LIT 1051)
(PUNCT ":")
(LIT 209)
(PUNCT ",")
(LIT 1052)
(PUNCT ":")
(LIT 211)
(PUNCT ",")
(LIT 1053)
(PUNCT ":")
(LIT 213)
(PUNCT ",")
(LIT 1054)
(PUNCT ":")
(LIT 215)
(PUNCT ",")
(LIT 1055)
(PUNCT ":")
(LIT 221)
(PUNCT ",")
(LIT 1056)
(PUNCT ":")
(LIT 226)
(PUNCT ",")
(LIT 1057)
(PUNCT ":")
(LIT 228)
(PUNCT ",")
(LIT 1058)
(PUNCT ":")
(LIT 230)
(PUNCT ",")
(LIT 1059)
(PUNCT ":")
(LIT 232)
(PUNCT ",")
(LIT 1060)
(PUNCT ":")
(LIT 171)
(PUNCT ",")
(LIT 1061)
(PUNCT ":")
(LIT 182)
(PUNCT ",")
(LIT 1062)
(PUNCT ":")
(LIT 165)
(PUNCT ",")
(LIT 1063)
(PUNCT ":")
(LIT 252)
(PUNCT ",")
(LIT 1064)
(PUNCT ":")
(LIT 246)
(PUNCT ",")
(LIT 1065)
(PUNCT ":")
(LIT 250)
(PUNCT ",")
(LIT 1066)
(PUNCT ":")
(LIT 159)
(PUNCT ",")
(LIT 1067)
(PUNCT ":")
(LIT 242)
(PUNCT ",")
(LIT 1068)
(PUNCT ":")
(LIT 238)
(PUNCT ",")
(LIT 1069)
(PUNCT ":")
(LIT 248)
(PUNCT ",")
(LIT 1070)
(PUNCT ":")
(LIT 157)
(PUNCT ",")
(LIT 1071)
(PUNCT ":")
(LIT 224)
(PUNCT ",")
(LIT 1072)
(PUNCT ":")
(LIT 160)
(PUNCT ",")
(LIT 1073)
(PUNCT ":")
(LIT 162)
(PUNCT ",")
(LIT 1074)
(PUNCT ":")
(LIT 235)
(PUNCT ",")
(LIT 1075)
(PUNCT ":")
(LIT 172)
(PUNCT ",")
(LIT 1076)
(PUNCT ":")
(LIT 166)
(PUNCT ",")
(LIT 1077)
(PUNCT ":")
(LIT 168)
(PUNCT ",")
(LIT 1078)
(PUNCT ":")
(LIT 233)
(PUNCT ",")
(LIT 1079)
(PUNCT ":")
(LIT 243)
(PUNCT ",")
(LIT 1080)
(PUNCT ":")
(LIT 183)
(PUNCT ",")
(LIT 1081)
(PUNCT ":")
(LIT 189)
(PUNCT ",")
(LIT 1082)
(PUNCT ":")
(LIT 198)
(PUNCT ",")
(LIT 1083)
(PUNCT ":")
(LIT 208)
(PUNCT ",")
(LIT 1084)
(PUNCT ":")
(LIT 210)
(PUNCT ",")
(LIT 1085)
(PUNCT ":")
(LIT 212)
(PUNCT ",")
(LIT 1086)
(PUNCT ":")
(LIT 214)
(PUNCT ",")
(LIT 1087)
(PUNCT ":")
(LIT 216)
(PUNCT ",")
(LIT 1088)
(PUNCT ":")
(LIT 225)
(PUNCT ",")
(LIT 1089)
(PUNCT ":")
(LIT 227)
(PUNCT ",")
(LIT 1090)
(PUNCT ":")
(LIT 229)
(PUNCT ",")
(LIT 1091)
(PUNCT ":")
(LIT 231)
(PUNCT ",")
(LIT 1092)
(PUNCT ":")
(LIT 170)
(PUNCT ",")
(LIT 1093)
(PUNCT ":")
(LIT 181)
(PUNCT ",")
(LIT 1094)
(PUNCT ":")
(LIT 164)
(PUNCT ",")
(LIT 1095)
(PUNCT ":")
(LIT 251)
(PUNCT ",")
(LIT 1096)
(PUNCT ":")
(LIT 245)
(PUNCT ",")
(LIT 1097)
(PUNCT ":")
(LIT 249)
(PUNCT ",")
(LIT 1098)
(PUNCT ":")
(LIT 158)
(PUNCT ",")
(LIT 1099)
(PUNCT ":")
(LIT 241)
(PUNCT ",")
(LIT 1100)
(PUNCT ":")
(LIT 237)
(PUNCT ",")
(LIT 1101)
(PUNCT ":")
(LIT 247)
(PUNCT ",")
(LIT 1102)
(PUNCT ":")
(LIT 156)
(PUNCT ",")
(LIT 1103)
(PUNCT ":")
(LIT 222)
(PUNCT ",")
(LIT 1105)
(PUNCT ":")
(LIT 132)
(PUNCT ",")
(LIT 1106)
(PUNCT ":")
(LIT 128)
(PUNCT ",")
(LIT 1107)
(PUNCT ":")
(LIT 130)
(PUNCT ",")
(LIT 1108)
(PUNCT ":")
(LIT 134)
(PUNCT ",")
(LIT 1109)
(PUNCT ":")
(LIT 136)
(PUNCT ",")
(LIT 1110)
(PUNCT ":")
(LIT 138)
(PUNCT ",")
(LIT 1111)
(PUNCT ":")
(LIT 140)
(PUNCT ",")
(LIT 1112)
(PUNCT ":")
(LIT 142)
(PUNCT ",")
(LIT 1113)
(PUNCT ":")
(LIT 144)
(PUNCT ",")
(LIT 1114)
(PUNCT ":")
(LIT 146)
(PUNCT ",")
(LIT 1115)
(PUNCT ":")
(LIT 148)
(PUNCT ",")
(LIT 1116)
(PUNCT ":")
(LIT 150)
(PUNCT ",")
(LIT 1118)
(PUNCT ":")
(LIT 152)
(PUNCT ",")
(LIT 1119)
(PUNCT ":")
(LIT 154)
(PUNCT ",")
(LIT 8470)
(PUNCT ":")
(LIT 239)
(PUNCT ",")
(LIT 9472)
(PUNCT ":")
(LIT 196)
(PUNCT ",")
(LIT 9474)
(PUNCT ":")
(LIT 179)
(PUNCT ",")
(LIT 9484)
(PUNCT ":")
(LIT 218)
(PUNCT ",")
(LIT 9488)
(PUNCT ":")
(LIT 191)
(PUNCT ",")
(LIT 9492)
(PUNCT ":")
(LIT 192)
(PUNCT ",")
(LIT 9496)
(PUNCT ":")
(LIT 217)
(PUNCT ",")
(LIT 9500)
(PUNCT ":")
(LIT 195)
(PUNCT ",")
(LIT 9508)
(PUNCT ":")
(LIT 180)
(PUNCT ",")
(LIT 9516)
(PUNCT ":")
(LIT 194)
(PUNCT ",")
(LIT 9524)
(PUNCT ":")
(LIT 193)
(PUNCT ",")
(LIT 9532)
(PUNCT ":")
(LIT 197)
(PUNCT ",")
(LIT 9552)
(PUNCT ":")
(LIT 205)
(PUNCT ",")
(LIT 9553)
(PUNCT ":")
(LIT 186)
(PUNCT ",")
(LIT 9556)
(PUNCT ":")
(LIT 201)
(PUNCT ",")
(LIT 9559)
(PUNCT ":")
(LIT 187)
(PUNCT ",")
(LIT 9562)
(PUNCT ":")
(LIT 200)
(PUNCT ",")
(LIT 9565)
(PUNCT ":")
(LIT 188)
(PUNCT ",")
(LIT 9568)
(PUNCT ":")
(LIT 204)
(PUNCT ",")
(LIT 9571)
(PUNCT ":")
(LIT 185)
(PUNCT ",")
(LIT 9574)
(PUNCT ":")
(LIT 203)
(PUNCT ",")
(LIT 9577)
(PUNCT ":")
(LIT 202)
(PUNCT ",")
(LIT 9580)
(PUNCT ":")
(LIT 206)
(PUNCT ",")
(LIT 9600)
(PUNCT ":")
(LIT 223)
(PUNCT ",")
(LIT 9604)
(PUNCT ":")
(LIT 220)
(PUNCT ",")
(LIT 9608)
(PUNCT ":")
(LIT 219)
(PUNCT ",")
(LIT 9617)
(PUNCT ":")
(LIT 176)
(PUNCT ",")
(LIT 9618)
(PUNCT ":")
(LIT 177)
(PUNCT ",")
(LIT 9619)
(PUNCT ":")
(LIT 178)
(PUNCT ",")
(LIT 9632)
(PUNCT ":")
(LIT 254)
(PUNCT ",")
(PUNCT "}")
(NEWLINE)
(ENDMARKER)