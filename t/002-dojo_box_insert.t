#
#  Author: Otavio Fernandes <otaviof@gmail.com>
# Created: 12/06/2009 12:39:37
#

use strict;
use warnings;

use Test::More tests => 2;
use Dojo::Box;

my $box = new Dojo::Box( height => 4 );

ok( !$box->insert(),  "Should fail, must inform an height of other box" );
ok( !$box->insert(5), "Should fail, insert an item greater than height" )

__END__
