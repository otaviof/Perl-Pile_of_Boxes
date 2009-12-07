#!/usr/bin/env perl

#
#  Author: Otavio Fernandes <otaviof@gmail.com>
# Created: 12/06/2009 23:07:09
#

use strict;
use warnings;

use Dojo::Pile;
use Data::Dumper;

BEGIN {
    warn "Please, inform an numerical sequence"
        and exit
        if ( $#ARGV < 0 );
}

my $pile = new Dojo::Pile( input_list => \@ARGV )
    or die $!;

print "Pile height: ", $pile->generate(), "\n";

foreach my $box ( @{ $pile->boxes } ) {
    print Dumper $box;
}

__END__
