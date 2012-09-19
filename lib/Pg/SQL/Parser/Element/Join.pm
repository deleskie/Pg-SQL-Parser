package Pg::SQL::Parser::Element::Join;
use v5.12;
use strict;
use warnings;
use warnings qw( FATAL utf8 );
use utf8;
use Carp;
use English qw( -no_match_vars );

use base qw( Pg::SQL::Parser::Element );

=head1 NAME

Pg::SQL::Parser::Element::Join - Class representing join in query

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 EXAMPLE

    my $join = Pg::SQL::Parser::Element::Join->new();

    # a.b as c full outer join d.e as f using ( g, h )
    $join->left( $object_of_table_a_b_as_c );
    $join->right( $object_of_table_d_e_as_f );
    $join->type('full outer join');
    $join->condition_type( 'using' );
    $join->condition( [ $object_of_column_g, $object_of_column_h ] );

    # a join b on c = d
    $join->left( $object_of_table_a );
    $join->right( $object_of_table_b );
    $join->type('join');
    $join->condition_type( 'on' );
    $join->condition( $object_of_expression_c_equals_d );

=head1 METHODS

=head2 left()

Left side of the join - it's table or join.

=head2 right()

Right side of the join - it's table or join.

=head2 type()

Join type, one of:

=over

=item * join

=item * right join

=item * left join

=item * right outer join

=item * left outer join

=item * full outer join

=item * full join

=item * natural join

=item * natural right join

=item * natural left join

=item * natural right outer join

=item * natural left outer join

=item * natural full outer join

=item * natural full join

=item * cross join

=back

Natural and cross joins do not have conditions - i.e. condition_type and condition are undef.

=head2 condition_type()

What is being used to join - USING (column, column, ...), or rather ON
expression.

=head2 condition()

Actual join condition - can be arrayref of columns in case of condition_type
eq 'USING' or an expression tree for ON conditions.

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
