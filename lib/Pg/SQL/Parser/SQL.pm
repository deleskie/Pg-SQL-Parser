########################################################################################
#
#    This file was generated using Parse::Eyapp version 1.182.
#
# (c) Parse::Yapp Copyright 1998-2001 Francois Desarmenien.
# (c) Parse::Eyapp Copyright 2006-2008 Casiano Rodriguez-Leon. Universidad de La Laguna.
#        Don't edit this file, use source file 'SQL.eyp' instead.
#
#             ANY CHANGE MADE HERE WILL BE LOST !
#
########################################################################################
package Pg::SQL::Parser::SQL;
use strict;

push @Pg::SQL::Parser::SQL::ISA, 'Parse::Eyapp::Driver';




BEGIN {
  # This strange way to load the modules is to guarantee compatibility when
  # using several standalone and non-standalone Eyapp parsers

  require Parse::Eyapp::Driver unless Parse::Eyapp::Driver->can('YYParse');
  require Parse::Eyapp::Node unless Parse::Eyapp::Node->can('hnew'); 
}
  

sub unexpendedInput { defined($_) ? substr($_, (defined(pos $_) ? pos $_ : 0)) : '' }



# Default lexical analyzer
our $LEX = sub {
    my $self = shift;
    my $pos;

    for (${$self->input}) {
      

      m{\G(\s+)}gc and $self->tokenline($1 =~ tr{\n}{});

      m{\G(IDENTIFIER|SELECT|\;)}gc and return ($1, $1);



      return ('', undef) if ($_ eq '') || (defined(pos($_)) && (pos($_) >= length($_)));
      /\G\s*(\S+)/;
      my $near = substr($1,0,10); 

      return($near, $near);

     # die( "Error inside the lexical analyzer near '". $near
     #     ."'. Line: ".$self->line()
     #     .". File: '".$self->YYFilename()."'. No match found.\n");
    }
  }
;


#line 61 ../lib/Pg/SQL/Parser/SQL.pm

my $warnmessage =<< "EOFWARN";
Warning!: Did you changed the \@Pg::SQL::Parser::SQL::ISA variable inside the header section of the eyapp program?
EOFWARN

sub new {
  my($class)=shift;
  ref($class) and $class=ref($class);

  warn $warnmessage unless __PACKAGE__->isa('Parse::Eyapp::Driver'); 
  my($self)=$class->SUPER::new( 
    yyversion => '1.182',
    yyGRAMMAR  =>
[#[productionNameAndLabel => lhs, [ rhs], bypass]]
  [ '_SUPERSTART' => '$start', [ 'statements', '$end' ], 0 ],
  [ 'statements_1' => 'statements', [ 'statement' ], 0 ],
  [ 'statements_2' => 'statements', [ 'statements', ';', 'statement' ], 0 ],
  [ 'statement_3' => 'statement', [ 'select_stmt' ], 0 ],
  [ 'select_stmt_4' => 'select_stmt', [ 'SELECT', 'IDENTIFIER' ], 0 ],
],
    yyLABELS  =>
{
  '_SUPERSTART' => 0,
  'statements_1' => 1,
  'statements_2' => 2,
  'statement_3' => 3,
  'select_stmt_4' => 4,
},
    yyTERMS  =>
{ '' => { ISSEMANTIC => 0 },
	';' => { ISSEMANTIC => 0 },
	IDENTIFIER => { ISSEMANTIC => 1 },
	SELECT => { ISSEMANTIC => 1 },
	error => { ISSEMANTIC => 0 },
},
    yyFILENAME  => 'SQL.eyp',
    yystates =>
[
	{#State 0
		ACTIONS => {
			'SELECT' => 4
		},
		GOTOS => {
			'statements' => 2,
			'select_stmt' => 1,
			'statement' => 3
		}
	},
	{#State 1
		DEFAULT => -3
	},
	{#State 2
		ACTIONS => {
			'' => 5,
			";" => 6
		}
	},
	{#State 3
		DEFAULT => -1
	},
	{#State 4
		ACTIONS => {
			'IDENTIFIER' => 7
		}
	},
	{#State 5
		DEFAULT => 0
	},
	{#State 6
		ACTIONS => {
			'SELECT' => 4
		},
		GOTOS => {
			'select_stmt' => 1,
			'statement' => 8
		}
	},
	{#State 7
		DEFAULT => -4
	},
	{#State 8
		DEFAULT => -2
	}
],
    yyrules  =>
[
	[#Rule _SUPERSTART
		 '$start', 2, undef
#line 150 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_1
		 'statements', 1,
sub {
#line 4 "SQL.eyp"
 [ $_[1] ] }
#line 157 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_2
		 'statements', 3,
sub {
#line 5 "SQL.eyp"
 push @{ $_[1] }, $_[2]; $_[1] }
#line 164 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statement_3
		 'statement', 1,
sub {
#line 8 "SQL.eyp"
 $_[1] }
#line 171 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule select_stmt_4
		 'select_stmt', 2,
sub {
#line 11 "SQL.eyp"
 { 'type' => 'query', 'subtype' => 'SELECT', result => [ $_[2] ] } }
#line 178 ../lib/Pg/SQL/Parser/SQL.pm
	]
],
#line 181 ../lib/Pg/SQL/Parser/SQL.pm
    yybypass       => 0,
    yybuildingtree => 0,
    yyprefix       => '',
    yyaccessors    => {
   },
    yyconflicthandlers => {}
,
    yystateconflict => {  },
    @_,
  );
  bless($self,$class);

  $self->make_node_classes('TERMINAL', '_OPTIONAL', '_STAR_LIST', '_PLUS_LIST', 
         '_SUPERSTART', 
         'statements_1', 
         'statements_2', 
         'statement_3', 
         'select_stmt_4', );
  $self;
}

#line 14 "SQL.eyp"


# vim: set ft=lex:


=for None

=cut


#line 214 ../lib/Pg/SQL/Parser/SQL.pm



1;
