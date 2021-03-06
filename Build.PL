use 5.006;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name       => 'Pg::SQL::Parser',
    license           => 'bsd',
    dist_author       => q{Hubert depesz Lubaczewski <depesz@depesz.com>},
    dist_version_from => 'lib/Pg/SQL/Parser.pm',
    build_requires    => {
        'Test::More' => 0,
    },
    requires => {
        'perl' => 5.006,
    },
    add_to_cleanup     => [ 'Pg-SQL-Parser-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
