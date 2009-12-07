#
#  Author: Otavio Fernandes <otaviof@gmail.com>
# Created: 12/06/2009 13:51:09
#

use strict;
use warnings;

use Test::More tests => 2;

BEGIN {
    use_ok('Dojo::Pile');
}

my $pile = new_ok( 'Dojo::Pile', [ input_list => [ 4, 2, 2, 3, 5 ] ] );

__END__
