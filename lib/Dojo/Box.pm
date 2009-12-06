package Dojo::Box;

#
#  Author: Otavio Fernandes <otavio.fernandes@locaweb.com.br>
# Created: 12/06/2009 12:04:48
#

use strict;
use warnings;

use Moose;

has 'height' => (
    is       => 'rw',
    isa      => 'Int',
    required => 1,
);

1;

__END__
