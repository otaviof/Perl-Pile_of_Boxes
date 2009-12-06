package Dojo::Box;

#
#  Author: Otavio Fernandes <otaviof@gmail.com>
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

has 'boxes' => (
    is       => 'ro',
    isa      => 'ArrayRef',
    required => 0,
    default  => sub { [] },
);

sub insert {
    my ( $self, $value ) = @_;
    return if ( !$value
        or $value > $self->height
        or $value > $self->left );

    my $box = __PACKAGE__->new( height => $value );

    push( @{ $self->boxes }, $box )
        or return;
    return 1;
}

sub left {
    my ($self) = @_;
    return $self->height
        if ( $#{ $self->boxes } < 0 );
    my $left = 0;
    foreach my $box ( @{ $self->boxes } ) {
        $left += $box->height;
    }
    return $self->height - $left;
}

1;

__END__
