package Pg::SQL::Parser::Element::Select;
use v5.12;
use strict;
use warnings;
use warnings qw( FATAL utf8 );
use utf8;
use Carp;
use English qw( -no_match_vars );

use base qw( Pg::SQL::Parser::Element );

=head1 NAME

Pg::SQL::Parser::Element::Select - Class representing single SELECT query

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 EXAMPLES

    # SELECT DISTINCT a FROM b where c = 1 group by a having min(x) < 10 WINDOW z as ( order by a ) order by a limit 2 offset 15
    my $select = Pg::SQL::Parser::Element::Select->new();
    $select->results( [ $object_for_column_a ] );
    $select->sources( [ $object_for_table_b ] );
    $select->where( $object_for_expression_c_equals_1 );
    $select->groups( [ $object_for_column_a ] );
    $select->having( $object_for_expression_min_x_less_than_10 );
    $select->sorts( [ $object_for_ordering_by_column_a ] );
    $select->limit( $object_for_literal_value_2 );
    $select->offset( $object_for_literal_value_15 );
    $select->distinct( 1 );
    $select->windows( { 'z' => $object_for_window_order_by_a } );

    # WITH RECURSIVE a as ( ... ) select * from a;
    my $cte = { 'a' => $object_for_cte_select };
    my $select = Pg::SQL::Parser::Element::Select->new();
    $select->recursive_cte( 1 );
    $select->cte( $cte );

=head1 METHODS

=head2 results()

Gets/sets arrayref of results of a query.

=head2 sources()

Gets/sets arrayref of sources of data in a query (FROM ...)

=head2 where()

Gets/sets where condition of a query. Most likely some kind of Operation object.

=head2 groups()

Gets/sets arrayref which contains grouping information (basically array of expressions)

=head2 having()

Gets/sets having condition of a query. Most likely some kind of Operation object.

=head2 sorts()

Gets/sets arrayref which contains ordering information.

Each element is object of Ordering class.

=head2 limit()

Gets/sets limit on number of rows returned by query. Usually an integer constant.

=head2 offset()

Gets/sets offset of rows returned by query (how many rows to skip). Usually an integer constant.

=head2 distinct()

Gets/sets marker whether the query uses "DISTINCT". There are two forms of distinct:

=over

=item * SELECT distinct a,b from c;

This is set using $select->distinct(1);

=item * SELECT distinct on (a,b) a, b, c from d;

This is set using $select->distinct( [ $object_a, $object_b ] );

=back

=head2 windows()

Gets/sets hashref with information about defined windows.

Keys are names for windows, values are Pg::SQL::Parser::Element::Window objects.

=head2 recursive_cte()

Gets/Sets information whether CTEs in this select are recursive, or not. 1/undef.

=head2 cte()

Gets/sets hashref with all ctes for this query. Key in hashref is name of
the CTE, value is query object.

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
