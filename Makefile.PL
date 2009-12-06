use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'Dojo::PileOfBoxes',
    AUTHOR        => 'Otavio Fernandes <otaviof@gmail.com>',
    VERSION_FROM  => 'lib/Dojo/PileOfBoxes.pm',
    ABSTRACT_FROM => 'lib/Dojo/PileOfBoxes.pm',
    ( $ExtUtils::MakeMaker::VERSION >= 6.3002
        ? ( 'LICENSE' => 'perl' )
        : () ),
    PL_FILES  => {},
    PREREQ_PM => { 'Test::More' => 0, },
    dist      => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Dojo-PileOfBoxes-*' },
);
