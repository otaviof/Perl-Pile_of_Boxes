#!perl -T

use Test::More tests => 1;

BEGIN {
	use_ok( 'Dojo::PileOfBoxes' );
}

diag( "Testing Dojo::PileOfBoxes $Dojo::PileOfBoxes::VERSION, Perl $], $^X" );
