package Pg::SQL::Parser::Element::Type;
use v5.12;
use strict;
use warnings;
use warnings qw( FATAL utf8 );
use utf8;
use Carp;
use English qw( -no_match_vars );

use base qw( Pg::SQL::Parser::Element );

=head1 NAME

Pg::SQL::Parser::Element::Type - Class representing datatype

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 EXAMPLE

    my $type = Pg::SQL::Parser::Element::Type->new();

    # int4
    $type->name( 'int4' );

    # contrib.ltree
    $type->schema( 'contrib' );
    $type->name( 'ltree' );

    # "Weird Type"
    $type->name( q{"Weird Type"} );

    # varchar(32)
    $type->name( 'varchar' );
    $type->limits( [ $integer_32_object ] );

    # numeric(9,2)
    $type->name( 'numeric' );
    $type->limits( [ $integer_9_object, $integer_2_object  ] );

=head1 METHODS

=head2 name()

Sets the name of the type

=cut

sub name {
    my $self = shift;
    $self->{ 'name' } = shift;
    return;
}

=head2 schema()

Sets the schema of the type. This is optional, and usually not needed.

=cut

sub schema {
    my $self = shift;
    $self->{ 'schema' } = shift;
    return;
}

=head2 limits()

Sets the limits of the type. This is optional.

=cut

sub limits {
    my $self = shift;
    $self->{ 'limits' } = shift;
    return;
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
