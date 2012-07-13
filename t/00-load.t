#!perl -T

use Test::More tests => 3;

BEGIN {
    use_ok( 'Pg::SQL::Parser' )        || print "Bail out!\n";
    use_ok( 'Pg::SQL::Parser::Lexer' ) || print "Bail out!\n";
    use_ok( 'Pg::SQL::Parser::SQL' )   || print "Bail out!\n";
}

diag( "Testing Pg::SQL::Parser $Pg::SQL::Parser::VERSION, Perl $], $^X" );
