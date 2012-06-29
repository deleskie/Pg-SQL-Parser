#!perl

use Test::More;
use Test::Deep;
use Data::Dumper;
use autodie;

use Pg::SQL::Parser::Lexer qw( lexize );

my @tests = @ARGV;
if ( 0 == scalar @tests ) {
    opendir( my $dir, 't/06-lexer-data/' );

    my %uniq = ();
    @tests = sort { $a <=> $b }
        grep { !$uniq{ $_ }++ }
        map { s/-.*//; $_ }
        grep { /^\d+-(?:expect|query)$/ } readdir $dir;

    closedir $dir;
}

plan 'tests' => scalar @tests;

for my $test ( @tests ) {

    print STDERR 'Working on test ' . $test . "\n" if $ENV{ 'DEBUG_TESTS' };

    my $query_file = 't/06-lexer-data/' . $test . '-query';

    my $query = slurp( $query_file );

    my $expected = get_expected_from_file( $test );

    my $got = [ lexize( $query ) ];

    print STDERR Dumper( $got ) if $ENV{ 'DEBUG_TESTS' };

    cmp_deeply( $got, $expected, 'Query no. ' . $test );
}

exit;

sub get_expected_from_file {
    my $test_no = shift;

    my $filename = 't/06-lexer-data/' . $test_no . '-expect';

    my $expected_str = slurp( $filename );

    my $expected = eval $expected_str;
    die $@ if $@;

    return $expected;
}

sub slurp {
    my $filename = shift;
    open my $fh, '<', $filename;
    local $/ = undef;
    my $data = <$fh>;
    close $fh;
    return $data;
}
