#!perl -T

use Test::More tests => 19;

BEGIN {
    use_ok( 'Pg::SQL::Parser' )                         || print "Bail out on Pg::SQL::Parser\n";
    use_ok( 'Pg::SQL::Parser::Element' )                || print "Bail out on Pg::SQL::Parser::Element\n";
    use_ok( 'Pg::SQL::Parser::Element::Cast' )          || print "Bail out on Pg::SQL::Parser::Element::Cast\n";
    use_ok( 'Pg::SQL::Parser::Element::Column' )        || print "Bail out on Pg::SQL::Parser::Element::Column\n";
    use_ok( 'Pg::SQL::Parser::Element::Function' )      || print "Bail out on Pg::SQL::Parser::Element::Function\n";
    use_ok( 'Pg::SQL::Parser::Element::Join' )          || print "Bail out on Pg::SQL::Parser::Element::Join\n";
    use_ok( 'Pg::SQL::Parser::Element::Literal_Value' ) || print "Bail out on Pg::SQL::Parser::Element::Literal_Value\n";
    use_ok( 'Pg::SQL::Parser::Element::Operation' )     || print "Bail out on Pg::SQL::Parser::Element::Operation\n";
    use_ok( 'Pg::SQL::Parser::Element::Ordering' )      || print "Bail out on Pg::SQL::Parser::Element::Ordering\n";
    use_ok( 'Pg::SQL::Parser::Element::Result_Column' ) || print "Bail out on Pg::SQL::Parser::Element::Result_Column\n";
    use_ok( 'Pg::SQL::Parser::Element::Select' )        || print "Bail out on Pg::SQL::Parser::Element::Select\n";
    use_ok( 'Pg::SQL::Parser::Element::Set_Operation' ) || print "Bail out on Pg::SQL::Parser::Element::Set_Operation\n";
    use_ok( 'Pg::SQL::Parser::Element::Table' )         || print "Bail out on Pg::SQL::Parser::Element::Table\n";
    use_ok( 'Pg::SQL::Parser::Element::Type' )          || print "Bail out on Pg::SQL::Parser::Element::Type\n";
    use_ok( 'Pg::SQL::Parser::Element::Values' )        || print "Bail out on Pg::SQL::Parser::Element::Values\n";
    use_ok( 'Pg::SQL::Parser::Element::Window' )        || print "Bail out on Pg::SQL::Parser::Element::Window\n";
    use_ok( 'Pg::SQL::Parser::Lexer' )                  || print "Bail out on Pg::SQL::Parser::Lexer\n";
    use_ok( 'Pg::SQL::Parser::Lexer::Keywords' )        || print "Bail out on Pg::SQL::Parser::Lexer::Keywords\n";
    use_ok( 'Pg::SQL::Parser::SQL' )                    || print "Bail out on Pg::SQL::Parser::SQL\n";
}

diag( "Testing Pg::SQL::Parser $Pg::SQL::Parser::VERSION, Perl $], $^X" );
