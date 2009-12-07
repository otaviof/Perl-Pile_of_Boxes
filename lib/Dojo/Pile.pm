package Dojo::Pile;

#
#  Author: Otavio Fernandes <otaviof@gmail.com>
# Created: 12/06/2009 12:04:48
#

use strict;
use warnings;

use Dojo::Box;
use Moose;

has 'input_list' => (
    is       => 'rw',
    isa      => 'ArrayRef',
    required => 1,
);

has 'boxes' => (
    is       => 'ro',
    isa      => 'ArrayRef',
    default  => sub { [] },
    required => 0,
);

sub generate {
    my ($self) = @_;
    $self->insert_in_boxes($_) foreach ( @{ $self->input_list } );
    return $#{ $self->boxes } + 1;
}

sub create_box {
    my ( $self, $height ) = @_;
    return if ( !$height );
    push( @{ $self->boxes }, new Dojo::Box( height => $height ) )
        or return;
    return 1;
}

sub insert_in_boxes {
    my ( $self, $insert ) = @_;
    return if ( !$insert );

    # first box
    return $self->create_box($insert)
        if ( $#{ $self->boxes } < 0 );

    # which box we can insert this value?
    foreach my $box ( @{ $self->boxes } ) {
        return
            if ( $box->insert($insert) );
    }

    return $self->create_box($insert);
}

1;

__END__
