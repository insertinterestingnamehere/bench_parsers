use strict;
use File::Slurper 'read_text';
use Marpa::R2;
use Time::HiRes;

my $input = read_text($ARGV[0]);

# Rely on the Python lexer to provide pre-lexed input.
# The existing derivative-based Python parser does
# something similar.

my $g = Marpa::R2::Scanless::G->new({
        source         => \(<<'END_OF_SOURCE'),

inaccessible is ok by default

# This is just for the sake of benchmarking how the
# parsers perform with the Python grammar, so
# don't bother to carry around additional information
# (e.g. names of variables, values of string/integer literals)
# that would normally be associated with each token.

# This is adapted from the Python 3.6 grammar.
# See https://docs.python.org/3.6/reference/grammar.html.
:start ::= file_input
eps ::=
EOL ::= [\n]
NAME ::= 'NAME'
NEWLINE ::= 'NEWLINE'
INDENT ::= 'INDENT'
DEDENT ::= 'DEDENT'
ENDMARKER ::= 'ENDMARKER' EOL
NUMBER ::= 'NUMBER'
STRING ::= 'STRING'
ASYNC ::= 'ASYNC'
AWAIT ::= 'AWAIT'

file_input ::= t92 ENDMARKER
eval_input ::= testlist t0 ENDMARKER
testlist_comp ::= t1 t2
suite ::= simple_stmt | NEWLINE INDENT t5 DEDENT
t46 ::= 'else' ':' suite | eps
small_stmt ::= del_stmt | pass_stmt | assert_stmt | global_stmt | flow_stmt | expr_stmt | import_stmt | nonlocal_stmt
t1 ::= test | star_expr
async_stmt ::= ASYNC t57
dictorsetmaker ::= t1 t2 | t9 t10
subscript ::= t11 ':' t11 t12 | test
t49 ::= t49 comp_op expr | comp_op expr
t73 ::= t73 ',' t69 | ',' t69
t37 ::= eps | vfpdef
t98 ::= ';' | eps
t10 ::= comp_for | t58 t36
global_stmt ::= 'global' NAME t77
term ::= factor t19
import_name ::= 'import' dotted_as_names
try_stmt ::= 'try' ':' suite t21
funcdef ::= 'def' NAME parameters t22 ':' suite
t89 ::= eps | AWAIT
t95 ::= trailer | t95 trailer
t39 ::= '**' vfpdef t36 | '*' t37 t38 t4
dotted_as_names ::= dotted_as_name t15
t111 ::= t113 | eps
t55 ::= t54 | eps
annassign ::= ':' test t29
import_from ::= 'from' t30 'import' t31
t58 ::= eps | t88
t76 ::= t76 t75 arith_expr | t75 arith_expr
t93 ::= eps | t99
t86 ::= t8 | eps
lambdef_nocond ::= 'lambda' t107 ':' test_nocond
shift_expr ::= arith_expr t35
test ::= lambdef | or_test t16
testlist_star_expr ::= t1 t40 t36
async_funcdef ::= ASYNC funcdef
comp_op ::= 'not' 'in' | '>' | 'in' | '==' | '<>' | '!=' | 'is' | '<' | '<=' | 'is' 'not' | '>='
factor ::= power | t108 factor
raise_stmt ::= 'raise' t26
continue_stmt ::= 'continue'
t52 ::= t52 '&' shift_expr | '&' shift_expr
t69 ::= expr | star_expr
t65 ::= eps | testlist
t63 ::= eps | t116
t115 ::= 'elif' test ':' suite | t115 'elif' test ':' suite
t91 ::= eps | t73
t54 ::= t54 ',' tfpdef t29 | ',' tfpdef t29
break_stmt ::= 'break'
expr ::= xor_expr t118
comp_iter ::= comp_if | comp_for
t16 ::= eps | 'if' or_test 'else' test
t119 ::= testlist_star_expr | yield_expr
import_as_names ::= import_as_name t51 t36
t12 ::= sliceop | eps
t4 ::= ',' t3 | eps
varargslist ::= vfpdef t29 t38 t14 | '*' t37 t38 t4
comparison ::= expr t50
t34 ::= eps | typedargslist
t11 ::= eps | test
t21 ::= t45 t46 t47 | 'finally' ':' suite
t7 ::= testlist | yield_expr
t74 ::= ',' subscript | t74 ',' subscript
and_test ::= not_test t83
t30 ::= t64 dotted_name | t84
power ::= atom_expr t62
test_nocond ::= or_test | lambdef_nocond
dotted_name ::= NAME t63
with_item ::= test t53
t47 ::= eps | 'finally' ':' suite
t33 ::= NEWLINE | stmt
t117 ::= '|' xor_expr | t117 '|' xor_expr
typedargslist ::= '**' tfpdef t36 | '*' t71 t55 t72 | tfpdef t29 t55 t70
compound_stmt ::= decorated | with_stmt | try_stmt | if_stmt | funcdef | classdef | for_stmt | while_stmt | async_stmt
t83 ::= 'and' not_test t83 | 'and' not_test | eps
tfpdef ::= NAME t17
atom ::= t78 | NUMBER | '(' t79 ')' | 'None' | '{' t81 '}' | 'False' | 'True' | '...' | '[' t80 ']' | NAME
t20 ::= yield_expr | testlist_comp
t80 ::= eps | testlist_comp
testlist ::= test t82 t36
nonlocal_stmt ::= 'nonlocal' NAME t77
t78 ::= t78 STRING | STRING
t41 ::= '...' | '.'
t114 ::= t114 ',' t1 | ',' t1
t43 ::= ',' vfpdef t29 | t43 ',' vfpdef t29
t28 ::= eps | t27
t81 ::= dictorsetmaker | eps
t62 ::= eps | '**' factor
t57 ::= with_stmt | funcdef | for_stmt
for_stmt ::= 'for' exprlist 'in' testlist ':' suite t46
yield_arg ::= testlist | 'from' test
comp_for ::= t68 'for' exprlist 'in' or_test t85
t64 ::= t41 t64 | eps | t41
atom_expr ::= t89 atom t90
t97 ::= eps | ',' test
exprlist ::= t69 t91 t36
t29 ::= eps | '=' test
t59 ::= 'and' not_test | t59 'and' not_test
t106 ::= eps | comp_for
or_test ::= and_test t86
simple_stmt ::= small_stmt t67 t98 NEWLINE
t15 ::= ',' dotted_as_name | eps | ',' dotted_as_name t15
t48 ::= t48 NEWLINE | NEWLINE
t45 ::= except_clause ':' suite | t45 except_clause ':' suite
yield_stmt ::= yield_expr
arith_expr ::= term t93
t32 ::= t33 | t32 t33
if_stmt ::= 'if' test ':' suite t96 t46
t88 ::= t88 ',' t9 | ',' t9
assert_stmt ::= 'assert' test t97
t105 ::= eps | '(' t44 ')'
t61 ::= test t60 | eps
t24 ::= t23 | eps
arglist ::= argument t28 t36
dotted_as_name ::= dotted_name t60
t42 ::= t6 | eps
single_input ::= simple_stmt | compound_stmt NEWLINE | NEWLINE
except_clause ::= 'except' t61
t77 ::= eps | t87
t17 ::= ':' test | eps
t19 ::= t94 | eps
t79 ::= eps | t20
t5 ::= t5 stmt | stmt
pass_stmt ::= 'pass'
parameters ::= '(' t34 ')'
stmt ::= simple_stmt | compound_stmt
decorated ::= decorators classdef | decorators funcdef | decorators async_funcdef
t14 ::= eps | ',' t13
decorator ::= '@' dotted_name t105 NEWLINE
t60 ::= eps | 'as' NAME
t113 ::= '=' t119 | t113 '=' t119
t70 ::= ',' t103 | eps
lambdef ::= 'lambda' t107 ':' test
t22 ::= '->' test | eps
vfpdef ::= NAME
t44 ::= arglist | eps
subscriptlist ::= subscript t101 t36
t0 ::= eps | t48
return_stmt ::= 'return' t65
t8 ::= t8 'or' and_test | 'or' and_test
star_expr ::= '*' expr
t40 ::= eps | t114
t35 ::= eps | t76
encoding_decl ::= NAME
t67 ::= eps | t66
t71 ::= tfpdef | eps
t68 ::= eps | ASYNC
t75 ::= '>>' | '<<'
with_stmt ::= 'with' with_item t42 ':' suite
t102 ::= '**' tfpdef t36 | '*' t71 t55 t72
t23 ::= t23 '^' xor_expr | '^' xor_expr
t87 ::= ',' NAME | t87 ',' NAME
flow_stmt ::= continue_stmt | return_stmt | break_stmt | raise_stmt | yield_stmt
import_stmt ::= import_name | import_from
xor_expr ::= and_expr t24
yield_expr ::= 'yield' t109
t109 ::= eps | yield_arg
t66 ::= t66 ';' small_stmt | ';' small_stmt
t94 ::= t94 t56 factor | t56 factor
t53 ::= eps | 'as' expr
t100 ::= '+' | '-'
import_as_name ::= NAME t60
t13 ::= t39 | eps
t9 ::= test ':' test | '**' expr
classdef ::= 'class' NAME t105 ':' suite
augassign ::= '@=' | '/=' | '&=' | '^=' | '//=' | '-=' | '|=' | '<<=' | '+=' | '**=' | '*=' | '%=' | '>>='
t56 ::= '%' | '&' | '*' | '//' | '/'
t50 ::= t49 | eps
t92 ::= t32 | eps
t26 ::= test t25 | eps
comp_if ::= 'if' test_nocond t85
while_stmt ::= 'while' test ':' suite t46
and_expr ::= shift_expr t110
t6 ::= ',' with_item | t6 ',' with_item
t90 ::= eps | t95
t101 ::= eps | t74
decorators ::= decorator decorators | decorator
t104 ::= '**' tfpdef t36 | eps
t27 ::= t27 ',' argument | ',' argument
t103 ::= eps | t102
del_stmt ::= 'del' exprlist
expr_stmt ::= testlist_star_expr t112
t72 ::= ',' t104 | eps
t118 ::= eps | t117
t99 ::= t100 term | t99 t100 term
trailer ::= '[' subscriptlist ']' | '.' NAME | '(' t44 ')'
t18 ::= ',' test | t18 ',' test
t116 ::= t116 '.' NAME | '.' NAME
t36 ::= ',' | eps
t107 ::= eps | varargslist
t112 ::= augassign t7 | annassign | t111
t110 ::= t52 | eps
t31 ::= '(' import_as_names ')' | import_as_names | '*'
t96 ::= t115 | eps
t84 ::= t84 t41 | t41
sliceop ::= ':' t11
t108 ::= '+' | '~' | '-'
t3 ::= eps | '**' vfpdef t36
argument ::= '**' test | test '=' test | test t106 | '*' test
t51 ::= ',' import_as_name t51 | eps | ',' import_as_name
not_test ::= comparison | 'not' not_test
t85 ::= comp_iter | eps
t38 ::= t43 | eps
t25 ::= eps | 'from' test
t2 ::= t40 t36 | comp_for
t82 ::= eps | t18

END_OF_SOURCE
});

for my $i ( 1..$ARGV[1] ) {
    my $re = Marpa::R2::Scanless::R->new({ grammar => $g });
    my $start_time = [Time::HiRes::gettimeofday()];
    $re->read(\$input);

    my $value = ${$re->value};
    my $diff = Time::HiRes::tv_interval($start_time);
    print "$diff\n"
}
