package Pg::SQL::Parser::Element;
use v5.12;
use strict;
use warnings;
use warnings qw( FATAL utf8 );
use utf8;
use Carp;
use English qw( -no_match_vars );
use Clone;

=head1 NAME

Pg::SQL::Parser::Element - Module representing element in SQL query

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

our $AUTOLOAD;

=head1 SYNOPSIS

Pg::SQL::Parser::Element (more specificallty its descendant classes) represent parts of SQL query.

Some elements are very small - like literal value, or column name, but some
are more complex - like whole SELECT statement.

Objects of this classes (descendants of Pg::SQL::Parser::Element) are
created in parser, and generally you don't need to worry about it in any
case.

=head1 METHODS

=head2 new()

Object constructor, doesn't get any arguments

=cut

sub new {
    my $class = shift;
    if ( 0 == scalar @_ ) {
        return bless {}, $class;
    }
    my $self = { @_ };
    return bless $self, $class;
}

=head2 make()

Helper constructor for subclasses.

It takes single argument - being name of class to be created, and it returns created object.

For example:

    my $maker = Pg::SQL::Parser::Element->new();
    my $select = $maker->make( 'Select' );
    my $value = $maker->make( 'Literal_Value' );

=cut

sub make {
    my $self         = shift;
    my $class_suffix = shift;

    $class_suffix =~ s/[^a-zA-Z]+/_/g;
    $class_suffix =~ s/^_//;
    $class_suffix =~ s/_$//;
    $class_suffix =~ s/([a-zA-Z]+)/\u\L$1/g;

    my $full_class = "Pg::SQL::Parser::Element::" . $class_suffix;
    my $filename   = $full_class . '.pm';
    $filename =~ s{::}{/}g;

    unless ( $INC{ $filename } ) {
        require $filename;
    }

    my $new_object = $full_class->new( @_ );
    return $new_object;
}

=head2 dump_struct()

Returns whole element (and all of its subelements) as simple structures, and not objects.

=cut

sub dump_struct {
    my $self = shift;
    my $ret  = {};
    $ret->{ ':type' } = ref $self;
    $ret->{ ':type' } =~ s{^Pg::SQL::Parser::Element::}{};

    $self->_struct_copy( $self, $ret, 'HASH' );
    return $ret;
}

=head2 _struct_copy()

Helper function to handle recursive copying of structures.

=cut

sub _struct_copy {
    my $self = shift;
    my $from = shift;
    my $to   = shift;
    my $type = shift;

    if ( 'HASH' eq $type ) {
        for my $key ( keys %{ $from } ) {
            $to->{ $key } = $self->_element_copy( $from->{ $key } );
        }
    }
    elsif ( 'ARRAY' eq $type ) {
        push @{ $to }, map { $self->_element_copy( $_ ) } @{ $from };
    }
    else {
        croak( 'Unknown type of struct: ' . $type );
    }
    return;
}

=head2 _element_copy()

Helper function to handle recursive copying of structures - handles single element.

=cut

sub _element_copy {
    my $self    = shift;
    my $element = shift;
    my $copy;
    if ( '' eq ref $element ) {
        $copy = $element;
    }
    elsif ( 'HASH' eq ref $element ) {
        $copy = {};
        $self->_struct_copy( $element, $copy, 'HASH' );
    }
    elsif ( 'ARRAY' eq ref $element ) {
        $copy = [];
        $self->_struct_copy( $element, $copy, 'ARRAY' );
    }
    elsif ( ref( $element ) =~ m{\APg::SQL::Parser::Element} ) {
        $copy = $element->dump_struct();
    }
    else {
        croak( "Don't know how to copy object " . ref( $element ) );
    }
    return $copy;
}

=head2 AUTOLOAD

Helps using specific classes by auto-making base accessors

=cut

sub AUTOLOAD {
    my $self   = shift;
    my $called = $AUTOLOAD;
    $called =~ s/.*:://;
    if ( 0 < scalar @_ ) {
        $self->{ $called } = $_[ 0 ];
    }
    return $self->{ $called };
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
