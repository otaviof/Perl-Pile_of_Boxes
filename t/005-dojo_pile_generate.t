#
#  Author: Otavio Fernandes <otavio.fernandes@locaweb.com.br>
# Created: 12/06/2009 13:56:04
#

use strict;
use warnings;

use Test::More tests => 3;
use Dojo::Pile;

my $pile;

$pile = new Dojo::Pile( input_list => [1] );

ok( $pile->generate() == 1, "Should pass, for [ 1 ] the answer is 1" );

$pile = new Dojo::Pile( input_list => [ 1, 1 ] );

ok( $pile->generate() == 2, "Should pass, for [ 1, 1 ] the answer is 2" );

$pile = new Dojo::Pile( input_list => [ 4, 2, 1, 3, 1, 5 ] );

ok( $pile->generate() == 3,
    "Should pass, for [ 4, 2, 1, 3, 1, 5 ] the answer is 3" );

__END__
