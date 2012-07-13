use strict;
use warnings;
use Test::More;
use File::Find;

# Ensure a recent version of Test::Pod::Coverage
my $min_tpc = 1.08;
eval "use Test::Pod::Coverage $min_tpc";
plan skip_all => "Test::Pod::Coverage $min_tpc required for testing POD coverage"
    if $@;

# Test::Pod::Coverage doesn't require a minimum Pod::Coverage version,
# but older versions don't recognize some common documentation styles
my $min_pc = 0.18;
eval "use Pod::Coverage $min_pc";
plan skip_all => "Pod::Coverage $min_pc required for testing POD coverage"
    if $@;

my @modules = ();
find(
    sub {
        return unless -f;
        return unless /\.pm\z/;
        my $x = $File::Find::name;
        $x =~ s{^lib/}{};
        $x =~ s/\.pm$//;
        $x =~ s{/}{::}g;
        return if $x eq 'Pg::SQL::Parser::SQL';
        push @modules, $x;
    },
    'lib/'
);

plan tests => scalar @modules;
pod_coverage_ok( $_ ) for @modules;
