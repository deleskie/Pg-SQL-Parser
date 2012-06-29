#!perl -T

use Test::More tests => 2;

BEGIN {
    use_ok( 'Pg::SQL::Parser' )        || print "Bail out!\n";
    use_ok( 'Pg::SQL::Parser::Lexer' ) || print "Bail out!\n";
}

diag( "Testing Pg::SQL::Parser $Pg::SQL::Parser::VERSION, Perl $], $^X" );
