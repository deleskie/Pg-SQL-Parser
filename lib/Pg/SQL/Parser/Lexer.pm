package Pg::SQL::Parser::Lexer;
use v5.12;
use strict;
use warnings;
use warnings qw( FATAL utf8 );
use utf8;
use Carp;
use English qw( -no_match_vars );

=head1 NAME

Pg::SQL::Parser::Lexer - Module for lexing SQL statements

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

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
        return ( 'ALL',               $1 ) if $sql =~ s{\A(all)\b}{}io;
        return ( 'ANALYSE',           $1 ) if $sql =~ s{\A(analyse)\b}{}io;
        return ( 'ANALYZE',           $1 ) if $sql =~ s{\A(analyze)\b}{}io;
        return ( 'AND',               $1 ) if $sql =~ s{\A(and)\b}{}io;
        return ( 'ANY',               $1 ) if $sql =~ s{\A(any)\b}{}io;
        return ( 'ARRAY',             $1 ) if $sql =~ s{\A(array)\b}{}io;
        return ( 'AS',                $1 ) if $sql =~ s{\A(as)\b}{}io;
        return ( 'ASC',               $1 ) if $sql =~ s{\A(asc)\b}{}io;
        return ( 'ASYMMETRIC',        $1 ) if $sql =~ s{\A(asymmetric)\b}{}io;
        return ( 'BOTH',              $1 ) if $sql =~ s{\A(both)\b}{}io;
        return ( 'CASE',              $1 ) if $sql =~ s{\A(case)\b}{}io;
        return ( 'CAST',              $1 ) if $sql =~ s{\A(cast)\b}{}io;
        return ( 'CHECK',             $1 ) if $sql =~ s{\A(check)\b}{}io;
        return ( 'COLLATE',           $1 ) if $sql =~ s{\A(collate)\b}{}io;
        return ( 'COLUMN',            $1 ) if $sql =~ s{\A(column)\b}{}io;
        return ( 'CONSTRAINT',        $1 ) if $sql =~ s{\A(constraint)\b}{}io;
        return ( 'CREATE',            $1 ) if $sql =~ s{\A(create)\b}{}io;
        return ( 'CURRENT_CATALOG',   $1 ) if $sql =~ s{\A(current_catalog)\b}{}io;
        return ( 'CURRENT_DATE',      $1 ) if $sql =~ s{\A(current_date)\b}{}io;
        return ( 'CURRENT_ROLE',      $1 ) if $sql =~ s{\A(current_role)\b}{}io;
        return ( 'CURRENT_TIME',      $1 ) if $sql =~ s{\A(current_time)\b}{}io;
        return ( 'CURRENT_TIMESTAMP', $1 ) if $sql =~ s{\A(current_timestamp)\b}{}io;
        return ( 'CURRENT_USER',      $1 ) if $sql =~ s{\A(current_user)\b}{}io;
        return ( 'DEFAULT',           $1 ) if $sql =~ s{\A(default)\b}{}io;
        return ( 'DEFERRABLE',        $1 ) if $sql =~ s{\A(deferrable)\b}{}io;
        return ( 'DESC',              $1 ) if $sql =~ s{\A(desc)\b}{}io;
        return ( 'DISTINCT',          $1 ) if $sql =~ s{\A(distinct)\b}{}io;
        return ( 'DO',                $1 ) if $sql =~ s{\A(do)\b}{}io;
        return ( 'ELSE',              $1 ) if $sql =~ s{\A(else)\b}{}io;
        return ( 'END',               $1 ) if $sql =~ s{\A(end)\b}{}io;
        return ( 'EXCEPT',            $1 ) if $sql =~ s{\A(except)\b}{}io;
        return ( 'FALSE',             $1 ) if $sql =~ s{\A(false)\b}{}io;
        return ( 'FETCH',             $1 ) if $sql =~ s{\A(fetch)\b}{}io;
        return ( 'FOR',               $1 ) if $sql =~ s{\A(for)\b}{}io;
        return ( 'FOREIGN',           $1 ) if $sql =~ s{\A(foreign)\b}{}io;
        return ( 'FROM',              $1 ) if $sql =~ s{\A(from)\b}{}io;
        return ( 'GRANT',             $1 ) if $sql =~ s{\A(grant)\b}{}io;
        return ( 'GROUP',             $1 ) if $sql =~ s{\A(group)\b}{}io;
        return ( 'HAVING',            $1 ) if $sql =~ s{\A(having)\b}{}io;
        return ( 'IN',                $1 ) if $sql =~ s{\A(in)\b}{}io;
        return ( 'INITIALLY',         $1 ) if $sql =~ s{\A(initially)\b}{}io;
        return ( 'INTERSECT',         $1 ) if $sql =~ s{\A(intersect)\b}{}io;
        return ( 'INTO',              $1 ) if $sql =~ s{\A(into)\b}{}io;
        return ( 'LEADING',           $1 ) if $sql =~ s{\A(leading)\b}{}io;
        return ( 'LIMIT',             $1 ) if $sql =~ s{\A(limit)\b}{}io;
        return ( 'LOCALTIME',         $1 ) if $sql =~ s{\A(localtime)\b}{}io;
        return ( 'LOCALTIMESTAMP',    $1 ) if $sql =~ s{\A(localtimestamp)\b}{}io;
        return ( 'NOT',               $1 ) if $sql =~ s{\A(not)\b}{}io;
        return ( 'NULL',              $1 ) if $sql =~ s{\A(null)\b}{}io;
        return ( 'OFFSET',            $1 ) if $sql =~ s{\A(offset)\b}{}io;
        return ( 'ON',                $1 ) if $sql =~ s{\A(on)\b}{}io;
        return ( 'ONLY',              $1 ) if $sql =~ s{\A(only)\b}{}io;
        return ( 'OR',                $1 ) if $sql =~ s{\A(or)\b}{}io;
        return ( 'ORDER',             $1 ) if $sql =~ s{\A(order)\b}{}io;
        return ( 'PLACING',           $1 ) if $sql =~ s{\A(placing)\b}{}io;
        return ( 'PRIMARY',           $1 ) if $sql =~ s{\A(primary)\b}{}io;
        return ( 'REFERENCES',        $1 ) if $sql =~ s{\A(references)\b}{}io;
        return ( 'RETURNING',         $1 ) if $sql =~ s{\A(returning)\b}{}io;
        return ( 'SELECT',            $1 ) if $sql =~ s{\A(select)\b}{}io;
        return ( 'SESSION_USER',      $1 ) if $sql =~ s{\A(session_user)\b}{}io;
        return ( 'SOME',              $1 ) if $sql =~ s{\A(some)\b}{}io;
        return ( 'SYMMETRIC',         $1 ) if $sql =~ s{\A(symmetric)\b}{}io;
        return ( 'TABLE',             $1 ) if $sql =~ s{\A(table)\b}{}io;
        return ( 'THEN',              $1 ) if $sql =~ s{\A(then)\b}{}io;
        return ( 'TO',                $1 ) if $sql =~ s{\A(to)\b}{}io;
        return ( 'TRAILING',          $1 ) if $sql =~ s{\A(trailing)\b}{}io;
        return ( 'TRUE',              $1 ) if $sql =~ s{\A(true)\b}{}io;
        return ( 'UNION',             $1 ) if $sql =~ s{\A(union)\b}{}io;
        return ( 'UNIQUE',            $1 ) if $sql =~ s{\A(unique)\b}{}io;
        return ( 'USER',              $1 ) if $sql =~ s{\A(user)\b}{}io;
        return ( 'USING',             $1 ) if $sql =~ s{\A(using)\b}{}io;
        return ( 'VARIADIC',          $1 ) if $sql =~ s{\A(variadic)\b}{}io;
        return ( 'WHEN',              $1 ) if $sql =~ s{\A(when)\b}{}io;
        return ( 'WHERE',             $1 ) if $sql =~ s{\A(where)\b}{}io;
        return ( 'WINDOW',            $1 ) if $sql =~ s{\A(window)\b}{}io;
        return ( 'WITH',              $1 ) if $sql =~ s{\A(with)\b}{}io;
        return ( 'COMMENT',           $1 ) if $sql =~ s{\A--([^\n]*)}{}o;

        return ( uc( $1 ), $1 ) if $sql =~ s{\A(like)}{}io;
        return ( uc( $1 ), $1 ) if $sql =~ s{\A(ilike)}{}io;
        return ( uc( $1 ), $1 ) if $sql =~ s{\A(between)}{}io;

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
