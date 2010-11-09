use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Candy::Perl',
    LICENSE             => 'perl',
    AUTHOR              => 'Sebastien Aperghis-Tramoni <saper@cpan.org>',
    VERSION_FROM        => 'lib/Candy/Perl.pm',
    ABSTRACT_FROM       => 'lib/Candy/Perl.pm',
    META_MERGE          => {
        resources       => {
            homepage    => 'https://www.ohloh.net/p/Candy-Perl',
            repository  => 'git://github.com/maddingue/Candy-Perl.git',
        },
    },
    PREREQ_PM           => {
        # prereqs
        'DBI'           => '1.40',
    
        # build/test prereqs
        'Test::More'    => 0,
    },
    PL_FILES            => {},
    clean               => { FILES => 'Candy-Perl-*' },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
);

