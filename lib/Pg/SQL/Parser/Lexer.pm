package Pg::SQL::Parser::Lexer;
use v5.12;
use strict;
use warnings;
use warnings qw( FATAL utf8 );
use utf8;
use Carp;
use English qw( -no_match_vars );
use Pg::SQL::Parser::Lexer::Keywords;

=head1 NAME

Pg::SQL::Parser::Lexer - Module for lexing SQL statements

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

our $keywords = Pg::SQL::Parser::Lexer::Keywords::re();

=head1 SYNOPSIS

Pg::SQL::Parser::Lexer is used to make "yylex" function to be used for parser:

    use Pg::SQL::Parser::Lexer qw( get_yylex );

    my $yylex = get_yylex( 'SELECT a + b FROM c' );
    my ( $token, $value ) = $yylex->();
    print $token;
    ...

=cut 

use base 'Exporter';

our @EXPORT      = ();
our @EXPORT_OK   = qw( get_yylex lexize );
our %EXPORT_TAGS = ( 'all' => \@EXPORT_OK );

=head1 EXPORTABLE FUNCTIONS

=head2 get_yylex()

Main function - takes one argument - string to be lexed, and returns
coderef, that on every call will return next pair of (TOKEN, VALUE).

=cut

sub get_yylex {
    my $sql = shift;
    return sub {
        $sql =~ s/\A\s*//;
        return ( '', undef ) if '' eq $sql;

        return ( uc( $1 ), $1 ) if $sql =~ s{\A($keywords)\b}{}o;

        return ( 'QUOTED_IDENTIFIER',  $1 ) if $sql =~ s{\A("(?:[^"]*|"")+")}{}o;
        return ( 'UQUOTED_IDENTIFIER', $1 ) if $sql =~ s{\A(u\&"(?:[^"]*|"")+")}{}io;

        return ( 'STRING_CONSTANT',  $1 ) if $sql =~ s{\A('(?:''|[^']*)+')}{}o;
        return ( 'USTRING_CONSTANT', $1 ) if $sql =~ s{\A(u\&'(?:[^']*|'')+')}{}o;
        return ( 'ESTRING_CONSTANT', $1 ) if $sql =~ s{\A(E'(?:[^\\']*|\\.|'')+')}{}oi;
        if ( $sql =~ s{\A(\$[^\$]*\$)}{}o ) {
            my $delimiter  = $1;
            my $end        = index( $sql, $delimiter );
            my $full_value = $delimiter . substr( $sql, 0, $end + length( $delimiter ) );
            substr( $sql, 0, $end + length( $delimiter ) ) = '';
            return ( 'DOLLAR_STRING_CONSTANT', $full_value );
        }
        return ( 'BITSTRING_CONSTANT',  $1 ) if $sql =~ s{\A(b'[01]*')}{}io;
        return ( 'XBITSTRING_CONSTANT', $1 ) if $sql =~ s{\A(x'[0-9a-f]*')}{}io;
        return ( 'NUMERIC_CONSTANT',    $1 ) if $sql =~ s{\A((?:\d+\.\d*|\.\d+)(?:e[+-]\d+)?|\d+e[+-]\d+)}{}io;
        return ( 'INTEGER_CONSTANT',    $1 ) if $sql =~ s{\A(\d+)}{}o;

        return ( 'IDENTIFIER', $1 ) if $sql =~ s{\A([a-z_][a-z0-9_\$]*)}{}io;

        # Regexps for operators are built based on information in:
        # http://www.postgresql.org/docs/current/interactive/sql-createoperator.html

        # Special case for single-character operators that need ordering/priorities
        return ( $1, $1 ) if $sql =~ s{\A([+*/^%<>-])(?![+*/<>=~!@#%^&|`?-])}{}io;

        return ( 'OPERATOR', $1 ) if $sql =~ s{
            \A
            (
            # Single character operator
            [+*/<>=~!@#%^&|`?-](?![+*/<>=~!@#%^&|`?-])
            |
            # Multi character operator, not ending with + or -
            (?:-(?!-)|/(?!\*)|[+*<>=~!@#%^&|`?]+)+[*/<>=~!@#%^&|`?](?![+*/<>=~!@#%^&|`?-])
            |
            # Multi character operator, ending with + or -
            (?:-(?!-)|/(?!\*)|[+*<>=]+)*[~!@#%^&|`?](?:-(?!-)|/(?!\*)|[+*<>=~!@#%^&|`?]+)*[+-](?![+*/<>=~!@#%^&|`?-])
            )
        }{}iox;

        return ( $1, $1 ) if $sql =~ s{\A([.,;()])}{}o;

        return ( $1, $1 ) if $sql =~ s{\A(::)}{}o;

        return ( 'UNKNOWN TOKEN', $1 ) if $sql =~ s{\A(.*)\z}{}so;
    };
}

=head2 lexize()

Debug/test function - called with single argument (query) returns array
of arrayrefs, where each arrayref is single pair (TOKEN,VALUE).

For example, calling lexize( 'SELECT 1' ) returns:

    ( [ 'SELECT', 'select' ], [ 'INTEGER_CONSTANT', '1' ] )

=cut

sub lexize {
    my $sql   = shift;
    my $yylex = get_yylex( $sql );
    my @reply = ();
    while ( 1 ) {
        my @token = $yylex->();
        last if '' eq $token[ 0 ];
        push @reply, \@token;
    }
    return @reply;
}

=head1 AUTHOR

Hubert depesz Lubaczewski, C<< <depesz at depesz.com> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-pg-sql-parser at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Pg-SQL-Parser>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Pg::SQL::Parser


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Pg-SQL-Parser>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Pg-SQL-Parser>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Pg-SQL-Parser>

=item * Search CPAN

L<http://search.cpan.org/dist/Pg-SQL-Parser/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2012 Hubert depesz Lubaczewski.

This program is distributed under the (Revised) BSD License:
L<http://www.opensource.org/licenses/bsd-license.php>

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions
are met:

* Redistributions of source code must retain the above copyright
notice, this list of conditions and the following disclaimer.

* Redistributions in binary form must reproduce the above copyright
notice, this list of conditions and the following disclaimer in the
documentation and/or other materials provided with the distribution.

* Neither the name of Hubert depesz Lubaczewski's Organization
nor the names of its contributors may be used to endorse or promote
products derived from this software without specific prior written
permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
"AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


=cut

1;    # End of Pg::SQL::Parser::Lexer
