#
#  Author: Otavio Fernandes <otaviof@gmail.com>
# Created: 12/06/2009 13:11:14
#

use strict;
use warnings;

use Test::More tests => 6;
use Dojo::Box;

my $box = new Dojo::Box( height => 5 );

ok( $box->insert(4),   "Should pass, there is enoght espace for 4" );
ok( $box->left() == 1, "Shoul pass, 1 space is left when I've inserted 4" );

ok( $box->insert(1),   "Should pass, there is enoght espace for 1" );
ok( $box->left() == 0, "Shoul pass, 0 space is left when I've inserted 1" );

ok( !$box->insert(2),  "Should fail, there is no enoght espace for 2 more" );
ok( $box->left() == 0, "Shoul pass, 0 space is left" );

__END__
