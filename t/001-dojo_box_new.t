#
#  Author: Otavio Fernandes <otaviof@gmail.com>
# Created: 12/06/2009 12:06:36
#

use strict;
use warnings;

use Test::More tests => 2;

BEGIN {
    use_ok('Dojo::Box');
}

my $box = new_ok( 'Dojo::Box', [ { height => 4 } ] );

__END__

