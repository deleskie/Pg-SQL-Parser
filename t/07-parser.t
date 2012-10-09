#!perl

use Test::More;
use Test::Deep;
use Test::Exception;
use Data::Dumper;
use autodie;

use Pg::SQL::Parser;

my @tests = @ARGV;
if ( 0 == scalar @tests ) {
    opendir( my $dir, 't/07-parser-data/' );

    my %uniq = ();
    @tests = sort { $a <=> $b }
        grep { !$uniq{ $_ }++ }
        map { s/-.*//; $_ }
        grep { /^\d+-(?:expect|query)$/ } readdir $dir;

    closedir $dir;
}

plan 'tests' => 1 + scalar @tests;

my $parser;

lives_ok {
    $parser = Pg::SQL::Parser->new();
} 'Object creation should live';

for my $test ( @tests ) {

    my $query_file = 't/07-parser-data/' . $test . '-query';

    my $query = slurp( $query_file );

    my $expected = get_expected_from_file( $test );

    my $got = [ map { $_->dump_struct() } @{ $parser->parse( $query ) } ];

    unless ( cmp_deeply( $got, $expected, 'Query no. ' . $test ) ) {
        if ( $ENV{ 'DEBUG_TESTS' } ) {
            print STDERR "\n" . 'In test ' . $test . ' got: ' . Dumper( $got );
        }
        exit;
    }
}

exit;

sub get_expected_from_file {
    my $test_no = shift;

    my $filename = 't/07-parser-data/' . $test_no . '-expect';

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
