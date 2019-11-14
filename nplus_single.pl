use strict;
use Time::HiRes;
use Marpa::R2;

# Try and change this number to something else
my $input = "n" . ("+n" x $ARGV[0]);

my $g = Marpa::R2::Scanless::G->new({
        source         => \(<<'END_OF_SOURCE'),

:start ::= exp
exp ::= 'n' | exp '+' exp

END_OF_SOURCE
});

for my $i ( 1..$ARGV[1] ) {
    my $re = Marpa::R2::Scanless::R->new({ grammar => $g, too_many_earley_items => 10000000 });
    my $start_time = [Time::HiRes::gettimeofday()];
    $re->read(\$input);
    my $value = ${$re->value};
    #my $asf = Marpa::R2::ASF->new( { slr => $re } );
    my $diff = Time::HiRes::tv_interval($start_time);
    print "$diff\n"
}

