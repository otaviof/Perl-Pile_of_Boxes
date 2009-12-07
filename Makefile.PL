use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME      => 'Dojo::PileOfBoxes',
    AUTHOR    => 'Otavio Fernandes <otaviof@gmail.com>',
    VERSION   => '0.1',
    PL_FILES  => {'/bin/pile_of_boxes.pl'},
    PREREQ_PM => {
        'Test::More' => 0,
        'Moose'      => '0.39',
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES    => 'Dojo-PileOfBoxes-*' },
);
