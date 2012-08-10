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

      m{\G(XBITSTRING_CONSTANT|BITSTRING_CONSTANT|UQUOTED_IDENTIFIER|QUOTED_IDENTIFIER|USTRING_CONSTANT|NUMERIC_CONSTANT|ESTRING_CONSTANT|INTEGER_CONSTANT|STRING_CONSTANT|IDENTIFIER|OPERATOR|BETWEEN|SELECT|ILIKE|LIKE|AND|AS|\-|\<|\+|\;|\%|\,|\^|\*|\)|\/|\=|\(|\>)}gc and return ($1, $1);



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
  [ 'expr_11' => 'expr', [ 'expr_simple' ], 0 ],
  [ 'expr_12' => 'expr', [ 'expr_simple', 'BETWEEN', 'expr', 'AND', 'expr' ], 0 ],
  [ 'expr_13' => 'expr', [ 'expr', 'OPERATOR' ], 0 ],
  [ 'expr_14' => 'expr', [ 'OPERATOR', 'expr' ], 0 ],
  [ 'expr_15' => 'expr', [ 'expr', '+', 'expr' ], 0 ],
  [ 'expr_16' => 'expr', [ 'expr', '-', 'expr' ], 0 ],
  [ 'expr_17' => 'expr', [ 'expr', '*', 'expr' ], 0 ],
  [ 'expr_18' => 'expr', [ 'expr', '%', 'expr' ], 0 ],
  [ 'expr_19' => 'expr', [ 'expr', '/', 'expr' ], 0 ],
  [ 'expr_20' => 'expr', [ 'expr', '<', 'expr' ], 0 ],
  [ 'expr_21' => 'expr', [ 'expr', '>', 'expr' ], 0 ],
  [ 'expr_22' => 'expr', [ 'expr', '=', 'expr' ], 0 ],
  [ 'expr_23' => 'expr', [ 'expr', '^', 'expr' ], 0 ],
  [ 'expr_24' => 'expr', [ 'expr', 'LIKE', 'expr' ], 0 ],
  [ 'expr_25' => 'expr', [ 'expr', 'ILIKE', 'expr' ], 0 ],
  [ 'expr_26' => 'expr', [ 'expr', 'OPERATOR', 'expr' ], 0 ],
  [ 'expr_simple_27' => 'expr_simple', [ 'literal_value' ], 0 ],
  [ 'expr_simple_28' => 'expr_simple', [ '(', 'expr', ')' ], 0 ],
  [ 'literal_value_29' => 'literal_value', [ 'STRING_CONSTANT' ], 0 ],
  [ 'literal_value_30' => 'literal_value', [ 'USTRING_CONSTANT' ], 0 ],
  [ 'literal_value_31' => 'literal_value', [ 'ESTRING_CONSTANT' ], 0 ],
  [ 'literal_value_32' => 'literal_value', [ 'BITSTRING_CONSTANT' ], 0 ],
  [ 'literal_value_33' => 'literal_value', [ 'XBITSTRING_CONSTANT' ], 0 ],
  [ 'literal_value_34' => 'literal_value', [ 'NUMERIC_CONSTANT' ], 0 ],
  [ 'literal_value_35' => 'literal_value', [ 'INTEGER_CONSTANT' ], 0 ],
  [ 'identifier_36' => 'identifier', [ 'QUOTED_IDENTIFIER' ], 0 ],
  [ 'identifier_37' => 'identifier', [ 'UQUOTED_IDENTIFIER' ], 0 ],
  [ 'identifier_38' => 'identifier', [ 'IDENTIFIER' ], 0 ],
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
  'expr_12' => 12,
  'expr_13' => 13,
  'expr_14' => 14,
  'expr_15' => 15,
  'expr_16' => 16,
  'expr_17' => 17,
  'expr_18' => 18,
  'expr_19' => 19,
  'expr_20' => 20,
  'expr_21' => 21,
  'expr_22' => 22,
  'expr_23' => 23,
  'expr_24' => 24,
  'expr_25' => 25,
  'expr_26' => 26,
  'expr_simple_27' => 27,
  'expr_simple_28' => 28,
  'literal_value_29' => 29,
  'literal_value_30' => 30,
  'literal_value_31' => 31,
  'literal_value_32' => 32,
  'literal_value_33' => 33,
  'literal_value_34' => 34,
  'literal_value_35' => 35,
  'identifier_36' => 36,
  'identifier_37' => 37,
  'identifier_38' => 38,
},
    yyTERMS  =>
{ '' => { ISSEMANTIC => 0 },
	'%' => { ISSEMANTIC => 0 },
	'(' => { ISSEMANTIC => 0 },
	')' => { ISSEMANTIC => 0 },
	'*' => { ISSEMANTIC => 0 },
	'+' => { ISSEMANTIC => 0 },
	',' => { ISSEMANTIC => 0 },
	'-' => { ISSEMANTIC => 0 },
	'/' => { ISSEMANTIC => 0 },
	';' => { ISSEMANTIC => 0 },
	'<' => { ISSEMANTIC => 0 },
	'=' => { ISSEMANTIC => 0 },
	'>' => { ISSEMANTIC => 0 },
	'^' => { ISSEMANTIC => 0 },
	AND => { ISSEMANTIC => 1 },
	AS => { ISSEMANTIC => 1 },
	BETWEEN => { ISSEMANTIC => 1 },
	BITSTRING_CONSTANT => { ISSEMANTIC => 1 },
	ESTRING_CONSTANT => { ISSEMANTIC => 1 },
	IDENTIFIER => { ISSEMANTIC => 1 },
	ILIKE => { ISSEMANTIC => 1 },
	INTEGER_CONSTANT => { ISSEMANTIC => 1 },
	LIKE => { ISSEMANTIC => 1 },
	NUMERIC_CONSTANT => { ISSEMANTIC => 1 },
	OPERATOR => { ISSEMANTIC => 1 },
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
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'OPERATOR' => 10,
			'USTRING_CONSTANT' => 13,
			'STRING_CONSTANT' => 15,
			"(" => 16,
			'NUMERIC_CONSTANT' => 17,
			'ESTRING_CONSTANT' => 18,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 14,
			'expr' => 19,
			'result_column' => 20,
			'result_columns' => 12,
			'expr_simple' => 11
		}
	},
	{#State 6
		ACTIONS => {
			'SELECT' => 5
		},
		DEFAULT => -4,
		GOTOS => {
			'select_stmt' => 1,
			'statement' => 22
		}
	},
	{#State 7
		DEFAULT => 0
	},
	{#State 8
		DEFAULT => -33
	},
	{#State 9
		DEFAULT => -32
	},
	{#State 10
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'OPERATOR' => 10,
			'USTRING_CONSTANT' => 13,
			'STRING_CONSTANT' => 15,
			"(" => 16,
			'NUMERIC_CONSTANT' => 17,
			'ESTRING_CONSTANT' => 18,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 14,
			'expr' => 23,
			'expr_simple' => 11
		}
	},
	{#State 11
		ACTIONS => {
			'BETWEEN' => 24
		},
		DEFAULT => -11
	},
	{#State 12
		ACTIONS => {
			"," => 25
		},
		DEFAULT => -6
	},
	{#State 13
		DEFAULT => -30
	},
	{#State 14
		DEFAULT => -27
	},
	{#State 15
		DEFAULT => -29
	},
	{#State 16
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'OPERATOR' => 10,
			'USTRING_CONSTANT' => 13,
			'STRING_CONSTANT' => 15,
			"(" => 16,
			'NUMERIC_CONSTANT' => 17,
			'ESTRING_CONSTANT' => 18,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 14,
			'expr' => 26,
			'expr_simple' => 11
		}
	},
	{#State 17
		DEFAULT => -34
	},
	{#State 18
		DEFAULT => -31
	},
	{#State 19
		ACTIONS => {
			"-" => 27,
			"<" => 29,
			"+" => 30,
			'ILIKE' => 32,
			"%" => 34,
			"^" => 36,
			"*" => 37,
			'AS' => 38,
			'LIKE' => 28,
			'OPERATOR' => 31,
			"/" => 33,
			"=" => 35,
			">" => 39
		},
		DEFAULT => -9
	},
	{#State 20
		DEFAULT => -7
	},
	{#State 21
		DEFAULT => -35
	},
	{#State 22
		DEFAULT => -3
	},
	{#State 23
		ACTIONS => {
			"-" => 27,
			"+" => 30,
			"%" => 34,
			"^" => 36,
			"*" => 37,
			"/" => 33
		},
		DEFAULT => -14
	},
	{#State 24
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'OPERATOR' => 10,
			'USTRING_CONSTANT' => 13,
			'STRING_CONSTANT' => 15,
			"(" => 16,
			'NUMERIC_CONSTANT' => 17,
			'ESTRING_CONSTANT' => 18,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 14,
			'expr' => 40,
			'expr_simple' => 11
		}
	},
	{#State 25
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'OPERATOR' => 10,
			'USTRING_CONSTANT' => 13,
			'STRING_CONSTANT' => 15,
			"(" => 16,
			'NUMERIC_CONSTANT' => 17,
			'ESTRING_CONSTANT' => 18,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 14,
			'expr' => 19,
			'result_column' => 41,
			'expr_simple' => 11
		}
	},
	{#State 26
		ACTIONS => {
			"-" => 27,
			'LIKE' => 28,
			"<" => 29,
			'OPERATOR' => 31,
			"+" => 30,
			'ILIKE' => 32,
			"%" => 34,
			"/" => 33,
			"=" => 35,
			"^" => 36,
			"*" => 37,
			")" => 42,
			">" => 39
		}
	},
	{#State 27
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'OPERATOR' => 10,
			'USTRING_CONSTANT' => 13,
			'STRING_CONSTANT' => 15,
			"(" => 16,
			'NUMERIC_CONSTANT' => 17,
			'ESTRING_CONSTANT' => 18,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 14,
			'expr' => 43,
			'expr_simple' => 11
		}
	},
	{#State 28
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'OPERATOR' => 10,
			'USTRING_CONSTANT' => 13,
			'STRING_CONSTANT' => 15,
			"(" => 16,
			'NUMERIC_CONSTANT' => 17,
			'ESTRING_CONSTANT' => 18,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 14,
			'expr' => 44,
			'expr_simple' => 11
		}
	},
	{#State 29
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'OPERATOR' => 10,
			'USTRING_CONSTANT' => 13,
			'STRING_CONSTANT' => 15,
			"(" => 16,
			'NUMERIC_CONSTANT' => 17,
			'ESTRING_CONSTANT' => 18,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 14,
			'expr' => 45,
			'expr_simple' => 11
		}
	},
	{#State 30
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'OPERATOR' => 10,
			'USTRING_CONSTANT' => 13,
			'STRING_CONSTANT' => 15,
			"(" => 16,
			'NUMERIC_CONSTANT' => 17,
			'ESTRING_CONSTANT' => 18,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 14,
			'expr' => 46,
			'expr_simple' => 11
		}
	},
	{#State 31
		ACTIONS => {
			'USTRING_CONSTANT' => 13,
			'STRING_CONSTANT' => 15,
			'NUMERIC_CONSTANT' => 17,
			'XBITSTRING_CONSTANT' => 8,
			'BITSTRING_CONSTANT' => 9,
			"(" => 16,
			'ESTRING_CONSTANT' => 18,
			'INTEGER_CONSTANT' => 21
		},
		DEFAULT => -13,
		GOTOS => {
			'literal_value' => 14,
			'expr' => 47,
			'expr_simple' => 11
		}
	},
	{#State 32
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'OPERATOR' => 10,
			'USTRING_CONSTANT' => 13,
			'STRING_CONSTANT' => 15,
			"(" => 16,
			'NUMERIC_CONSTANT' => 17,
			'ESTRING_CONSTANT' => 18,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 14,
			'expr' => 48,
			'expr_simple' => 11
		}
	},
	{#State 33
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'OPERATOR' => 10,
			'USTRING_CONSTANT' => 13,
			'STRING_CONSTANT' => 15,
			"(" => 16,
			'NUMERIC_CONSTANT' => 17,
			'ESTRING_CONSTANT' => 18,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 14,
			'expr' => 49,
			'expr_simple' => 11
		}
	},
	{#State 34
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'OPERATOR' => 10,
			'USTRING_CONSTANT' => 13,
			'STRING_CONSTANT' => 15,
			"(" => 16,
			'NUMERIC_CONSTANT' => 17,
			'ESTRING_CONSTANT' => 18,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 14,
			'expr' => 50,
			'expr_simple' => 11
		}
	},
	{#State 35
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'OPERATOR' => 10,
			'USTRING_CONSTANT' => 13,
			'STRING_CONSTANT' => 15,
			"(" => 16,
			'NUMERIC_CONSTANT' => 17,
			'ESTRING_CONSTANT' => 18,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 14,
			'expr' => 51,
			'expr_simple' => 11
		}
	},
	{#State 36
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'OPERATOR' => 10,
			'USTRING_CONSTANT' => 13,
			'STRING_CONSTANT' => 15,
			"(" => 16,
			'NUMERIC_CONSTANT' => 17,
			'ESTRING_CONSTANT' => 18,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 14,
			'expr' => 52,
			'expr_simple' => 11
		}
	},
	{#State 37
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'OPERATOR' => 10,
			'USTRING_CONSTANT' => 13,
			'STRING_CONSTANT' => 15,
			"(" => 16,
			'NUMERIC_CONSTANT' => 17,
			'ESTRING_CONSTANT' => 18,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 14,
			'expr' => 53,
			'expr_simple' => 11
		}
	},
	{#State 38
		ACTIONS => {
			'QUOTED_IDENTIFIER' => 55,
			'IDENTIFIER' => 54,
			'UQUOTED_IDENTIFIER' => 57
		},
		GOTOS => {
			'identifier' => 56
		}
	},
	{#State 39
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'OPERATOR' => 10,
			'USTRING_CONSTANT' => 13,
			'STRING_CONSTANT' => 15,
			"(" => 16,
			'NUMERIC_CONSTANT' => 17,
			'ESTRING_CONSTANT' => 18,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 14,
			'expr' => 58,
			'expr_simple' => 11
		}
	},
	{#State 40
		ACTIONS => {
			"-" => 27,
			'LIKE' => 28,
			"<" => 29,
			'OPERATOR' => 31,
			"+" => 30,
			'ILIKE' => 32,
			"%" => 34,
			"/" => 33,
			"=" => 35,
			'AND' => 59,
			"^" => 36,
			"*" => 37,
			">" => 39
		}
	},
	{#State 41
		DEFAULT => -8
	},
	{#State 42
		DEFAULT => -28
	},
	{#State 43
		ACTIONS => {
			"%" => 34,
			"^" => 36,
			"*" => 37,
			"/" => 33
		},
		DEFAULT => -16
	},
	{#State 44
		ACTIONS => {
			"-" => 27,
			"+" => 30,
			"%" => 34,
			"^" => 36,
			"*" => 37,
			'OPERATOR' => 31,
			"/" => 33
		},
		DEFAULT => -24
	},
	{#State 45
		ACTIONS => {
			"-" => 27,
			"+" => 30,
			'ILIKE' => 32,
			"%" => 34,
			"^" => 36,
			"*" => 37,
			'LIKE' => 28,
			'OPERATOR' => 31,
			"/" => 33
		},
		DEFAULT => -20
	},
	{#State 46
		ACTIONS => {
			"%" => 34,
			"^" => 36,
			"*" => 37,
			"/" => 33
		},
		DEFAULT => -15
	},
	{#State 47
		ACTIONS => {
			"-" => 27,
			"+" => 30,
			"%" => 34,
			"^" => 36,
			"*" => 37,
			"/" => 33
		},
		DEFAULT => -26
	},
	{#State 48
		ACTIONS => {
			"-" => 27,
			"+" => 30,
			"%" => 34,
			"^" => 36,
			"*" => 37,
			'OPERATOR' => 31,
			"/" => 33
		},
		DEFAULT => -25
	},
	{#State 49
		ACTIONS => {
			"^" => 36
		},
		DEFAULT => -19
	},
	{#State 50
		ACTIONS => {
			"^" => 36
		},
		DEFAULT => -18
	},
	{#State 51
		ACTIONS => {
			"-" => 27,
			"<" => 29,
			"+" => 30,
			'ILIKE' => 32,
			"%" => 34,
			"^" => 36,
			"*" => 37,
			'LIKE' => 28,
			'OPERATOR' => 31,
			"/" => 33,
			"=" => 35,
			">" => 39
		},
		DEFAULT => -22
	},
	{#State 52
		DEFAULT => -23
	},
	{#State 53
		ACTIONS => {
			"^" => 36
		},
		DEFAULT => -17
	},
	{#State 54
		DEFAULT => -38
	},
	{#State 55
		DEFAULT => -36
	},
	{#State 56
		DEFAULT => -10
	},
	{#State 57
		DEFAULT => -37
	},
	{#State 58
		ACTIONS => {
			"-" => 27,
			"+" => 30,
			'ILIKE' => 32,
			"%" => 34,
			"^" => 36,
			"*" => 37,
			'LIKE' => 28,
			'OPERATOR' => 31,
			"/" => 33
		},
		DEFAULT => -21
	},
	{#State 59
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'OPERATOR' => 10,
			'USTRING_CONSTANT' => 13,
			'STRING_CONSTANT' => 15,
			"(" => 16,
			'NUMERIC_CONSTANT' => 17,
			'ESTRING_CONSTANT' => 18,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 14,
			'expr' => 60,
			'expr_simple' => 11
		}
	},
	{#State 60
		ACTIONS => {
			"-" => 27,
			"<" => 29,
			"+" => 30,
			'ILIKE' => 32,
			"%" => 34,
			"^" => 36,
			"*" => 37,
			'LIKE' => 28,
			'OPERATOR' => 31,
			"/" => 33,
			"=" => 35,
			">" => 39
		},
		DEFAULT => -12
	}
],
    yyrules  =>
