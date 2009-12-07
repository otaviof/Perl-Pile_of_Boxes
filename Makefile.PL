#!/usr/bin/env perl

use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME      => 'Dojo::PileOfBoxes',
    AUTHOR    => 'Otavio Fernandes <otaviof@gmail.com>',
    VERSION   => '0.1',
    PL_FILES  => {'/bin/pile_of_boxes.pl'},
    PREREQ_PM => {
        'Test::More' => '0.94',
        'Moose'      => '0.39',
        'Test::Pod'  => '1.40',
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES    => 'Dojo-PileOfBoxes-*' },
);

mk_changes_from_git();

# ---------------------------------------------------------------------------
#                                  Sub-routines
# ---------------------------------------------------------------------------

sub mk_changes_from_git {
    return if ( !-d '.git' );
    unlink('Changes');
    open( my $F, '>', 'Changes' ) or die $!;
    print $F `git log`;
    close($F);
}

__END__
