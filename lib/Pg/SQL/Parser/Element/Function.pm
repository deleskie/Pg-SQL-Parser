package Pg::SQL::Parser::Element::Function;
use v5.12;
use strict;
use warnings;
use warnings qw( FATAL utf8 );
use utf8;
use Carp;
use English qw( -no_match_vars );

use base qw( Pg::SQL::Parser::Element );

=head1 NAME

Pg::SQL::Parser::Element::Function - Class representing function call

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 EXAMPLE

    my $function = Pg::SQL::Parser::Element::Function->new();

    # ltree.subpath( 'a.b.c', 1 )
    $function->name( 'subpath' );
    $function->schema( 'ltree' );
    $function->arguments(
        [
            $object_for_value_abc,
            $object_for_value_1
        ]
    );

    # count( distinct a )
    my $f = Pg::SQL::Parser::Element::Function->new();
    $f->name( 'count' );
    $f->arguments( [ $object_for_column_a ] );
    $f->distinct( 1 );

    # ... FROM generate_series(1,10) as g (i)
    $f->alias('g');
    $f->column_aliases( ['i'] );

=head1 METHODS

=head2 arguments()

Sets, or gets, list of arguments to this function call. It should be arrayref.

=head2 name()

Sets the name of the function

=head2 schema()

Sets the schema of the function. This is optional, and usually not needed.

=head2 distinct()

Gets/sets whether values of function should be first be passed through distinct (remove of duplicated). Values: 1/undef.

=head2 window()

Gets/sets information about whether the function is called in window context.

When it's not set, it's not window function. It can be set to either
Pg::SQL::Parser::Element::Window object, or a simple string, in which case
it's name for named window.

    count(x) over ( order by a )
    $count_function_object->window( Pg::SQL::Parser::Element::Window->new( .... ) );

    count(x) over ( y )
    $count_function_object->window( 'y' );

=head2 alias()

Alias getter/setter. Used when function is used as data source in FROM. Like in:

    SELECT * from generate_series(1,10) as i;

=head2 column_aliases()

Gets/sets names for returned columns.

Used in cases of specific aliases, like:

    select * from generate_series(1,10) as a (i);

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