[
	[#Rule _SUPERSTART
		 '$start', 2, undef
#line 841 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule top_1
		 'top', 1,
sub {
#line 20 "SQL.eyp"
 $_[1] }
#line 848 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_2
		 'statements', 1,
sub {
#line 23 "SQL.eyp"
 [ $_[1] ] }
#line 855 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_3
		 'statements', 3,
sub {
#line 24 "SQL.eyp"
 push @{ $_[1] }, $_[3]; $_[1] }
#line 862 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_4
		 'statements', 2,
sub {
#line 25 "SQL.eyp"
 $_[1] }
#line 869 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statement_5
		 'statement', 1,
sub {
#line 28 "SQL.eyp"
 $_[1] }
#line 876 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule select_stmt_6
		 'select_stmt', 2,
sub {
#line 31 "SQL.eyp"

                                        my $select = $factory->make( 'Select' );
                                        for my $rc ( @{ $_[2] } ) {
                                            my $res = $factory->make('Result_Column');
                                            $res->value( $rc->[0] );
                                            $res->alias( $rc->[1] ) if defined $rc->[1];
                                            $select->add_result( $res )
                                        }
                                        $select
                                    }
#line 892 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_columns_7
		 'result_columns', 1,
sub {
#line 43 "SQL.eyp"
 [ $_[1] ] }
#line 899 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_columns_8
		 'result_columns', 3,
sub {
#line 44 "SQL.eyp"
 push @{ $_[1] }, $_[3]; $_[1] }
#line 906 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_column_9
		 'result_column', 1,
sub {
#line 47 "SQL.eyp"
 [ $_[1], undef ] }
#line 913 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_column_10
		 'result_column', 3,
sub {
#line 48 "SQL.eyp"
 [ $_[1], $_[3] ] }
#line 920 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_11
		 'expr', 1,
sub {
#line 51 "SQL.eyp"
 $_[1] }
#line 927 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_12
		 'expr', 5,
sub {
#line 52 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => [ $_[3], $_[5] ] ) }
#line 934 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_13
		 'expr', 2,
sub {
#line 53 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1] ) }
#line 941 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_14
		 'expr', 2,
sub {
#line 54 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[1], 'right' => $_[2] ) }
#line 948 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_15
		 'expr', 3,
sub {
#line 55 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 955 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_16
		 'expr', 3,
sub {
#line 56 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 962 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_17
		 'expr', 3,
sub {
#line 57 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 969 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_18
		 'expr', 3,
sub {
#line 58 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 976 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_19
		 'expr', 3,
sub {
#line 59 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 983 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_20
		 'expr', 3,
sub {
#line 60 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 990 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_21
		 'expr', 3,
sub {
#line 61 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 997 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_22
		 'expr', 3,
sub {
#line 62 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 1004 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_23
		 'expr', 3,
sub {
#line 63 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 1011 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_24
		 'expr', 3,
sub {
#line 64 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 1018 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_25
		 'expr', 3,
sub {
#line 65 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 1025 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_26
		 'expr', 3,
sub {
#line 66 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 1032 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_simple_27
		 'expr_simple', 1,
sub {
#line 69 "SQL.eyp"
 $_[1] }
#line 1039 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_simple_28
		 'expr_simple', 3,
sub {
#line 70 "SQL.eyp"
 $_[2] }
#line 1046 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_29
		 'literal_value', 1,
sub {
#line 73 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'STRING_CONSTANT',     'value' => $_[1] ) }
#line 1053 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_30
		 'literal_value', 1,
sub {
#line 74 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'USTRING_CONSTANT',    'value' => $_[1] ) }
#line 1060 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_31
		 'literal_value', 1,
sub {
#line 75 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'ESTRING_CONSTANT',    'value' => $_[1] ) }
#line 1067 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_32
		 'literal_value', 1,
sub {
#line 76 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'BITSTRING_CONSTANT',  'value' => $_[1] ) }
#line 1074 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_33
		 'literal_value', 1,
sub {
#line 77 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'XBITSTRING_CONSTANT', 'value' => $_[1] ) }
#line 1081 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_34
		 'literal_value', 1,
sub {
#line 78 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'NUMERIC_CONSTANT',    'value' => $_[1] ) }
#line 1088 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_35
		 'literal_value', 1,
sub {
#line 79 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'INTEGER_CONSTANT',    'value' => $_[1] ) }
#line 1095 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_36
		 'identifier', 1,
sub {
#line 82 "SQL.eyp"
 $_[1] }
#line 1102 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_37
		 'identifier', 1,
sub {
#line 83 "SQL.eyp"
 $_[1] }
#line 1109 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_38
		 'identifier', 1,
sub {
#line 84 "SQL.eyp"
 $_[1] }
#line 1116 ../lib/Pg/SQL/Parser/SQL.pm
	]
],
#line 1119 ../lib/Pg/SQL/Parser/SQL.pm
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
         'expr_12', 
         'expr_13', 
         'expr_14', 
         'expr_15', 
         'expr_16', 
         'expr_17', 
         'expr_18', 
         'expr_19', 
         'expr_20', 
         'expr_21', 
         'expr_22', 
         'expr_23', 
         'expr_24', 
         'expr_25', 
         'expr_26', 
         'expr_simple_27', 
         'expr_simple_28', 
         'literal_value_29', 
         'literal_value_30', 
         'literal_value_31', 
         'literal_value_32', 
         'literal_value_33', 
         'literal_value_34', 
         'literal_value_35', 
         'identifier_36', 
         'identifier_37', 
         'identifier_38', );
  $self;
}

#line 87 "SQL.eyp"


# vim: set ft=lex:


=for None

=cut


#line 1186 ../lib/Pg/SQL/Parser/SQL.pm



1;
