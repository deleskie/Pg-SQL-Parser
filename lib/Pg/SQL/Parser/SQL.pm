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

#line 1 "SQL.eyp"

    use Pg::SQL::Parser::Element;
    my $factory = Pg::SQL::Parser::Element->new();


# Default lexical analyzer
our $LEX = sub {
    my $self = shift;
    my $pos;

    for (${$self->input}) {
      

      m{\G(\s+)}gc and $self->tokenline($1 =~ tr{\n}{});

      m{\G(XBITSTRING_CONSTANT|BITSTRING_CONSTANT|UQUOTED_IDENTIFIER|QUOTED_IDENTIFIER|USTRING_CONSTANT|ESTRING_CONSTANT|NUMERIC_CONSTANT|INTEGER_CONSTANT|STRING_CONSTANT|IDENTIFIER|SELECT|AS|\;|\,)}gc and return ($1, $1);



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


#line 65 ../lib/Pg/SQL/Parser/SQL.pm

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
  [ '_SUPERSTART' => '$start', [ 'top', '$end' ], 0 ],
  [ 'top_1' => 'top', [ 'statements' ], 0 ],
  [ 'statements_2' => 'statements', [ 'statement' ], 0 ],
  [ 'statements_3' => 'statements', [ 'statements', ';', 'statement' ], 0 ],
  [ 'statements_4' => 'statements', [ 'statements', ';' ], 0 ],
  [ 'statement_5' => 'statement', [ 'select_stmt' ], 0 ],
  [ 'select_stmt_6' => 'select_stmt', [ 'SELECT', 'result_columns' ], 0 ],
  [ 'result_columns_7' => 'result_columns', [ 'result_column' ], 0 ],
  [ 'result_columns_8' => 'result_columns', [ 'result_columns', ',', 'result_column' ], 0 ],
  [ 'result_column_9' => 'result_column', [ 'expr' ], 0 ],
  [ 'result_column_10' => 'result_column', [ 'expr', 'AS', 'identifier' ], 0 ],
  [ 'expr_11' => 'expr', [ 'literal_value' ], 0 ],
  [ 'literal_value_12' => 'literal_value', [ 'STRING_CONSTANT' ], 0 ],
  [ 'literal_value_13' => 'literal_value', [ 'USTRING_CONSTANT' ], 0 ],
  [ 'literal_value_14' => 'literal_value', [ 'ESTRING_CONSTANT' ], 0 ],
  [ 'literal_value_15' => 'literal_value', [ 'BITSTRING_CONSTANT' ], 0 ],
  [ 'literal_value_16' => 'literal_value', [ 'XBITSTRING_CONSTANT' ], 0 ],
  [ 'literal_value_17' => 'literal_value', [ 'NUMERIC_CONSTANT' ], 0 ],
  [ 'literal_value_18' => 'literal_value', [ 'INTEGER_CONSTANT' ], 0 ],
  [ 'identifier_19' => 'identifier', [ 'QUOTED_IDENTIFIER' ], 0 ],
  [ 'identifier_20' => 'identifier', [ 'UQUOTED_IDENTIFIER' ], 0 ],
  [ 'identifier_21' => 'identifier', [ 'IDENTIFIER' ], 0 ],
],
    yyLABELS  =>
{
  '_SUPERSTART' => 0,
  'top_1' => 1,
  'statements_2' => 2,
  'statements_3' => 3,
  'statements_4' => 4,
  'statement_5' => 5,
  'select_stmt_6' => 6,
  'result_columns_7' => 7,
  'result_columns_8' => 8,
  'result_column_9' => 9,
  'result_column_10' => 10,
  'expr_11' => 11,
  'literal_value_12' => 12,
  'literal_value_13' => 13,
  'literal_value_14' => 14,
  'literal_value_15' => 15,
  'literal_value_16' => 16,
  'literal_value_17' => 17,
  'literal_value_18' => 18,
  'identifier_19' => 19,
  'identifier_20' => 20,
  'identifier_21' => 21,
},
    yyTERMS  =>
{ '' => { ISSEMANTIC => 0 },
	',' => { ISSEMANTIC => 0 },
	';' => { ISSEMANTIC => 0 },
	AS => { ISSEMANTIC => 1 },
	BITSTRING_CONSTANT => { ISSEMANTIC => 1 },
	ESTRING_CONSTANT => { ISSEMANTIC => 1 },
	IDENTIFIER => { ISSEMANTIC => 1 },
	INTEGER_CONSTANT => { ISSEMANTIC => 1 },
	NUMERIC_CONSTANT => { ISSEMANTIC => 1 },
	QUOTED_IDENTIFIER => { ISSEMANTIC => 1 },
	SELECT => { ISSEMANTIC => 1 },
	STRING_CONSTANT => { ISSEMANTIC => 1 },
	UQUOTED_IDENTIFIER => { ISSEMANTIC => 1 },
	USTRING_CONSTANT => { ISSEMANTIC => 1 },
	XBITSTRING_CONSTANT => { ISSEMANTIC => 1 },
	error => { ISSEMANTIC => 0 },
},
    yyFILENAME  => 'SQL.eyp',
    yystates =>
[
	{#State 0
		ACTIONS => {
			'SELECT' => 5
		},
		GOTOS => {
			'statements' => 2,
			'select_stmt' => 1,
			'top' => 4,
			'statement' => 3
		}
	},
	{#State 1
		DEFAULT => -5
	},
	{#State 2
		ACTIONS => {
			";" => 6
		},
		DEFAULT => -1
	},
	{#State 3
		DEFAULT => -2
	},
	{#State 4
		ACTIONS => {
			'' => 7
		}
	},
	{#State 5
		ACTIONS => {
			'USTRING_CONSTANT' => 13,
			'STRING_CONSTANT' => 12,
			'ESTRING_CONSTANT' => 16,
			'NUMERIC_CONSTANT' => 14,
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'INTEGER_CONSTANT' => 18
		},
		GOTOS => {
			'literal_value' => 11,
			'expr' => 15,
			'result_column' => 17,
			'result_columns' => 10
		}
	},
	{#State 6
		ACTIONS => {
			'SELECT' => 5
		},
		DEFAULT => -4,
		GOTOS => {
			'select_stmt' => 1,
			'statement' => 19
		}
	},
	{#State 7
		DEFAULT => 0
	},
	{#State 8
		DEFAULT => -16
	},
	{#State 9
		DEFAULT => -15
	},
	{#State 10
		ACTIONS => {
			"," => 20
		},
		DEFAULT => -6
	},
	{#State 11
		DEFAULT => -11
	},
	{#State 12
		DEFAULT => -12
	},
	{#State 13
		DEFAULT => -13
	},
	{#State 14
		DEFAULT => -17
	},
	{#State 15
		ACTIONS => {
			'AS' => 21
		},
		DEFAULT => -9
	},
	{#State 16
		DEFAULT => -14
	},
	{#State 17
		DEFAULT => -7
	},
	{#State 18
		DEFAULT => -18
	},
	{#State 19
		DEFAULT => -3
	},
	{#State 20
		ACTIONS => {
			'STRING_CONSTANT' => 12,
			'USTRING_CONSTANT' => 13,
			'ESTRING_CONSTANT' => 16,
			'NUMERIC_CONSTANT' => 14,
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'INTEGER_CONSTANT' => 18
		},
		GOTOS => {
			'literal_value' => 11,
			'expr' => 15,
			'result_column' => 22
		}
	},
	{#State 21
		ACTIONS => {
			'QUOTED_IDENTIFIER' => 24,
			'IDENTIFIER' => 23,
			'UQUOTED_IDENTIFIER' => 26
		},
		GOTOS => {
			'identifier' => 25
		}
	},
	{#State 22
		DEFAULT => -8
	},
	{#State 23
		DEFAULT => -21
	},
	{#State 24
		DEFAULT => -19
	},
	{#State 25
		DEFAULT => -10
	},
	{#State 26
		DEFAULT => -20
	}
],
    yyrules  =>
[
	[#Rule _SUPERSTART
		 '$start', 2, undef
#line 295 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule top_1
		 'top', 1,
sub {
#line 8 "SQL.eyp"
 $_[1] }
#line 302 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_2
		 'statements', 1,
sub {
#line 11 "SQL.eyp"
 [ $_[1] ] }
#line 309 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_3
		 'statements', 3,
sub {
#line 12 "SQL.eyp"
 push @{ $_[1] }, $_[3]; $_[1] }
#line 316 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_4
		 'statements', 2,
sub {
#line 13 "SQL.eyp"
 $_[1] }
#line 323 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statement_5
		 'statement', 1,
sub {
#line 16 "SQL.eyp"
 $_[1] }
#line 330 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule select_stmt_6
		 'select_stmt', 2,
sub {
#line 19 "SQL.eyp"

                                        my $select = $factory->make( 'Select' );
                                        for my $rc ( @{ $_[2] } ) {
                                            my $res = $factory->make('Result_Column');
                                            $res->value( @{ $rc } );
                                            $select->add_result( $res )
                                        }
                                        $select
                                    }
#line 345 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_columns_7
		 'result_columns', 1,
sub {
#line 30 "SQL.eyp"
 [ $_[1] ] }
#line 352 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_columns_8
		 'result_columns', 3,
sub {
#line 31 "SQL.eyp"
 push @{ $_[1] }, $_[3]; $_[1] }
#line 359 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_column_9
		 'result_column', 1,
sub {
#line 34 "SQL.eyp"
 [ $_[1], undef ] }
#line 366 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_column_10
		 'result_column', 3,
sub {
#line 35 "SQL.eyp"
 [ $_[1], $_[3] ] }
#line 373 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_11
		 'expr', 1,
sub {
#line 38 "SQL.eyp"
 $_[1] }
#line 380 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_12
		 'literal_value', 1,
sub {
#line 41 "SQL.eyp"
 my $val = $factory->make( 'Literal_Value' ); $val->value( 'STRING_CONSTANT', $_[1] ); $val }
#line 387 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_13
		 'literal_value', 1,
sub {
#line 42 "SQL.eyp"
 my $val = $factory->make( 'Literal_Value' ); $val->value( 'USTRING_CONSTANT', $_[1] ); $val }
#line 394 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_14
		 'literal_value', 1,
sub {
#line 43 "SQL.eyp"
 my $val = $factory->make( 'Literal_Value' ); $val->value( 'ESTRING_CONSTANT', $_[1] ); $val }
#line 401 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_15
		 'literal_value', 1,
sub {
#line 44 "SQL.eyp"
 my $val = $factory->make( 'Literal_Value' ); $val->value( 'BITSTRING_CONSTANT', $_[1] ); $val }
#line 408 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_16
		 'literal_value', 1,
sub {
#line 45 "SQL.eyp"
 my $val = $factory->make( 'Literal_Value' ); $val->value( 'XBITSTRING_CONSTANT', $_[1] ); $val }
#line 415 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_17
		 'literal_value', 1,
sub {
#line 46 "SQL.eyp"
 my $val = $factory->make( 'Literal_Value' ); $val->value( 'NUMERIC_CONSTANT', $_[1] ); $val }
#line 422 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_18
		 'literal_value', 1,
sub {
#line 47 "SQL.eyp"
 my $val = $factory->make( 'Literal_Value' ); $val->value( 'INTEGER_CONSTANT', $_[1] ); $val }
#line 429 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_19
		 'identifier', 1,
sub {
#line 50 "SQL.eyp"
 $_[1] }
#line 436 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_20
		 'identifier', 1,
sub {
#line 51 "SQL.eyp"
 $_[1] }
#line 443 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_21
		 'identifier', 1,
sub {
#line 52 "SQL.eyp"
 $_[1] }
#line 450 ../lib/Pg/SQL/Parser/SQL.pm
	]
],
#line 453 ../lib/Pg/SQL/Parser/SQL.pm
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
         'top_1', 
         'statements_2', 
         'statements_3', 
         'statements_4', 
         'statement_5', 
         'select_stmt_6', 
         'result_columns_7', 
         'result_columns_8', 
         'result_column_9', 
         'result_column_10', 
         'expr_11', 
         'literal_value_12', 
         'literal_value_13', 
         'literal_value_14', 
         'literal_value_15', 
         'literal_value_16', 
         'literal_value_17', 
         'literal_value_18', 
         'identifier_19', 
         'identifier_20', 
         'identifier_21', );
  $self;
}

#line 55 "SQL.eyp"


# vim: set ft=lex:


=for None

=cut


#line 503 ../lib/Pg/SQL/Parser/SQL.pm



1;
