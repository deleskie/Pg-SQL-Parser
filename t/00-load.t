#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Pg::SQL::Parser' ) || print "Bail out!\n";
}

diag( "Testing Pg::SQL::Parser $Pg::SQL::Parser::VERSION, Perl $], $^X" );
