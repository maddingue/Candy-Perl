use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Candy::Perl',
    license             => 'perl',
    dist_author         => 'Sebastien Aperghis-Tramoni <saper@cpan.org>',
    dist_version_from   => 'lib/Candy/Perl.pm',

    meta_merge          => {
        resources       => {
            homepage    => 'https://www.ohloh.net/p/Candy-Perl',
            repository  => 'git://github.com/maddingue/Candy-Perl.git',
        },
    },

    build_requires => {
        'Exporter'      => 0,
        'Perl6::Say'    => 0,
    },
    build_requires => {
        'Test::More'    => 0,
    },

    add_to_cleanup      => [ 'Candy-Perl-*' ],
);

$builder->create_build_script();
