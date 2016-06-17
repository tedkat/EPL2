#!perl
use EPL2::Pad;
use EPL2::Command::A;
use EPL2::Command::B;

my $pad = EPL2::Pad->new( width => 800 );

my $long_text = 'i can haz cheezburger' x 25;

for my $A ( EPL2::Command::A->multi_lines( h_pos => 50, text => $long_text, length => 21 ) ) {
    $pad->add_command( $A );
}

$pad->add_command( EPL2::Command::B->new( rotation => 1, text => '"ALPHA"', h_pos => 600, v_pos => 100 ) );

print $pad->string;

