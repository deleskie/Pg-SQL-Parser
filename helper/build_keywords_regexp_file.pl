#!/usr/bin/env perl
use v5.12;
use strict;
use warnings;
use warnings qw( FATAL utf8 );
use utf8;
use open qw( :std :utf8 );
use autodie;

use Carp;
use English qw( -no_match_vars );
use Regexp::List;

open my $fh, '<', 'keywords';
my @words = grep { /^\S/ } <$fh>;
close $fh;

s/\s.*//s for @words;

my $re = Regexp::List->new()->set( 'modifiers' => 'i' )->list2re( @words );

while ( my $l = <DATA> ) {
    $l =~ s{__REGEXP__}{$re}g;
    print $l;
}

exit;

__DATA__
package Pg::SQL::Parser::Lexer::Keywords;
use v5.12;
use strict;
use warnings;
use warnings qw( FATAL utf8 );
use utf8;

=head1 NAME

Pg::SQL::Parser::Lexer::Keywords - Module for lexing SQL statements

=cut

=head1 SYNOPSIS

This module is generated, not written - it is done using
build_keywords_regexp_file.pl script in helper directory in Pg::SQL::Parser
distribution.

It's purpose is to be used by Pg::SQL::Parser::Lexer to speed up keyword
matching.

=cut 

sub re {
    return qr{__REGEXP__};
}

1;    # End of Pg::SQL::Parser::Lexer::Keywords
