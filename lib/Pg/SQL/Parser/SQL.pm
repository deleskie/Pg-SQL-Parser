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

      m{\G(XBITSTRING_CONSTANT|BITSTRING_CONSTANT|UQUOTED_IDENTIFIER|QUOTED_IDENTIFIER|USTRING_CONSTANT|ESTRING_CONSTANT|NUMERIC_CONSTANT|INTEGER_CONSTANT|STRING_CONSTANT|CHARACTERISTICS|CONFIGURATION|SERIALIZABLE|INSENSITIVE|CONSTRAINTS|TRANSACTION|UNCOMMITTED|UNENCRYPTED|DICTIONARY|CONNECTION|PRIVILEGES|STATISTICS|DELIMITERS|DEALLOCATE|TABLESPACE|REPEATABLE|CHECKPOINT|LC_COLLATE|ASSIGNMENT|IDENTIFIER|WHITESPACE|STANDALONE|PROCEDURAL|CONVERSION|PARTITION|INCREMENT|PROCEDURE|IMMUTABLE|IMMEDIATE|DELIMITER|UNBOUNDED|PRECEDING|AGGREGATE|ATTRIBUTE|EXCLUDING|ASSERTION|INCLUDING|EXCLUSIVE|STATEMENT|EXTENSION|ENCRYPTED|RECURSIVE|VALIDATOR|SEQUENCES|FOLLOWING|TEMPORARY|COMMITTED|ISOLATION|FUNCTIONS|SAVEPOINT|COLLATION|INHERITS|ENCODING|TEMPLATE|DEFAULTS|BACKWARD|SECURITY|PRESERVE|VALIDATE|REASSIGN|ROLLBACK|LOCATION|COMMENTS|CONTINUE|UNLOGGED|FUNCTION|DEFERRED|UNLISTEN|EXTERNAL|CASCADED|TRUNCATE|ABSOLUTE|VOLATILE|LANGUAGE|SEQUENCE|IDENTITY|RELATIVE|IMPLICIT|PASSWORD|PREPARED|LC_CTYPE|RESTRICT|MAXVALUE|DOCUMENT|MINVALUE|OPERATOR|DATABASE|REPLACE|RETURNS|INVOKER|PASSING|PREPARE|REPLICA|VARYING|HANDLER|RELEASE|COMMENT|REINDEX|CATALOG|MAPPING|RESTART|FORWARD|NOTHING|INDEXES|DECLARE|INHERIT|EXPLAIN|DISABLE|DEFINER|INSTEAD|TRUSTED|CASCADE|DISCARD|BETWEEN|PARTIAL|EXCLUDE|WRAPPER|WITHOUT|OPTIONS|EXECUTE|UNKNOWN|CONTENT|CURRENT|CLUSTER|RECHECK|GRANTED|STORAGE|SESSION|TRIGGER|VERSION|ESCAPE|SEARCH|MINUTE|DELETE|CALLED|UPDATE|STRICT|OBJECT|INSERT|NOWAIT|ACCESS|OPTION|STABLE|SCROLL|SYSTEM|ALWAYS|COMMIT|FAMILY|GLOBAL|STDOUT|REVOKE|VACUUM|SCHEMA|DOUBLE|INLINE|CURSOR|BEFORE|SECOND|SELECT|LISTEN|SIMPLE|DOMAIN|SERVER|RENAME|PARSER|NOTIFY|HEADER|ACTION|ENABLE|TABLES|INPUT|SYSID|VALUE|MONTH|RANGE|SHARE|LARGE|CLOSE|FORCE|LEVEL|LABEL|NULLS|RESET|PRIOR|STRIP|CACHE|ILIKE|AFTER|INDEX|OWNED|ADMIN|OWNER|MATCH|CLASS|CHAIN|ABORT|PLANS|QUOTE|NAMES|ALTER|BEGIN|STDIN|CYCLE|START|UNTIL|WRITE|LOCAL|VALID|FIRST|WORK|MODE|DROP|LOCK|DATA|COST|ZONE|RULE|TYPE|READ|TEXT|ALSO|VIEW|LOAD|OIDS|EACH|MOVE|SHOW|HOUR|TEMP|YEAR|COPY|LIKE|NEXT|NAME|ROWS|LAST|HOLD|ROLE|ENUM|DAY|REF|OFF|SET|XML|ADD|CSV|AND|YES|KEY|AT|BY|NO|OF|AS|IF|\+|\(|\^|\/|\,|\-|\<|\)|\;|\=|\%|\*|\>)}gc and return ($1, $1);



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
  [ 'identifier_39' => 'identifier', [ 'keywords_notreserved' ], 0 ],
  [ 'keywords_notreserved_40' => 'keywords_notreserved', [ 'ABORT' ], 0 ],
  [ 'keywords_notreserved_41' => 'keywords_notreserved', [ 'ABSOLUTE' ], 0 ],
  [ 'keywords_notreserved_42' => 'keywords_notreserved', [ 'ACCESS' ], 0 ],
  [ 'keywords_notreserved_43' => 'keywords_notreserved', [ 'ACTION' ], 0 ],
  [ 'keywords_notreserved_44' => 'keywords_notreserved', [ 'ADD' ], 0 ],
  [ 'keywords_notreserved_45' => 'keywords_notreserved', [ 'ADMIN' ], 0 ],
  [ 'keywords_notreserved_46' => 'keywords_notreserved', [ 'AFTER' ], 0 ],
  [ 'keywords_notreserved_47' => 'keywords_notreserved', [ 'AGGREGATE' ], 0 ],
  [ 'keywords_notreserved_48' => 'keywords_notreserved', [ 'ALSO' ], 0 ],
  [ 'keywords_notreserved_49' => 'keywords_notreserved', [ 'ALTER' ], 0 ],
  [ 'keywords_notreserved_50' => 'keywords_notreserved', [ 'ALWAYS' ], 0 ],
  [ 'keywords_notreserved_51' => 'keywords_notreserved', [ 'ASSERTION' ], 0 ],
  [ 'keywords_notreserved_52' => 'keywords_notreserved', [ 'ASSIGNMENT' ], 0 ],
  [ 'keywords_notreserved_53' => 'keywords_notreserved', [ 'AT' ], 0 ],
  [ 'keywords_notreserved_54' => 'keywords_notreserved', [ 'ATTRIBUTE' ], 0 ],
  [ 'keywords_notreserved_55' => 'keywords_notreserved', [ 'BACKWARD' ], 0 ],
  [ 'keywords_notreserved_56' => 'keywords_notreserved', [ 'BEFORE' ], 0 ],
  [ 'keywords_notreserved_57' => 'keywords_notreserved', [ 'BEGIN' ], 0 ],
  [ 'keywords_notreserved_58' => 'keywords_notreserved', [ 'BY' ], 0 ],
  [ 'keywords_notreserved_59' => 'keywords_notreserved', [ 'CACHE' ], 0 ],
  [ 'keywords_notreserved_60' => 'keywords_notreserved', [ 'CALLED' ], 0 ],
  [ 'keywords_notreserved_61' => 'keywords_notreserved', [ 'CASCADE' ], 0 ],
  [ 'keywords_notreserved_62' => 'keywords_notreserved', [ 'CASCADED' ], 0 ],
  [ 'keywords_notreserved_63' => 'keywords_notreserved', [ 'CATALOG' ], 0 ],
  [ 'keywords_notreserved_64' => 'keywords_notreserved', [ 'CHAIN' ], 0 ],
  [ 'keywords_notreserved_65' => 'keywords_notreserved', [ 'CHARACTERISTICS' ], 0 ],
  [ 'keywords_notreserved_66' => 'keywords_notreserved', [ 'CHECKPOINT' ], 0 ],
  [ 'keywords_notreserved_67' => 'keywords_notreserved', [ 'CLASS' ], 0 ],
  [ 'keywords_notreserved_68' => 'keywords_notreserved', [ 'CLOSE' ], 0 ],
  [ 'keywords_notreserved_69' => 'keywords_notreserved', [ 'CLUSTER' ], 0 ],
  [ 'keywords_notreserved_70' => 'keywords_notreserved', [ 'COLLATION' ], 0 ],
  [ 'keywords_notreserved_71' => 'keywords_notreserved', [ 'COMMENT' ], 0 ],
  [ 'keywords_notreserved_72' => 'keywords_notreserved', [ 'COMMENTS' ], 0 ],
  [ 'keywords_notreserved_73' => 'keywords_notreserved', [ 'COMMIT' ], 0 ],
  [ 'keywords_notreserved_74' => 'keywords_notreserved', [ 'COMMITTED' ], 0 ],
  [ 'keywords_notreserved_75' => 'keywords_notreserved', [ 'CONFIGURATION' ], 0 ],
  [ 'keywords_notreserved_76' => 'keywords_notreserved', [ 'CONNECTION' ], 0 ],
  [ 'keywords_notreserved_77' => 'keywords_notreserved', [ 'CONSTRAINTS' ], 0 ],
  [ 'keywords_notreserved_78' => 'keywords_notreserved', [ 'CONTENT' ], 0 ],
  [ 'keywords_notreserved_79' => 'keywords_notreserved', [ 'CONTINUE' ], 0 ],
  [ 'keywords_notreserved_80' => 'keywords_notreserved', [ 'CONVERSION' ], 0 ],
  [ 'keywords_notreserved_81' => 'keywords_notreserved', [ 'COPY' ], 0 ],
  [ 'keywords_notreserved_82' => 'keywords_notreserved', [ 'COST' ], 0 ],
  [ 'keywords_notreserved_83' => 'keywords_notreserved', [ 'CSV' ], 0 ],
  [ 'keywords_notreserved_84' => 'keywords_notreserved', [ 'CURRENT' ], 0 ],
  [ 'keywords_notreserved_85' => 'keywords_notreserved', [ 'CURSOR' ], 0 ],
  [ 'keywords_notreserved_86' => 'keywords_notreserved', [ 'CYCLE' ], 0 ],
  [ 'keywords_notreserved_87' => 'keywords_notreserved', [ 'DATA' ], 0 ],
  [ 'keywords_notreserved_88' => 'keywords_notreserved', [ 'DATABASE' ], 0 ],
  [ 'keywords_notreserved_89' => 'keywords_notreserved', [ 'DAY' ], 0 ],
  [ 'keywords_notreserved_90' => 'keywords_notreserved', [ 'DEALLOCATE' ], 0 ],
  [ 'keywords_notreserved_91' => 'keywords_notreserved', [ 'DECLARE' ], 0 ],
  [ 'keywords_notreserved_92' => 'keywords_notreserved', [ 'DEFAULTS' ], 0 ],
  [ 'keywords_notreserved_93' => 'keywords_notreserved', [ 'DEFERRED' ], 0 ],
  [ 'keywords_notreserved_94' => 'keywords_notreserved', [ 'DEFINER' ], 0 ],
  [ 'keywords_notreserved_95' => 'keywords_notreserved', [ 'DELETE' ], 0 ],
  [ 'keywords_notreserved_96' => 'keywords_notreserved', [ 'DELIMITER' ], 0 ],
  [ 'keywords_notreserved_97' => 'keywords_notreserved', [ 'DELIMITERS' ], 0 ],
  [ 'keywords_notreserved_98' => 'keywords_notreserved', [ 'DICTIONARY' ], 0 ],
  [ 'keywords_notreserved_99' => 'keywords_notreserved', [ 'DISABLE' ], 0 ],
  [ 'keywords_notreserved_100' => 'keywords_notreserved', [ 'DISCARD' ], 0 ],
  [ 'keywords_notreserved_101' => 'keywords_notreserved', [ 'DOCUMENT' ], 0 ],
  [ 'keywords_notreserved_102' => 'keywords_notreserved', [ 'DOMAIN' ], 0 ],
  [ 'keywords_notreserved_103' => 'keywords_notreserved', [ 'DOUBLE' ], 0 ],
  [ 'keywords_notreserved_104' => 'keywords_notreserved', [ 'DROP' ], 0 ],
  [ 'keywords_notreserved_105' => 'keywords_notreserved', [ 'EACH' ], 0 ],
  [ 'keywords_notreserved_106' => 'keywords_notreserved', [ 'ENABLE' ], 0 ],
  [ 'keywords_notreserved_107' => 'keywords_notreserved', [ 'ENCODING' ], 0 ],
  [ 'keywords_notreserved_108' => 'keywords_notreserved', [ 'ENCRYPTED' ], 0 ],
  [ 'keywords_notreserved_109' => 'keywords_notreserved', [ 'ENUM' ], 0 ],
  [ 'keywords_notreserved_110' => 'keywords_notreserved', [ 'ESCAPE' ], 0 ],
  [ 'keywords_notreserved_111' => 'keywords_notreserved', [ 'EXCLUDE' ], 0 ],
  [ 'keywords_notreserved_112' => 'keywords_notreserved', [ 'EXCLUDING' ], 0 ],
  [ 'keywords_notreserved_113' => 'keywords_notreserved', [ 'EXCLUSIVE' ], 0 ],
  [ 'keywords_notreserved_114' => 'keywords_notreserved', [ 'EXECUTE' ], 0 ],
  [ 'keywords_notreserved_115' => 'keywords_notreserved', [ 'EXPLAIN' ], 0 ],
  [ 'keywords_notreserved_116' => 'keywords_notreserved', [ 'EXTENSION' ], 0 ],
  [ 'keywords_notreserved_117' => 'keywords_notreserved', [ 'EXTERNAL' ], 0 ],
  [ 'keywords_notreserved_118' => 'keywords_notreserved', [ 'FAMILY' ], 0 ],
  [ 'keywords_notreserved_119' => 'keywords_notreserved', [ 'FIRST' ], 0 ],
  [ 'keywords_notreserved_120' => 'keywords_notreserved', [ 'FOLLOWING' ], 0 ],
  [ 'keywords_notreserved_121' => 'keywords_notreserved', [ 'FORCE' ], 0 ],
  [ 'keywords_notreserved_122' => 'keywords_notreserved', [ 'FORWARD' ], 0 ],
  [ 'keywords_notreserved_123' => 'keywords_notreserved', [ 'FUNCTION' ], 0 ],
  [ 'keywords_notreserved_124' => 'keywords_notreserved', [ 'FUNCTIONS' ], 0 ],
  [ 'keywords_notreserved_125' => 'keywords_notreserved', [ 'GLOBAL' ], 0 ],
  [ 'keywords_notreserved_126' => 'keywords_notreserved', [ 'GRANTED' ], 0 ],
  [ 'keywords_notreserved_127' => 'keywords_notreserved', [ 'HANDLER' ], 0 ],
  [ 'keywords_notreserved_128' => 'keywords_notreserved', [ 'HEADER' ], 0 ],
  [ 'keywords_notreserved_129' => 'keywords_notreserved', [ 'HOLD' ], 0 ],
  [ 'keywords_notreserved_130' => 'keywords_notreserved', [ 'HOUR' ], 0 ],
  [ 'keywords_notreserved_131' => 'keywords_notreserved', [ 'IDENTITY' ], 0 ],
  [ 'keywords_notreserved_132' => 'keywords_notreserved', [ 'IF' ], 0 ],
  [ 'keywords_notreserved_133' => 'keywords_notreserved', [ 'IMMEDIATE' ], 0 ],
  [ 'keywords_notreserved_134' => 'keywords_notreserved', [ 'IMMUTABLE' ], 0 ],
  [ 'keywords_notreserved_135' => 'keywords_notreserved', [ 'IMPLICIT' ], 0 ],
  [ 'keywords_notreserved_136' => 'keywords_notreserved', [ 'INCLUDING' ], 0 ],
  [ 'keywords_notreserved_137' => 'keywords_notreserved', [ 'INCREMENT' ], 0 ],
  [ 'keywords_notreserved_138' => 'keywords_notreserved', [ 'INDEX' ], 0 ],
  [ 'keywords_notreserved_139' => 'keywords_notreserved', [ 'INDEXES' ], 0 ],
  [ 'keywords_notreserved_140' => 'keywords_notreserved', [ 'INHERIT' ], 0 ],
  [ 'keywords_notreserved_141' => 'keywords_notreserved', [ 'INHERITS' ], 0 ],
  [ 'keywords_notreserved_142' => 'keywords_notreserved', [ 'INLINE' ], 0 ],
  [ 'keywords_notreserved_143' => 'keywords_notreserved', [ 'INPUT' ], 0 ],
  [ 'keywords_notreserved_144' => 'keywords_notreserved', [ 'INSENSITIVE' ], 0 ],
  [ 'keywords_notreserved_145' => 'keywords_notreserved', [ 'INSERT' ], 0 ],
  [ 'keywords_notreserved_146' => 'keywords_notreserved', [ 'INSTEAD' ], 0 ],
  [ 'keywords_notreserved_147' => 'keywords_notreserved', [ 'INVOKER' ], 0 ],
  [ 'keywords_notreserved_148' => 'keywords_notreserved', [ 'ISOLATION' ], 0 ],
  [ 'keywords_notreserved_149' => 'keywords_notreserved', [ 'KEY' ], 0 ],
  [ 'keywords_notreserved_150' => 'keywords_notreserved', [ 'LABEL' ], 0 ],
  [ 'keywords_notreserved_151' => 'keywords_notreserved', [ 'LANGUAGE' ], 0 ],
  [ 'keywords_notreserved_152' => 'keywords_notreserved', [ 'LARGE' ], 0 ],
  [ 'keywords_notreserved_153' => 'keywords_notreserved', [ 'LAST' ], 0 ],
  [ 'keywords_notreserved_154' => 'keywords_notreserved', [ 'LC_COLLATE' ], 0 ],
  [ 'keywords_notreserved_155' => 'keywords_notreserved', [ 'LC_CTYPE' ], 0 ],
  [ 'keywords_notreserved_156' => 'keywords_notreserved', [ 'LEVEL' ], 0 ],
  [ 'keywords_notreserved_157' => 'keywords_notreserved', [ 'LISTEN' ], 0 ],
  [ 'keywords_notreserved_158' => 'keywords_notreserved', [ 'LOAD' ], 0 ],
  [ 'keywords_notreserved_159' => 'keywords_notreserved', [ 'LOCAL' ], 0 ],
  [ 'keywords_notreserved_160' => 'keywords_notreserved', [ 'LOCATION' ], 0 ],
  [ 'keywords_notreserved_161' => 'keywords_notreserved', [ 'LOCK' ], 0 ],
  [ 'keywords_notreserved_162' => 'keywords_notreserved', [ 'MAPPING' ], 0 ],
  [ 'keywords_notreserved_163' => 'keywords_notreserved', [ 'MATCH' ], 0 ],
  [ 'keywords_notreserved_164' => 'keywords_notreserved', [ 'MAXVALUE' ], 0 ],
  [ 'keywords_notreserved_165' => 'keywords_notreserved', [ 'MINUTE' ], 0 ],
  [ 'keywords_notreserved_166' => 'keywords_notreserved', [ 'MINVALUE' ], 0 ],
  [ 'keywords_notreserved_167' => 'keywords_notreserved', [ 'MODE' ], 0 ],
  [ 'keywords_notreserved_168' => 'keywords_notreserved', [ 'MONTH' ], 0 ],
  [ 'keywords_notreserved_169' => 'keywords_notreserved', [ 'MOVE' ], 0 ],
  [ 'keywords_notreserved_170' => 'keywords_notreserved', [ 'NAME' ], 0 ],
  [ 'keywords_notreserved_171' => 'keywords_notreserved', [ 'NAMES' ], 0 ],
  [ 'keywords_notreserved_172' => 'keywords_notreserved', [ 'NEXT' ], 0 ],
  [ 'keywords_notreserved_173' => 'keywords_notreserved', [ 'NO' ], 0 ],
  [ 'keywords_notreserved_174' => 'keywords_notreserved', [ 'NOTHING' ], 0 ],
  [ 'keywords_notreserved_175' => 'keywords_notreserved', [ 'NOTIFY' ], 0 ],
  [ 'keywords_notreserved_176' => 'keywords_notreserved', [ 'NOWAIT' ], 0 ],
  [ 'keywords_notreserved_177' => 'keywords_notreserved', [ 'NULLS' ], 0 ],
  [ 'keywords_notreserved_178' => 'keywords_notreserved', [ 'OBJECT' ], 0 ],
  [ 'keywords_notreserved_179' => 'keywords_notreserved', [ 'OF' ], 0 ],
  [ 'keywords_notreserved_180' => 'keywords_notreserved', [ 'OFF' ], 0 ],
  [ 'keywords_notreserved_181' => 'keywords_notreserved', [ 'OIDS' ], 0 ],
  [ 'keywords_notreserved_182' => 'keywords_notreserved', [ 'OPERATOR' ], 0 ],
  [ 'keywords_notreserved_183' => 'keywords_notreserved', [ 'OPTION' ], 0 ],
  [ 'keywords_notreserved_184' => 'keywords_notreserved', [ 'OPTIONS' ], 0 ],
  [ 'keywords_notreserved_185' => 'keywords_notreserved', [ 'OWNED' ], 0 ],
  [ 'keywords_notreserved_186' => 'keywords_notreserved', [ 'OWNER' ], 0 ],
  [ 'keywords_notreserved_187' => 'keywords_notreserved', [ 'PARSER' ], 0 ],
  [ 'keywords_notreserved_188' => 'keywords_notreserved', [ 'PARTIAL' ], 0 ],
  [ 'keywords_notreserved_189' => 'keywords_notreserved', [ 'PARTITION' ], 0 ],
  [ 'keywords_notreserved_190' => 'keywords_notreserved', [ 'PASSING' ], 0 ],
  [ 'keywords_notreserved_191' => 'keywords_notreserved', [ 'PASSWORD' ], 0 ],
  [ 'keywords_notreserved_192' => 'keywords_notreserved', [ 'PLANS' ], 0 ],
  [ 'keywords_notreserved_193' => 'keywords_notreserved', [ 'PRECEDING' ], 0 ],
  [ 'keywords_notreserved_194' => 'keywords_notreserved', [ 'PREPARE' ], 0 ],
  [ 'keywords_notreserved_195' => 'keywords_notreserved', [ 'PREPARED' ], 0 ],
  [ 'keywords_notreserved_196' => 'keywords_notreserved', [ 'PRESERVE' ], 0 ],
  [ 'keywords_notreserved_197' => 'keywords_notreserved', [ 'PRIOR' ], 0 ],
  [ 'keywords_notreserved_198' => 'keywords_notreserved', [ 'PRIVILEGES' ], 0 ],
  [ 'keywords_notreserved_199' => 'keywords_notreserved', [ 'PROCEDURAL' ], 0 ],
  [ 'keywords_notreserved_200' => 'keywords_notreserved', [ 'PROCEDURE' ], 0 ],
  [ 'keywords_notreserved_201' => 'keywords_notreserved', [ 'QUOTE' ], 0 ],
  [ 'keywords_notreserved_202' => 'keywords_notreserved', [ 'RANGE' ], 0 ],
  [ 'keywords_notreserved_203' => 'keywords_notreserved', [ 'READ' ], 0 ],
  [ 'keywords_notreserved_204' => 'keywords_notreserved', [ 'REASSIGN' ], 0 ],
  [ 'keywords_notreserved_205' => 'keywords_notreserved', [ 'RECHECK' ], 0 ],
  [ 'keywords_notreserved_206' => 'keywords_notreserved', [ 'RECURSIVE' ], 0 ],
  [ 'keywords_notreserved_207' => 'keywords_notreserved', [ 'REF' ], 0 ],
  [ 'keywords_notreserved_208' => 'keywords_notreserved', [ 'REINDEX' ], 0 ],
  [ 'keywords_notreserved_209' => 'keywords_notreserved', [ 'RELATIVE' ], 0 ],
  [ 'keywords_notreserved_210' => 'keywords_notreserved', [ 'RELEASE' ], 0 ],
  [ 'keywords_notreserved_211' => 'keywords_notreserved', [ 'RENAME' ], 0 ],
  [ 'keywords_notreserved_212' => 'keywords_notreserved', [ 'REPEATABLE' ], 0 ],
  [ 'keywords_notreserved_213' => 'keywords_notreserved', [ 'REPLACE' ], 0 ],
  [ 'keywords_notreserved_214' => 'keywords_notreserved', [ 'REPLICA' ], 0 ],
  [ 'keywords_notreserved_215' => 'keywords_notreserved', [ 'RESET' ], 0 ],
  [ 'keywords_notreserved_216' => 'keywords_notreserved', [ 'RESTART' ], 0 ],
  [ 'keywords_notreserved_217' => 'keywords_notreserved', [ 'RESTRICT' ], 0 ],
  [ 'keywords_notreserved_218' => 'keywords_notreserved', [ 'RETURNS' ], 0 ],
  [ 'keywords_notreserved_219' => 'keywords_notreserved', [ 'REVOKE' ], 0 ],
  [ 'keywords_notreserved_220' => 'keywords_notreserved', [ 'ROLE' ], 0 ],
  [ 'keywords_notreserved_221' => 'keywords_notreserved', [ 'ROLLBACK' ], 0 ],
  [ 'keywords_notreserved_222' => 'keywords_notreserved', [ 'ROWS' ], 0 ],
  [ 'keywords_notreserved_223' => 'keywords_notreserved', [ 'RULE' ], 0 ],
  [ 'keywords_notreserved_224' => 'keywords_notreserved', [ 'SAVEPOINT' ], 0 ],
  [ 'keywords_notreserved_225' => 'keywords_notreserved', [ 'SCHEMA' ], 0 ],
  [ 'keywords_notreserved_226' => 'keywords_notreserved', [ 'SCROLL' ], 0 ],
  [ 'keywords_notreserved_227' => 'keywords_notreserved', [ 'SEARCH' ], 0 ],
  [ 'keywords_notreserved_228' => 'keywords_notreserved', [ 'SECOND' ], 0 ],
  [ 'keywords_notreserved_229' => 'keywords_notreserved', [ 'SECURITY' ], 0 ],
  [ 'keywords_notreserved_230' => 'keywords_notreserved', [ 'SEQUENCE' ], 0 ],
  [ 'keywords_notreserved_231' => 'keywords_notreserved', [ 'SEQUENCES' ], 0 ],
  [ 'keywords_notreserved_232' => 'keywords_notreserved', [ 'SERIALIZABLE' ], 0 ],
  [ 'keywords_notreserved_233' => 'keywords_notreserved', [ 'SERVER' ], 0 ],
  [ 'keywords_notreserved_234' => 'keywords_notreserved', [ 'SESSION' ], 0 ],
  [ 'keywords_notreserved_235' => 'keywords_notreserved', [ 'SET' ], 0 ],
  [ 'keywords_notreserved_236' => 'keywords_notreserved', [ 'SHARE' ], 0 ],
  [ 'keywords_notreserved_237' => 'keywords_notreserved', [ 'SHOW' ], 0 ],
  [ 'keywords_notreserved_238' => 'keywords_notreserved', [ 'SIMPLE' ], 0 ],
  [ 'keywords_notreserved_239' => 'keywords_notreserved', [ 'STABLE' ], 0 ],
  [ 'keywords_notreserved_240' => 'keywords_notreserved', [ 'STANDALONE' ], 0 ],
  [ 'keywords_notreserved_241' => 'keywords_notreserved', [ 'START' ], 0 ],
  [ 'keywords_notreserved_242' => 'keywords_notreserved', [ 'STATEMENT' ], 0 ],
  [ 'keywords_notreserved_243' => 'keywords_notreserved', [ 'STATISTICS' ], 0 ],
  [ 'keywords_notreserved_244' => 'keywords_notreserved', [ 'STDIN' ], 0 ],
  [ 'keywords_notreserved_245' => 'keywords_notreserved', [ 'STDOUT' ], 0 ],
  [ 'keywords_notreserved_246' => 'keywords_notreserved', [ 'STORAGE' ], 0 ],
  [ 'keywords_notreserved_247' => 'keywords_notreserved', [ 'STRICT' ], 0 ],
  [ 'keywords_notreserved_248' => 'keywords_notreserved', [ 'STRIP' ], 0 ],
  [ 'keywords_notreserved_249' => 'keywords_notreserved', [ 'SYSID' ], 0 ],
  [ 'keywords_notreserved_250' => 'keywords_notreserved', [ 'SYSTEM' ], 0 ],
  [ 'keywords_notreserved_251' => 'keywords_notreserved', [ 'TABLES' ], 0 ],
  [ 'keywords_notreserved_252' => 'keywords_notreserved', [ 'TABLESPACE' ], 0 ],
  [ 'keywords_notreserved_253' => 'keywords_notreserved', [ 'TEMP' ], 0 ],
  [ 'keywords_notreserved_254' => 'keywords_notreserved', [ 'TEMPLATE' ], 0 ],
  [ 'keywords_notreserved_255' => 'keywords_notreserved', [ 'TEMPORARY' ], 0 ],
  [ 'keywords_notreserved_256' => 'keywords_notreserved', [ 'TEXT' ], 0 ],
  [ 'keywords_notreserved_257' => 'keywords_notreserved', [ 'TRANSACTION' ], 0 ],
  [ 'keywords_notreserved_258' => 'keywords_notreserved', [ 'TRIGGER' ], 0 ],
  [ 'keywords_notreserved_259' => 'keywords_notreserved', [ 'TRUNCATE' ], 0 ],
  [ 'keywords_notreserved_260' => 'keywords_notreserved', [ 'TRUSTED' ], 0 ],
  [ 'keywords_notreserved_261' => 'keywords_notreserved', [ 'TYPE' ], 0 ],
  [ 'keywords_notreserved_262' => 'keywords_notreserved', [ 'UNBOUNDED' ], 0 ],
  [ 'keywords_notreserved_263' => 'keywords_notreserved', [ 'UNCOMMITTED' ], 0 ],
  [ 'keywords_notreserved_264' => 'keywords_notreserved', [ 'UNENCRYPTED' ], 0 ],
  [ 'keywords_notreserved_265' => 'keywords_notreserved', [ 'UNKNOWN' ], 0 ],
  [ 'keywords_notreserved_266' => 'keywords_notreserved', [ 'UNLISTEN' ], 0 ],
  [ 'keywords_notreserved_267' => 'keywords_notreserved', [ 'UNLOGGED' ], 0 ],
  [ 'keywords_notreserved_268' => 'keywords_notreserved', [ 'UNTIL' ], 0 ],
  [ 'keywords_notreserved_269' => 'keywords_notreserved', [ 'UPDATE' ], 0 ],
  [ 'keywords_notreserved_270' => 'keywords_notreserved', [ 'VACUUM' ], 0 ],
  [ 'keywords_notreserved_271' => 'keywords_notreserved', [ 'VALID' ], 0 ],
  [ 'keywords_notreserved_272' => 'keywords_notreserved', [ 'VALIDATE' ], 0 ],
  [ 'keywords_notreserved_273' => 'keywords_notreserved', [ 'VALIDATOR' ], 0 ],
  [ 'keywords_notreserved_274' => 'keywords_notreserved', [ 'VALUE' ], 0 ],
  [ 'keywords_notreserved_275' => 'keywords_notreserved', [ 'VARYING' ], 0 ],
  [ 'keywords_notreserved_276' => 'keywords_notreserved', [ 'VERSION' ], 0 ],
  [ 'keywords_notreserved_277' => 'keywords_notreserved', [ 'VIEW' ], 0 ],
  [ 'keywords_notreserved_278' => 'keywords_notreserved', [ 'VOLATILE' ], 0 ],
  [ 'keywords_notreserved_279' => 'keywords_notreserved', [ 'WHITESPACE' ], 0 ],
  [ 'keywords_notreserved_280' => 'keywords_notreserved', [ 'WITHOUT' ], 0 ],
  [ 'keywords_notreserved_281' => 'keywords_notreserved', [ 'WORK' ], 0 ],
  [ 'keywords_notreserved_282' => 'keywords_notreserved', [ 'WRAPPER' ], 0 ],
  [ 'keywords_notreserved_283' => 'keywords_notreserved', [ 'WRITE' ], 0 ],
  [ 'keywords_notreserved_284' => 'keywords_notreserved', [ 'XML' ], 0 ],
  [ 'keywords_notreserved_285' => 'keywords_notreserved', [ 'YEAR' ], 0 ],
  [ 'keywords_notreserved_286' => 'keywords_notreserved', [ 'YES' ], 0 ],
  [ 'keywords_notreserved_287' => 'keywords_notreserved', [ 'ZONE' ], 0 ],
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
  'identifier_39' => 39,
  'keywords_notreserved_40' => 40,
  'keywords_notreserved_41' => 41,
  'keywords_notreserved_42' => 42,
  'keywords_notreserved_43' => 43,
  'keywords_notreserved_44' => 44,
  'keywords_notreserved_45' => 45,
  'keywords_notreserved_46' => 46,
  'keywords_notreserved_47' => 47,
  'keywords_notreserved_48' => 48,
  'keywords_notreserved_49' => 49,
  'keywords_notreserved_50' => 50,
  'keywords_notreserved_51' => 51,
  'keywords_notreserved_52' => 52,
  'keywords_notreserved_53' => 53,
  'keywords_notreserved_54' => 54,
  'keywords_notreserved_55' => 55,
  'keywords_notreserved_56' => 56,
  'keywords_notreserved_57' => 57,
  'keywords_notreserved_58' => 58,
  'keywords_notreserved_59' => 59,
  'keywords_notreserved_60' => 60,
  'keywords_notreserved_61' => 61,
  'keywords_notreserved_62' => 62,
  'keywords_notreserved_63' => 63,
  'keywords_notreserved_64' => 64,
  'keywords_notreserved_65' => 65,
  'keywords_notreserved_66' => 66,
  'keywords_notreserved_67' => 67,
  'keywords_notreserved_68' => 68,
  'keywords_notreserved_69' => 69,
  'keywords_notreserved_70' => 70,
  'keywords_notreserved_71' => 71,
  'keywords_notreserved_72' => 72,
  'keywords_notreserved_73' => 73,
  'keywords_notreserved_74' => 74,
  'keywords_notreserved_75' => 75,
  'keywords_notreserved_76' => 76,
  'keywords_notreserved_77' => 77,
  'keywords_notreserved_78' => 78,
  'keywords_notreserved_79' => 79,
  'keywords_notreserved_80' => 80,
  'keywords_notreserved_81' => 81,
  'keywords_notreserved_82' => 82,
  'keywords_notreserved_83' => 83,
  'keywords_notreserved_84' => 84,
  'keywords_notreserved_85' => 85,
  'keywords_notreserved_86' => 86,
  'keywords_notreserved_87' => 87,
  'keywords_notreserved_88' => 88,
  'keywords_notreserved_89' => 89,
  'keywords_notreserved_90' => 90,
  'keywords_notreserved_91' => 91,
  'keywords_notreserved_92' => 92,
  'keywords_notreserved_93' => 93,
  'keywords_notreserved_94' => 94,
  'keywords_notreserved_95' => 95,
  'keywords_notreserved_96' => 96,
  'keywords_notreserved_97' => 97,
  'keywords_notreserved_98' => 98,
  'keywords_notreserved_99' => 99,
  'keywords_notreserved_100' => 100,
  'keywords_notreserved_101' => 101,
  'keywords_notreserved_102' => 102,
  'keywords_notreserved_103' => 103,
  'keywords_notreserved_104' => 104,
  'keywords_notreserved_105' => 105,
  'keywords_notreserved_106' => 106,
  'keywords_notreserved_107' => 107,
  'keywords_notreserved_108' => 108,
  'keywords_notreserved_109' => 109,
  'keywords_notreserved_110' => 110,
  'keywords_notreserved_111' => 111,
  'keywords_notreserved_112' => 112,
  'keywords_notreserved_113' => 113,
  'keywords_notreserved_114' => 114,
  'keywords_notreserved_115' => 115,
  'keywords_notreserved_116' => 116,
  'keywords_notreserved_117' => 117,
  'keywords_notreserved_118' => 118,
  'keywords_notreserved_119' => 119,
  'keywords_notreserved_120' => 120,
  'keywords_notreserved_121' => 121,
  'keywords_notreserved_122' => 122,
  'keywords_notreserved_123' => 123,
  'keywords_notreserved_124' => 124,
  'keywords_notreserved_125' => 125,
  'keywords_notreserved_126' => 126,
  'keywords_notreserved_127' => 127,
  'keywords_notreserved_128' => 128,
  'keywords_notreserved_129' => 129,
  'keywords_notreserved_130' => 130,
  'keywords_notreserved_131' => 131,
  'keywords_notreserved_132' => 132,
  'keywords_notreserved_133' => 133,
  'keywords_notreserved_134' => 134,
  'keywords_notreserved_135' => 135,
  'keywords_notreserved_136' => 136,
  'keywords_notreserved_137' => 137,
  'keywords_notreserved_138' => 138,
  'keywords_notreserved_139' => 139,
  'keywords_notreserved_140' => 140,
  'keywords_notreserved_141' => 141,
  'keywords_notreserved_142' => 142,
  'keywords_notreserved_143' => 143,
  'keywords_notreserved_144' => 144,
  'keywords_notreserved_145' => 145,
  'keywords_notreserved_146' => 146,
  'keywords_notreserved_147' => 147,
  'keywords_notreserved_148' => 148,
  'keywords_notreserved_149' => 149,
  'keywords_notreserved_150' => 150,
  'keywords_notreserved_151' => 151,
  'keywords_notreserved_152' => 152,
  'keywords_notreserved_153' => 153,
  'keywords_notreserved_154' => 154,
  'keywords_notreserved_155' => 155,
  'keywords_notreserved_156' => 156,
  'keywords_notreserved_157' => 157,
  'keywords_notreserved_158' => 158,
  'keywords_notreserved_159' => 159,
  'keywords_notreserved_160' => 160,
  'keywords_notreserved_161' => 161,
  'keywords_notreserved_162' => 162,
  'keywords_notreserved_163' => 163,
  'keywords_notreserved_164' => 164,
  'keywords_notreserved_165' => 165,
  'keywords_notreserved_166' => 166,
  'keywords_notreserved_167' => 167,
  'keywords_notreserved_168' => 168,
  'keywords_notreserved_169' => 169,
  'keywords_notreserved_170' => 170,
  'keywords_notreserved_171' => 171,
  'keywords_notreserved_172' => 172,
  'keywords_notreserved_173' => 173,
  'keywords_notreserved_174' => 174,
  'keywords_notreserved_175' => 175,
  'keywords_notreserved_176' => 176,
  'keywords_notreserved_177' => 177,
  'keywords_notreserved_178' => 178,
  'keywords_notreserved_179' => 179,
  'keywords_notreserved_180' => 180,
  'keywords_notreserved_181' => 181,
  'keywords_notreserved_182' => 182,
  'keywords_notreserved_183' => 183,
  'keywords_notreserved_184' => 184,
  'keywords_notreserved_185' => 185,
  'keywords_notreserved_186' => 186,
  'keywords_notreserved_187' => 187,
  'keywords_notreserved_188' => 188,
  'keywords_notreserved_189' => 189,
  'keywords_notreserved_190' => 190,
  'keywords_notreserved_191' => 191,
  'keywords_notreserved_192' => 192,
  'keywords_notreserved_193' => 193,
  'keywords_notreserved_194' => 194,
  'keywords_notreserved_195' => 195,
  'keywords_notreserved_196' => 196,
  'keywords_notreserved_197' => 197,
  'keywords_notreserved_198' => 198,
  'keywords_notreserved_199' => 199,
  'keywords_notreserved_200' => 200,
  'keywords_notreserved_201' => 201,
  'keywords_notreserved_202' => 202,
  'keywords_notreserved_203' => 203,
  'keywords_notreserved_204' => 204,
  'keywords_notreserved_205' => 205,
  'keywords_notreserved_206' => 206,
  'keywords_notreserved_207' => 207,
  'keywords_notreserved_208' => 208,
  'keywords_notreserved_209' => 209,
  'keywords_notreserved_210' => 210,
  'keywords_notreserved_211' => 211,
  'keywords_notreserved_212' => 212,
  'keywords_notreserved_213' => 213,
  'keywords_notreserved_214' => 214,
  'keywords_notreserved_215' => 215,
  'keywords_notreserved_216' => 216,
  'keywords_notreserved_217' => 217,
  'keywords_notreserved_218' => 218,
  'keywords_notreserved_219' => 219,
  'keywords_notreserved_220' => 220,
  'keywords_notreserved_221' => 221,
  'keywords_notreserved_222' => 222,
  'keywords_notreserved_223' => 223,
  'keywords_notreserved_224' => 224,
  'keywords_notreserved_225' => 225,
  'keywords_notreserved_226' => 226,
  'keywords_notreserved_227' => 227,
  'keywords_notreserved_228' => 228,
  'keywords_notreserved_229' => 229,
  'keywords_notreserved_230' => 230,
  'keywords_notreserved_231' => 231,
  'keywords_notreserved_232' => 232,
  'keywords_notreserved_233' => 233,
  'keywords_notreserved_234' => 234,
  'keywords_notreserved_235' => 235,
  'keywords_notreserved_236' => 236,
  'keywords_notreserved_237' => 237,
  'keywords_notreserved_238' => 238,
  'keywords_notreserved_239' => 239,
  'keywords_notreserved_240' => 240,
  'keywords_notreserved_241' => 241,
  'keywords_notreserved_242' => 242,
  'keywords_notreserved_243' => 243,
  'keywords_notreserved_244' => 244,
  'keywords_notreserved_245' => 245,
  'keywords_notreserved_246' => 246,
  'keywords_notreserved_247' => 247,
  'keywords_notreserved_248' => 248,
  'keywords_notreserved_249' => 249,
  'keywords_notreserved_250' => 250,
  'keywords_notreserved_251' => 251,
  'keywords_notreserved_252' => 252,
  'keywords_notreserved_253' => 253,
  'keywords_notreserved_254' => 254,
  'keywords_notreserved_255' => 255,
  'keywords_notreserved_256' => 256,
  'keywords_notreserved_257' => 257,
  'keywords_notreserved_258' => 258,
  'keywords_notreserved_259' => 259,
  'keywords_notreserved_260' => 260,
  'keywords_notreserved_261' => 261,
  'keywords_notreserved_262' => 262,
  'keywords_notreserved_263' => 263,
  'keywords_notreserved_264' => 264,
  'keywords_notreserved_265' => 265,
  'keywords_notreserved_266' => 266,
  'keywords_notreserved_267' => 267,
  'keywords_notreserved_268' => 268,
  'keywords_notreserved_269' => 269,
  'keywords_notreserved_270' => 270,
  'keywords_notreserved_271' => 271,
  'keywords_notreserved_272' => 272,
  'keywords_notreserved_273' => 273,
  'keywords_notreserved_274' => 274,
  'keywords_notreserved_275' => 275,
  'keywords_notreserved_276' => 276,
  'keywords_notreserved_277' => 277,
  'keywords_notreserved_278' => 278,
  'keywords_notreserved_279' => 279,
  'keywords_notreserved_280' => 280,
  'keywords_notreserved_281' => 281,
  'keywords_notreserved_282' => 282,
  'keywords_notreserved_283' => 283,
  'keywords_notreserved_284' => 284,
  'keywords_notreserved_285' => 285,
  'keywords_notreserved_286' => 286,
  'keywords_notreserved_287' => 287,
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
	ABORT => { ISSEMANTIC => 1 },
	ABSOLUTE => { ISSEMANTIC => 1 },
	ACCESS => { ISSEMANTIC => 1 },
	ACTION => { ISSEMANTIC => 1 },
	ADD => { ISSEMANTIC => 1 },
	ADMIN => { ISSEMANTIC => 1 },
	AFTER => { ISSEMANTIC => 1 },
	AGGREGATE => { ISSEMANTIC => 1 },
	ALSO => { ISSEMANTIC => 1 },
	ALTER => { ISSEMANTIC => 1 },
	ALWAYS => { ISSEMANTIC => 1 },
	AND => { ISSEMANTIC => 1 },
	AS => { ISSEMANTIC => 1 },
	ASSERTION => { ISSEMANTIC => 1 },
	ASSIGNMENT => { ISSEMANTIC => 1 },
	AT => { ISSEMANTIC => 1 },
	ATTRIBUTE => { ISSEMANTIC => 1 },
	BACKWARD => { ISSEMANTIC => 1 },
	BEFORE => { ISSEMANTIC => 1 },
	BEGIN => { ISSEMANTIC => 1 },
	BETWEEN => { ISSEMANTIC => 1 },
	BITSTRING_CONSTANT => { ISSEMANTIC => 1 },
	BY => { ISSEMANTIC => 1 },
	CACHE => { ISSEMANTIC => 1 },
	CALLED => { ISSEMANTIC => 1 },
	CASCADE => { ISSEMANTIC => 1 },
	CASCADED => { ISSEMANTIC => 1 },
	CATALOG => { ISSEMANTIC => 1 },
	CHAIN => { ISSEMANTIC => 1 },
	CHARACTERISTICS => { ISSEMANTIC => 1 },
	CHECKPOINT => { ISSEMANTIC => 1 },
	CLASS => { ISSEMANTIC => 1 },
	CLOSE => { ISSEMANTIC => 1 },
	CLUSTER => { ISSEMANTIC => 1 },
	COLLATION => { ISSEMANTIC => 1 },
	COMMENT => { ISSEMANTIC => 1 },
	COMMENTS => { ISSEMANTIC => 1 },
	COMMIT => { ISSEMANTIC => 1 },
	COMMITTED => { ISSEMANTIC => 1 },
	CONFIGURATION => { ISSEMANTIC => 1 },
	CONNECTION => { ISSEMANTIC => 1 },
	CONSTRAINTS => { ISSEMANTIC => 1 },
	CONTENT => { ISSEMANTIC => 1 },
	CONTINUE => { ISSEMANTIC => 1 },
	CONVERSION => { ISSEMANTIC => 1 },
	COPY => { ISSEMANTIC => 1 },
	COST => { ISSEMANTIC => 1 },
	CSV => { ISSEMANTIC => 1 },
	CURRENT => { ISSEMANTIC => 1 },
	CURSOR => { ISSEMANTIC => 1 },
	CYCLE => { ISSEMANTIC => 1 },
	DATA => { ISSEMANTIC => 1 },
	DATABASE => { ISSEMANTIC => 1 },
	DAY => { ISSEMANTIC => 1 },
	DEALLOCATE => { ISSEMANTIC => 1 },
	DECLARE => { ISSEMANTIC => 1 },
	DEFAULTS => { ISSEMANTIC => 1 },
	DEFERRED => { ISSEMANTIC => 1 },
	DEFINER => { ISSEMANTIC => 1 },
	DELETE => { ISSEMANTIC => 1 },
	DELIMITER => { ISSEMANTIC => 1 },
	DELIMITERS => { ISSEMANTIC => 1 },
	DICTIONARY => { ISSEMANTIC => 1 },
	DISABLE => { ISSEMANTIC => 1 },
	DISCARD => { ISSEMANTIC => 1 },
	DOCUMENT => { ISSEMANTIC => 1 },
	DOMAIN => { ISSEMANTIC => 1 },
	DOUBLE => { ISSEMANTIC => 1 },
	DROP => { ISSEMANTIC => 1 },
	EACH => { ISSEMANTIC => 1 },
	ENABLE => { ISSEMANTIC => 1 },
	ENCODING => { ISSEMANTIC => 1 },
	ENCRYPTED => { ISSEMANTIC => 1 },
	ENUM => { ISSEMANTIC => 1 },
	ESCAPE => { ISSEMANTIC => 1 },
	ESTRING_CONSTANT => { ISSEMANTIC => 1 },
	EXCLUDE => { ISSEMANTIC => 1 },
	EXCLUDING => { ISSEMANTIC => 1 },
	EXCLUSIVE => { ISSEMANTIC => 1 },
	EXECUTE => { ISSEMANTIC => 1 },
	EXPLAIN => { ISSEMANTIC => 1 },
	EXTENSION => { ISSEMANTIC => 1 },
	EXTERNAL => { ISSEMANTIC => 1 },
	FAMILY => { ISSEMANTIC => 1 },
	FIRST => { ISSEMANTIC => 1 },
	FOLLOWING => { ISSEMANTIC => 1 },
	FORCE => { ISSEMANTIC => 1 },
	FORWARD => { ISSEMANTIC => 1 },
	FUNCTION => { ISSEMANTIC => 1 },
	FUNCTIONS => { ISSEMANTIC => 1 },
	GLOBAL => { ISSEMANTIC => 1 },
	GRANTED => { ISSEMANTIC => 1 },
	HANDLER => { ISSEMANTIC => 1 },
	HEADER => { ISSEMANTIC => 1 },
	HOLD => { ISSEMANTIC => 1 },
	HOUR => { ISSEMANTIC => 1 },
	IDENTIFIER => { ISSEMANTIC => 1 },
	IDENTITY => { ISSEMANTIC => 1 },
	IF => { ISSEMANTIC => 1 },
	ILIKE => { ISSEMANTIC => 1 },
	IMMEDIATE => { ISSEMANTIC => 1 },
	IMMUTABLE => { ISSEMANTIC => 1 },
	IMPLICIT => { ISSEMANTIC => 1 },
	INCLUDING => { ISSEMANTIC => 1 },
	INCREMENT => { ISSEMANTIC => 1 },
	INDEX => { ISSEMANTIC => 1 },
	INDEXES => { ISSEMANTIC => 1 },
	INHERIT => { ISSEMANTIC => 1 },
	INHERITS => { ISSEMANTIC => 1 },
	INLINE => { ISSEMANTIC => 1 },
	INPUT => { ISSEMANTIC => 1 },
	INSENSITIVE => { ISSEMANTIC => 1 },
	INSERT => { ISSEMANTIC => 1 },
	INSTEAD => { ISSEMANTIC => 1 },
	INTEGER_CONSTANT => { ISSEMANTIC => 1 },
	INVOKER => { ISSEMANTIC => 1 },
	ISOLATION => { ISSEMANTIC => 1 },
	KEY => { ISSEMANTIC => 1 },
	LABEL => { ISSEMANTIC => 1 },
	LANGUAGE => { ISSEMANTIC => 1 },
	LARGE => { ISSEMANTIC => 1 },
	LAST => { ISSEMANTIC => 1 },
	LC_COLLATE => { ISSEMANTIC => 1 },
	LC_CTYPE => { ISSEMANTIC => 1 },
	LEVEL => { ISSEMANTIC => 1 },
	LIKE => { ISSEMANTIC => 1 },
	LISTEN => { ISSEMANTIC => 1 },
	LOAD => { ISSEMANTIC => 1 },
	LOCAL => { ISSEMANTIC => 1 },
	LOCATION => { ISSEMANTIC => 1 },
	LOCK => { ISSEMANTIC => 1 },
	MAPPING => { ISSEMANTIC => 1 },
	MATCH => { ISSEMANTIC => 1 },
	MAXVALUE => { ISSEMANTIC => 1 },
	MINUTE => { ISSEMANTIC => 1 },
	MINVALUE => { ISSEMANTIC => 1 },
	MODE => { ISSEMANTIC => 1 },
	MONTH => { ISSEMANTIC => 1 },
	MOVE => { ISSEMANTIC => 1 },
	NAME => { ISSEMANTIC => 1 },
	NAMES => { ISSEMANTIC => 1 },
	NEXT => { ISSEMANTIC => 1 },
	NO => { ISSEMANTIC => 1 },
	NOTHING => { ISSEMANTIC => 1 },
	NOTIFY => { ISSEMANTIC => 1 },
	NOWAIT => { ISSEMANTIC => 1 },
	NULLS => { ISSEMANTIC => 1 },
	NUMERIC_CONSTANT => { ISSEMANTIC => 1 },
	OBJECT => { ISSEMANTIC => 1 },
	OF => { ISSEMANTIC => 1 },
	OFF => { ISSEMANTIC => 1 },
	OIDS => { ISSEMANTIC => 1 },
	OPERATOR => { ISSEMANTIC => 1 },
	OPTION => { ISSEMANTIC => 1 },
	OPTIONS => { ISSEMANTIC => 1 },
	OWNED => { ISSEMANTIC => 1 },
	OWNER => { ISSEMANTIC => 1 },
	PARSER => { ISSEMANTIC => 1 },
	PARTIAL => { ISSEMANTIC => 1 },
	PARTITION => { ISSEMANTIC => 1 },
	PASSING => { ISSEMANTIC => 1 },
	PASSWORD => { ISSEMANTIC => 1 },
	PLANS => { ISSEMANTIC => 1 },
	PRECEDING => { ISSEMANTIC => 1 },
	PREPARE => { ISSEMANTIC => 1 },
	PREPARED => { ISSEMANTIC => 1 },
	PRESERVE => { ISSEMANTIC => 1 },
	PRIOR => { ISSEMANTIC => 1 },
	PRIVILEGES => { ISSEMANTIC => 1 },
	PROCEDURAL => { ISSEMANTIC => 1 },
	PROCEDURE => { ISSEMANTIC => 1 },
	QUOTE => { ISSEMANTIC => 1 },
	QUOTED_IDENTIFIER => { ISSEMANTIC => 1 },
	RANGE => { ISSEMANTIC => 1 },
	READ => { ISSEMANTIC => 1 },
	REASSIGN => { ISSEMANTIC => 1 },
	RECHECK => { ISSEMANTIC => 1 },
	RECURSIVE => { ISSEMANTIC => 1 },
	REF => { ISSEMANTIC => 1 },
	REINDEX => { ISSEMANTIC => 1 },
	RELATIVE => { ISSEMANTIC => 1 },
	RELEASE => { ISSEMANTIC => 1 },
	RENAME => { ISSEMANTIC => 1 },
	REPEATABLE => { ISSEMANTIC => 1 },
	REPLACE => { ISSEMANTIC => 1 },
	REPLICA => { ISSEMANTIC => 1 },
	RESET => { ISSEMANTIC => 1 },
	RESTART => { ISSEMANTIC => 1 },
	RESTRICT => { ISSEMANTIC => 1 },
	RETURNS => { ISSEMANTIC => 1 },
	REVOKE => { ISSEMANTIC => 1 },
	ROLE => { ISSEMANTIC => 1 },
	ROLLBACK => { ISSEMANTIC => 1 },
	ROWS => { ISSEMANTIC => 1 },
	RULE => { ISSEMANTIC => 1 },
	SAVEPOINT => { ISSEMANTIC => 1 },
	SCHEMA => { ISSEMANTIC => 1 },
	SCROLL => { ISSEMANTIC => 1 },
	SEARCH => { ISSEMANTIC => 1 },
	SECOND => { ISSEMANTIC => 1 },
	SECURITY => { ISSEMANTIC => 1 },
	SELECT => { ISSEMANTIC => 1 },
	SEQUENCE => { ISSEMANTIC => 1 },
	SEQUENCES => { ISSEMANTIC => 1 },
	SERIALIZABLE => { ISSEMANTIC => 1 },
	SERVER => { ISSEMANTIC => 1 },
	SESSION => { ISSEMANTIC => 1 },
	SET => { ISSEMANTIC => 1 },
	SHARE => { ISSEMANTIC => 1 },
	SHOW => { ISSEMANTIC => 1 },
	SIMPLE => { ISSEMANTIC => 1 },
	STABLE => { ISSEMANTIC => 1 },
	STANDALONE => { ISSEMANTIC => 1 },
	START => { ISSEMANTIC => 1 },
	STATEMENT => { ISSEMANTIC => 1 },
	STATISTICS => { ISSEMANTIC => 1 },
	STDIN => { ISSEMANTIC => 1 },
	STDOUT => { ISSEMANTIC => 1 },
	STORAGE => { ISSEMANTIC => 1 },
	STRICT => { ISSEMANTIC => 1 },
	STRING_CONSTANT => { ISSEMANTIC => 1 },
	STRIP => { ISSEMANTIC => 1 },
	SYSID => { ISSEMANTIC => 1 },
	SYSTEM => { ISSEMANTIC => 1 },
	TABLES => { ISSEMANTIC => 1 },
	TABLESPACE => { ISSEMANTIC => 1 },
	TEMP => { ISSEMANTIC => 1 },
	TEMPLATE => { ISSEMANTIC => 1 },
	TEMPORARY => { ISSEMANTIC => 1 },
	TEXT => { ISSEMANTIC => 1 },
	TRANSACTION => { ISSEMANTIC => 1 },
	TRIGGER => { ISSEMANTIC => 1 },
	TRUNCATE => { ISSEMANTIC => 1 },
	TRUSTED => { ISSEMANTIC => 1 },
	TYPE => { ISSEMANTIC => 1 },
	UNBOUNDED => { ISSEMANTIC => 1 },
	UNCOMMITTED => { ISSEMANTIC => 1 },
	UNENCRYPTED => { ISSEMANTIC => 1 },
	UNKNOWN => { ISSEMANTIC => 1 },
	UNLISTEN => { ISSEMANTIC => 1 },
	UNLOGGED => { ISSEMANTIC => 1 },
	UNTIL => { ISSEMANTIC => 1 },
	UPDATE => { ISSEMANTIC => 1 },
	UQUOTED_IDENTIFIER => { ISSEMANTIC => 1 },
	USTRING_CONSTANT => { ISSEMANTIC => 1 },
	VACUUM => { ISSEMANTIC => 1 },
	VALID => { ISSEMANTIC => 1 },
	VALIDATE => { ISSEMANTIC => 1 },
	VALIDATOR => { ISSEMANTIC => 1 },
	VALUE => { ISSEMANTIC => 1 },
	VARYING => { ISSEMANTIC => 1 },
	VERSION => { ISSEMANTIC => 1 },
	VIEW => { ISSEMANTIC => 1 },
	VOLATILE => { ISSEMANTIC => 1 },
	WHITESPACE => { ISSEMANTIC => 1 },
	WITHOUT => { ISSEMANTIC => 1 },
	WORK => { ISSEMANTIC => 1 },
	WRAPPER => { ISSEMANTIC => 1 },
	WRITE => { ISSEMANTIC => 1 },
	XBITSTRING_CONSTANT => { ISSEMANTIC => 1 },
	XML => { ISSEMANTIC => 1 },
	YEAR => { ISSEMANTIC => 1 },
	YES => { ISSEMANTIC => 1 },
	ZONE => { ISSEMANTIC => 1 },
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
			'INPUT' => 56,
			'SYSID' => 55,
			'VACUUM' => 54,
			'REPLACE' => 58,
			'SERIALIZABLE' => 57,
			'AT' => 61,
			'INSENSITIVE' => 60,
			'SCHEMA' => 59,
			'RETURNS' => 62,
			'LC_COLLATE' => 63,
			'INDEX' => 64,
			'DEFINER' => 65,
			'INVOKER' => 66,
			'WORK' => 67,
			'ADMIN' => 71,
			'INCLUDING' => 70,
			'OWNED' => 69,
			'PASSING' => 68,
			'INSTEAD' => 73,
			'MODE' => 72,
			'INHERITS' => 74,
			'ESCAPE' => 76,
			'VALUE' => 75,
			'DROP' => 77,
			'MONTH' => 78,
			'EACH' => 79,
			'ENCODING' => 80,
			'TRUSTED' => 81,
			'EXCLUSIVE' => 83,
			'OWNER' => 82,
			'TEMPLATE' => 84,
			'DICTIONARY' => 85,
			'SEARCH' => 86,
			'LOCK' => 88,
			'PREPARE' => 87,
			'DEFAULTS' => 89,
			'CASCADE' => 92,
			'BY' => 91,
			'STATEMENT' => 90,
			'NO' => 93,
			'MINUTE' => 94,
			'ASSIGNMENT' => 99,
			'DATA' => 98,
			'DAY' => 97,
			'PARTITION' => 96,
			'RANGE' => 95,
			'REF' => 101,
			'SHARE' => 100,
			'MATCH' => 102,
			'CLASS' => 105,
			'DOUBLE' => 104,
			'MOVE' => 103,
			'LARGE' => 106,
			'DELETE' => 107,
			'CONNECTION' => 110,
			'CURSOR' => 109,
			'INLINE' => 108,
			'BACKWARD' => 112,
			'CLOSE' => 111,
			'COST' => 113,
			'ENCRYPTED' => 116,
			'EXTENSION' => 115,
			'REPLICA' => 114,
			'CHAIN' => 117,
			'RECURSIVE' => 118,
			'PRIVILEGES' => 119,
			'VALIDATOR' => 120,
			'UQUOTED_IDENTIFIER' => 121,
			'ZONE' => 122,
			'CASCADED' => 123,
			'DISCARD' => 124,
			'STATISTICS' => 125,
			'CALLED' => 126,
			'SECURITY' => 127,
			'ABORT' => 129,
			'INCREMENT' => 130,
			'FORCE' => 132,
			'LEVEL' => 131,
			'BEFORE' => 134,
			'TRUNCATE' => 133,
			'IDENTIFIER' => 137,
			'ABSOLUTE' => 136,
			'SHOW' => 135,
			'PLANS' => 138,
			'PARTIAL' => 139,
			'SEQUENCES' => 140,
			'EXCLUDE' => 143,
			'PRESERVE' => 142,
			'UPDATE' => 141,
			'CHARACTERISTICS' => 146,
			'SECOND' => 145,
			'WHITESPACE' => 144,
			'VALIDATE' => 147,
			'STRICT' => 148,
			'HOUR' => 149,
			'VARYING' => 150,
			'FOLLOWING' => 151,
			'LISTEN' => 155,
			'REASSIGN' => 154,
			'WRAPPER' => 153,
			'VOLATILE' => 156,
			'LANGUAGE' => 157,
			'STANDALONE' => 160,
			'TEMP' => 159,
			'YEAR' => 158,
			'LABEL' => 162,
			'ROLLBACK' => 161,
			'COPY' => 163,
			'OBJECT' => 165,
			'WITHOUT' => 164,
			'DELIMITERS' => 167,
			'PROCEDURE' => 166,
			'RULE' => 168,
			'OPTIONS' => 169,
			'INSERT' => 170,
			'HANDLER' => 173,
			'PROCEDURAL' => 172,
			'YES' => 171,
			'SEQUENCE' => 174,
			'LOCATION' => 176,
			'SIMPLE' => 175,
			'IMMUTABLE' => 177,
			'RELEASE' => 178,
			'NULLS' => 179,
			'TYPE' => 180,
			'IDENTITY' => 182,
			'QUOTE' => 181,
			'RESET' => 183,
			'NOWAIT' => 184,
			'DOMAIN' => 187,
			'EXECUTE' => 186,
			'PRIOR' => 185,
			'UNKNOWN' => 188,
			'OFF' => 189,
			'SET' => 190,
			'IMMEDIATE' => 192,
			'COMMENT' => 191,
			'DELIMITER' => 193,
			'CONTENT' => 194,
			'QUOTED_IDENTIFIER' => 195,
			'REINDEX' => 196,
			'ACCESS' => 198,
			'SERVER' => 197,
			'RELATIVE' => 199,
			'OPTION' => 201,
			'TRANSACTION' => 200,
			'COMMENTS' => 202,
			'DEALLOCATE' => 205,
			'CONFIGURATION' => 204,
			'NAMES' => 203,
			'CATALOG' => 208,
			'PARSER' => 207,
			'RENAME' => 206,
			'MAPPING' => 212,
			'CURRENT' => 211,
			'ALTER' => 210,
			'RESTART' => 209,
			'OF' => 213,
			'IMPLICIT' => 214,
			'CONTINUE' => 216,
			'UNLOGGED' => 215,
			'CLUSTER' => 217,
			'READ' => 219,
			'UNBOUNDED' => 218,
			'PRECEDING' => 220,
			'STABLE' => 221,
			'PASSWORD' => 222,
			'RECHECK' => 223,
			'NEXT' => 226,
			'PREPARED' => 225,
			'XML' => 224,
			'TEMPORARY' => 227,
			'COMMITTED' => 229,
			'SCROLL' => 228,
			'TEXT' => 230,
			'GRANTED' => 231,
			'FUNCTION' => 235,
			'ALSO' => 234,
			'BEGIN' => 233,
			'NOTIFY' => 232,
			'HEADER' => 238,
			'AGGREGATE' => 237,
			'SYSTEM' => 236,
			'ATTRIBUTE' => 239,
			'LC_CTYPE' => 240,
			'NAME' => 241,
			'ADD' => 242,
			'STRIP' => 243,
			'TABLESPACE' => 244,
			'ISOLATION' => 247,
			'FUNCTIONS' => 246,
			'STORAGE' => 245,
			'STDIN' => 248,
			'DEFERRED' => 250,
			'VIEW' => 249,
			'REPEATABLE' => 251,
			'RESTRICT' => 252,
			'CYCLE' => 254,
			'UNCOMMITTED' => 253,
			'ALWAYS' => 255,
			'MAXVALUE' => 256,
			'FORWARD' => 258,
			'CONSTRAINTS' => 257,
			'NOTHING' => 260,
			'START' => 259,
			'IF' => 264,
			'EXCLUDING' => 263,
			'DOCUMENT' => 262,
			'SAVEPOINT' => 261,
			'ROWS' => 265,
			'LAST' => 267,
			'MINVALUE' => 266,
			'INDEXES' => 269,
			'CHECKPOINT' => 268,
			'KEY' => 270,
			'CACHE' => 271,
			'OPERATOR' => 273,
			'UNTIL' => 272,
			'HOLD' => 275,
			'COMMIT' => 274,
			'DECLARE' => 276,
			'ACTION' => 278,
			'UNLISTEN' => 277,
			'LOAD' => 280,
			'WRITE' => 279,
			'ROLE' => 281,
			'FAMILY' => 283,
			'SESSION' => 282,
			'CONVERSION' => 284,
			'ENUM' => 286,
			'DATABASE' => 285,
			'ASSERTION' => 287,
			'GLOBAL' => 288,
			'EXTERNAL' => 289,
			'ENABLE' => 290,
			'LOCAL' => 291,
			'STDOUT' => 292,
			'REVOKE' => 293,
			'INHERIT' => 296,
			'TABLES' => 295,
			'VALID' => 294,
			'TRIGGER' => 297,
			'EXPLAIN' => 299,
			'COLLATION' => 298,
			'UNENCRYPTED' => 300,
			'OIDS' => 301,
			'FIRST' => 303,
			'AFTER' => 302,
			'DISABLE' => 305,
			'CSV' => 304,
			'VERSION' => 306
		},
		GOTOS => {
			'identifier' => 128,
			'keywords_notreserved' => 152
		}
	},
	{#State 39
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'OPERATOR' => 10,
			'STRING_CONSTANT' => 15,
			'USTRING_CONSTANT' => 13,
			"(" => 16,
			'ESTRING_CONSTANT' => 18,
			'NUMERIC_CONSTANT' => 17,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 14,
			'expr' => 307,
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
			'AND' => 308,
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
		DEFAULT => -270
	},
	{#State 55
		DEFAULT => -249
	},
	{#State 56
		DEFAULT => -143
	},
	{#State 57
		DEFAULT => -232
	},
	{#State 58
		DEFAULT => -213
	},
	{#State 59
		DEFAULT => -225
	},
	{#State 60
		DEFAULT => -144
	},
	{#State 61
		DEFAULT => -53
	},
	{#State 62
		DEFAULT => -218
	},
	{#State 63
		DEFAULT => -154
	},
	{#State 64
		DEFAULT => -138
	},
	{#State 65
		DEFAULT => -94
	},
	{#State 66
		DEFAULT => -147
	},
	{#State 67
		DEFAULT => -281
	},
	{#State 68
		DEFAULT => -190
	},
	{#State 69
		DEFAULT => -185
	},
	{#State 70
		DEFAULT => -136
	},
	{#State 71
		DEFAULT => -45
	},
	{#State 72
		DEFAULT => -167
	},
	{#State 73
		DEFAULT => -146
	},
	{#State 74
		DEFAULT => -141
	},
	{#State 75
		DEFAULT => -274
	},
	{#State 76
		DEFAULT => -110
	},
	{#State 77
		DEFAULT => -104
	},
	{#State 78
		DEFAULT => -168
	},
	{#State 79
		DEFAULT => -105
	},
	{#State 80
		DEFAULT => -107
	},
	{#State 81
		DEFAULT => -260
	},
	{#State 82
		DEFAULT => -186
	},
	{#State 83
		DEFAULT => -113
	},
	{#State 84
		DEFAULT => -254
	},
	{#State 85
		DEFAULT => -98
	},
	{#State 86
		DEFAULT => -227
	},
	{#State 87
		DEFAULT => -194
	},
	{#State 88
		DEFAULT => -161
	},
	{#State 89
		DEFAULT => -92
	},
	{#State 90
		DEFAULT => -242
	},
	{#State 91
		DEFAULT => -58
	},
	{#State 92
		DEFAULT => -61
	},
	{#State 93
		DEFAULT => -173
	},
	{#State 94
		DEFAULT => -165
	},
	{#State 95
		DEFAULT => -202
	},
	{#State 96
		DEFAULT => -189
	},
	{#State 97
		DEFAULT => -89
	},
	{#State 98
		DEFAULT => -87
	},
	{#State 99
		DEFAULT => -52
	},
	{#State 100
		DEFAULT => -236
	},
	{#State 101
		DEFAULT => -207
	},
	{#State 102
		DEFAULT => -163
	},
	{#State 103
		DEFAULT => -169
	},
	{#State 104
		DEFAULT => -103
	},
	{#State 105
		DEFAULT => -67
	},
	{#State 106
		DEFAULT => -152
	},
	{#State 107
		DEFAULT => -95
	},
	{#State 108
		DEFAULT => -142
	},
	{#State 109
		DEFAULT => -85
	},
	{#State 110
		DEFAULT => -76
	},
	{#State 111
		DEFAULT => -68
	},
	{#State 112
		DEFAULT => -55
	},
	{#State 113
		DEFAULT => -82
	},
	{#State 114
		DEFAULT => -214
	},
	{#State 115
		DEFAULT => -116
	},
	{#State 116
		DEFAULT => -108
	},
	{#State 117
		DEFAULT => -64
	},
	{#State 118
		DEFAULT => -206
	},
	{#State 119
		DEFAULT => -198
	},
	{#State 120
		DEFAULT => -273
	},
	{#State 121
		DEFAULT => -37
	},
	{#State 122
		DEFAULT => -287
	},
	{#State 123
		DEFAULT => -62
	},
	{#State 124
		DEFAULT => -100
	},
	{#State 125
		DEFAULT => -243
	},
	{#State 126
		DEFAULT => -60
	},
	{#State 127
		DEFAULT => -229
	},
	{#State 128
		DEFAULT => -10
	},
	{#State 129
		DEFAULT => -40
	},
	{#State 130
		DEFAULT => -137
	},
	{#State 131
		DEFAULT => -156
	},
	{#State 132
		DEFAULT => -121
	},
	{#State 133
		DEFAULT => -259
	},
	{#State 134
		DEFAULT => -56
	},
	{#State 135
		DEFAULT => -237
	},
	{#State 136
		DEFAULT => -41
	},
	{#State 137
		DEFAULT => -38
	},
	{#State 138
		DEFAULT => -192
	},
	{#State 139
		DEFAULT => -188
	},
	{#State 140
		DEFAULT => -231
	},
	{#State 141
		DEFAULT => -269
	},
	{#State 142
		DEFAULT => -196
	},
	{#State 143
		DEFAULT => -111
	},
	{#State 144
		DEFAULT => -279
	},
	{#State 145
		DEFAULT => -228
	},
	{#State 146
		DEFAULT => -65
	},
	{#State 147
		DEFAULT => -272
	},
	{#State 148
		DEFAULT => -247
	},
	{#State 149
		DEFAULT => -130
	},
	{#State 150
		DEFAULT => -275
	},
	{#State 151
		DEFAULT => -120
	},
	{#State 152
		DEFAULT => -39
	},
	{#State 153
		DEFAULT => -282
	},
	{#State 154
		DEFAULT => -204
	},
	{#State 155
		DEFAULT => -157
	},
	{#State 156
		DEFAULT => -278
	},
	{#State 157
		DEFAULT => -151
	},
	{#State 158
		DEFAULT => -285
	},
	{#State 159
		DEFAULT => -253
	},
	{#State 160
		DEFAULT => -240
	},
	{#State 161
		DEFAULT => -221
	},
	{#State 162
		DEFAULT => -150
	},
	{#State 163
		DEFAULT => -81
	},
	{#State 164
		DEFAULT => -280
	},
	{#State 165
		DEFAULT => -178
	},
	{#State 166
		DEFAULT => -200
	},
	{#State 167
		DEFAULT => -97
	},
	{#State 168
		DEFAULT => -223
	},
	{#State 169
		DEFAULT => -184
	},
	{#State 170
		DEFAULT => -145
	},
	{#State 171
		DEFAULT => -286
	},
	{#State 172
		DEFAULT => -199
	},
	{#State 173
		DEFAULT => -127
	},
	{#State 174
		DEFAULT => -230
	},
	{#State 175
		DEFAULT => -238
	},
	{#State 176
		DEFAULT => -160
	},
	{#State 177
		DEFAULT => -134
	},
	{#State 178
		DEFAULT => -210
	},
	{#State 179
		DEFAULT => -177
	},
	{#State 180
		DEFAULT => -261
	},
	{#State 181
		DEFAULT => -201
	},
	{#State 182
		DEFAULT => -131
	},
	{#State 183
		DEFAULT => -215
	},
	{#State 184
		DEFAULT => -176
	},
	{#State 185
		DEFAULT => -197
	},
	{#State 186
		DEFAULT => -114
	},
	{#State 187
		DEFAULT => -102
	},
	{#State 188
		DEFAULT => -265
	},
	{#State 189
		DEFAULT => -180
	},
	{#State 190
		DEFAULT => -235
	},
	{#State 191
		DEFAULT => -71
	},
	{#State 192
		DEFAULT => -133
	},
	{#State 193
		DEFAULT => -96
	},
	{#State 194
		DEFAULT => -78
	},
	{#State 195
		DEFAULT => -36
	},
	{#State 196
		DEFAULT => -208
	},
	{#State 197
		DEFAULT => -233
	},
	{#State 198
		DEFAULT => -42
	},
	{#State 199
		DEFAULT => -209
	},
	{#State 200
		DEFAULT => -257
	},
	{#State 201
		DEFAULT => -183
	},
	{#State 202
		DEFAULT => -72
	},
	{#State 203
		DEFAULT => -171
	},
	{#State 204
		DEFAULT => -75
	},
	{#State 205
		DEFAULT => -90
	},
	{#State 206
		DEFAULT => -211
	},
	{#State 207
		DEFAULT => -187
	},
	{#State 208
		DEFAULT => -63
	},
	{#State 209
		DEFAULT => -216
	},
	{#State 210
		DEFAULT => -49
	},
	{#State 211
		DEFAULT => -84
	},
	{#State 212
		DEFAULT => -162
	},
	{#State 213
		DEFAULT => -179
	},
	{#State 214
		DEFAULT => -135
	},
	{#State 215
		DEFAULT => -267
	},
	{#State 216
		DEFAULT => -79
	},
	{#State 217
		DEFAULT => -69
	},
	{#State 218
		DEFAULT => -262
	},
	{#State 219
		DEFAULT => -203
	},
	{#State 220
		DEFAULT => -193
	},
	{#State 221
		DEFAULT => -239
	},
	{#State 222
		DEFAULT => -191
	},
	{#State 223
		DEFAULT => -205
	},
	{#State 224
		DEFAULT => -284
	},
	{#State 225
		DEFAULT => -195
	},
	{#State 226
		DEFAULT => -172
	},
	{#State 227
		DEFAULT => -255
	},
	{#State 228
		DEFAULT => -226
	},
	{#State 229
		DEFAULT => -74
	},
	{#State 230
		DEFAULT => -256
	},
	{#State 231
		DEFAULT => -126
	},
	{#State 232
		DEFAULT => -175
	},
	{#State 233
		DEFAULT => -57
	},
	{#State 234
		DEFAULT => -48
	},
	{#State 235
		DEFAULT => -123
	},
	{#State 236
		DEFAULT => -250
	},
	{#State 237
		DEFAULT => -47
	},
	{#State 238
		DEFAULT => -128
	},
	{#State 239
		DEFAULT => -54
	},
	{#State 240
		DEFAULT => -155
	},
	{#State 241
		DEFAULT => -170
	},
	{#State 242
		DEFAULT => -44
	},
	{#State 243
		DEFAULT => -248
	},
	{#State 244
		DEFAULT => -252
	},
	{#State 245
		DEFAULT => -246
	},
	{#State 246
		DEFAULT => -124
	},
	{#State 247
		DEFAULT => -148
	},
	{#State 248
		DEFAULT => -244
	},
	{#State 249
		DEFAULT => -277
	},
	{#State 250
		DEFAULT => -93
	},
	{#State 251
		DEFAULT => -212
	},
	{#State 252
		DEFAULT => -217
	},
	{#State 253
		DEFAULT => -263
	},
	{#State 254
		DEFAULT => -86
	},
	{#State 255
		DEFAULT => -50
	},
	{#State 256
		DEFAULT => -164
	},
	{#State 257
		DEFAULT => -77
	},
	{#State 258
		DEFAULT => -122
	},
	{#State 259
		DEFAULT => -241
	},
	{#State 260
		DEFAULT => -174
	},
	{#State 261
		DEFAULT => -224
	},
	{#State 262
		DEFAULT => -101
	},
	{#State 263
		DEFAULT => -112
	},
	{#State 264
		DEFAULT => -132
	},
	{#State 265
		DEFAULT => -222
	},
	{#State 266
		DEFAULT => -166
	},
	{#State 267
		DEFAULT => -153
	},
	{#State 268
		DEFAULT => -66
	},
	{#State 269
		DEFAULT => -139
	},
	{#State 270
		DEFAULT => -149
	},
	{#State 271
		DEFAULT => -59
	},
	{#State 272
		DEFAULT => -268
	},
	{#State 273
		DEFAULT => -182
	},
	{#State 274
		DEFAULT => -73
	},
	{#State 275
		DEFAULT => -129
	},
	{#State 276
		DEFAULT => -91
	},
	{#State 277
		DEFAULT => -266
	},
	{#State 278
		DEFAULT => -43
	},
	{#State 279
		DEFAULT => -283
	},
	{#State 280
		DEFAULT => -158
	},
	{#State 281
		DEFAULT => -220
	},
	{#State 282
		DEFAULT => -234
	},
	{#State 283
		DEFAULT => -118
	},
	{#State 284
		DEFAULT => -80
	},
	{#State 285
		DEFAULT => -88
	},
	{#State 286
		DEFAULT => -109
	},
	{#State 287
		DEFAULT => -51
	},
	{#State 288
		DEFAULT => -125
	},
	{#State 289
		DEFAULT => -117
	},
	{#State 290
		DEFAULT => -106
	},
	{#State 291
		DEFAULT => -159
	},
	{#State 292
		DEFAULT => -245
	},
	{#State 293
		DEFAULT => -219
	},
	{#State 294
		DEFAULT => -271
	},
	{#State 295
		DEFAULT => -251
	},
	{#State 296
		DEFAULT => -140
	},
	{#State 297
		DEFAULT => -258
	},
	{#State 298
		DEFAULT => -70
	},
	{#State 299
		DEFAULT => -115
	},
	{#State 300
		DEFAULT => -264
	},
	{#State 301
		DEFAULT => -181
	},
	{#State 302
		DEFAULT => -46
	},
	{#State 303
		DEFAULT => -119
	},
	{#State 304
		DEFAULT => -83
	},
	{#State 305
		DEFAULT => -99
	},
	{#State 306
		DEFAULT => -276
	},
	{#State 307
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
	{#State 308
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'OPERATOR' => 10,
			'STRING_CONSTANT' => 15,
			'USTRING_CONSTANT' => 13,
			"(" => 16,
			'ESTRING_CONSTANT' => 18,
			'NUMERIC_CONSTANT' => 17,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 14,
			'expr' => 309,
			'expr_simple' => 11
		}
	},
	{#State 309
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
#line 2582 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule top_1
		 'top', 1,
sub {
#line 20 "SQL.eyp"
 $_[1] }
#line 2589 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_2
		 'statements', 1,
sub {
#line 23 "SQL.eyp"
 [ $_[1] ] }
#line 2596 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_3
		 'statements', 3,
sub {
#line 24 "SQL.eyp"
 push @{ $_[1] }, $_[3]; $_[1] }
#line 2603 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_4
		 'statements', 2,
sub {
#line 25 "SQL.eyp"
 $_[1] }
#line 2610 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statement_5
		 'statement', 1,
sub {
#line 28 "SQL.eyp"
 $_[1] }
#line 2617 ../lib/Pg/SQL/Parser/SQL.pm
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
#line 2633 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_columns_7
		 'result_columns', 1,
sub {
#line 43 "SQL.eyp"
 [ $_[1] ] }
#line 2640 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_columns_8
		 'result_columns', 3,
sub {
#line 44 "SQL.eyp"
 push @{ $_[1] }, $_[3]; $_[1] }
#line 2647 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_column_9
		 'result_column', 1,
sub {
#line 47 "SQL.eyp"
 [ $_[1], undef ] }
#line 2654 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_column_10
		 'result_column', 3,
sub {
#line 48 "SQL.eyp"
 [ $_[1], $_[3] ] }
#line 2661 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_11
		 'expr', 1,
sub {
#line 51 "SQL.eyp"
 $_[1] }
#line 2668 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_12
		 'expr', 5,
sub {
#line 52 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => [ $_[3], $_[5] ] ) }
#line 2675 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_13
		 'expr', 2,
sub {
#line 53 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1] ) }
#line 2682 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_14
		 'expr', 2,
sub {
#line 54 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[1], 'right' => $_[2] ) }
#line 2689 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_15
		 'expr', 3,
sub {
#line 55 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 2696 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_16
		 'expr', 3,
sub {
#line 56 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 2703 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_17
		 'expr', 3,
sub {
#line 57 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 2710 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_18
		 'expr', 3,
sub {
#line 58 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 2717 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_19
		 'expr', 3,
sub {
#line 59 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 2724 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_20
		 'expr', 3,
sub {
#line 60 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 2731 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_21
		 'expr', 3,
sub {
#line 61 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 2738 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_22
		 'expr', 3,
sub {
#line 62 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 2745 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_23
		 'expr', 3,
sub {
#line 63 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 2752 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_24
		 'expr', 3,
sub {
#line 64 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 2759 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_25
		 'expr', 3,
sub {
#line 65 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 2766 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_26
		 'expr', 3,
sub {
#line 66 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 2773 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_simple_27
		 'expr_simple', 1,
sub {
#line 69 "SQL.eyp"
 $_[1] }
#line 2780 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_simple_28
		 'expr_simple', 3,
sub {
#line 70 "SQL.eyp"
 $_[2] }
#line 2787 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_29
		 'literal_value', 1,
sub {
#line 73 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'STRING_CONSTANT',     'value' => $_[1] ) }
#line 2794 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_30
		 'literal_value', 1,
sub {
#line 74 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'USTRING_CONSTANT',    'value' => $_[1] ) }
#line 2801 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_31
		 'literal_value', 1,
sub {
#line 75 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'ESTRING_CONSTANT',    'value' => $_[1] ) }
#line 2808 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_32
		 'literal_value', 1,
sub {
#line 76 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'BITSTRING_CONSTANT',  'value' => $_[1] ) }
#line 2815 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_33
		 'literal_value', 1,
sub {
#line 77 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'XBITSTRING_CONSTANT', 'value' => $_[1] ) }
#line 2822 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_34
		 'literal_value', 1,
sub {
#line 78 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'NUMERIC_CONSTANT',    'value' => $_[1] ) }
#line 2829 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_35
		 'literal_value', 1,
sub {
#line 79 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'INTEGER_CONSTANT',    'value' => $_[1] ) }
#line 2836 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_36
		 'identifier', 1,
sub {
#line 82 "SQL.eyp"
 $_[1] }
#line 2843 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_37
		 'identifier', 1,
sub {
#line 83 "SQL.eyp"
 $_[1] }
#line 2850 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_38
		 'identifier', 1,
sub {
#line 84 "SQL.eyp"
 $_[1] }
#line 2857 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_39
		 'identifier', 1,
sub {
#line 85 "SQL.eyp"
 $_[1] }
#line 2864 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_40
		 'keywords_notreserved', 1, undef
#line 2868 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_41
		 'keywords_notreserved', 1, undef
#line 2872 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_42
		 'keywords_notreserved', 1, undef
#line 2876 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_43
		 'keywords_notreserved', 1, undef
#line 2880 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_44
		 'keywords_notreserved', 1, undef
#line 2884 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_45
		 'keywords_notreserved', 1, undef
#line 2888 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_46
		 'keywords_notreserved', 1, undef
#line 2892 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_47
		 'keywords_notreserved', 1, undef
#line 2896 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_48
		 'keywords_notreserved', 1, undef
#line 2900 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_49
		 'keywords_notreserved', 1, undef
#line 2904 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_50
		 'keywords_notreserved', 1, undef
#line 2908 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_51
		 'keywords_notreserved', 1, undef
#line 2912 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_52
		 'keywords_notreserved', 1, undef
#line 2916 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_53
		 'keywords_notreserved', 1, undef
#line 2920 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_54
		 'keywords_notreserved', 1, undef
#line 2924 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_55
		 'keywords_notreserved', 1, undef
#line 2928 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_56
		 'keywords_notreserved', 1, undef
#line 2932 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_57
		 'keywords_notreserved', 1, undef
#line 2936 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_58
		 'keywords_notreserved', 1, undef
#line 2940 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_59
		 'keywords_notreserved', 1, undef
#line 2944 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_60
		 'keywords_notreserved', 1, undef
#line 2948 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_61
		 'keywords_notreserved', 1, undef
#line 2952 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_62
		 'keywords_notreserved', 1, undef
#line 2956 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_63
		 'keywords_notreserved', 1, undef
#line 2960 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_64
		 'keywords_notreserved', 1, undef
#line 2964 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_65
		 'keywords_notreserved', 1, undef
#line 2968 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_66
		 'keywords_notreserved', 1, undef
#line 2972 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_67
		 'keywords_notreserved', 1, undef
#line 2976 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_68
		 'keywords_notreserved', 1, undef
#line 2980 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_69
		 'keywords_notreserved', 1, undef
#line 2984 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_70
		 'keywords_notreserved', 1, undef
#line 2988 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_71
		 'keywords_notreserved', 1, undef
#line 2992 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_72
		 'keywords_notreserved', 1, undef
#line 2996 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_73
		 'keywords_notreserved', 1, undef
#line 3000 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_74
		 'keywords_notreserved', 1, undef
#line 3004 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_75
		 'keywords_notreserved', 1, undef
#line 3008 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_76
		 'keywords_notreserved', 1, undef
#line 3012 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_77
		 'keywords_notreserved', 1, undef
#line 3016 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_78
		 'keywords_notreserved', 1, undef
#line 3020 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_79
		 'keywords_notreserved', 1, undef
#line 3024 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_80
		 'keywords_notreserved', 1, undef
#line 3028 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_81
		 'keywords_notreserved', 1, undef
#line 3032 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_82
		 'keywords_notreserved', 1, undef
#line 3036 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_83
		 'keywords_notreserved', 1, undef
#line 3040 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_84
		 'keywords_notreserved', 1, undef
#line 3044 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_85
		 'keywords_notreserved', 1, undef
#line 3048 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_86
		 'keywords_notreserved', 1, undef
#line 3052 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_87
		 'keywords_notreserved', 1, undef
#line 3056 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_88
		 'keywords_notreserved', 1, undef
#line 3060 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_89
		 'keywords_notreserved', 1, undef
#line 3064 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_90
		 'keywords_notreserved', 1, undef
#line 3068 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_91
		 'keywords_notreserved', 1, undef
#line 3072 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_92
		 'keywords_notreserved', 1, undef
#line 3076 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_93
		 'keywords_notreserved', 1, undef
#line 3080 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_94
		 'keywords_notreserved', 1, undef
#line 3084 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_95
		 'keywords_notreserved', 1, undef
#line 3088 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_96
		 'keywords_notreserved', 1, undef
#line 3092 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_97
		 'keywords_notreserved', 1, undef
#line 3096 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_98
		 'keywords_notreserved', 1, undef
#line 3100 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_99
		 'keywords_notreserved', 1, undef
#line 3104 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_100
		 'keywords_notreserved', 1, undef
#line 3108 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_101
		 'keywords_notreserved', 1, undef
#line 3112 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_102
		 'keywords_notreserved', 1, undef
#line 3116 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_103
		 'keywords_notreserved', 1, undef
#line 3120 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_104
		 'keywords_notreserved', 1, undef
#line 3124 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_105
		 'keywords_notreserved', 1, undef
#line 3128 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_106
		 'keywords_notreserved', 1, undef
#line 3132 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_107
		 'keywords_notreserved', 1, undef
#line 3136 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_108
		 'keywords_notreserved', 1, undef
#line 3140 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_109
		 'keywords_notreserved', 1, undef
#line 3144 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_110
		 'keywords_notreserved', 1, undef
#line 3148 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_111
		 'keywords_notreserved', 1, undef
#line 3152 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_112
		 'keywords_notreserved', 1, undef
#line 3156 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_113
		 'keywords_notreserved', 1, undef
#line 3160 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_114
		 'keywords_notreserved', 1, undef
#line 3164 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_115
		 'keywords_notreserved', 1, undef
#line 3168 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_116
		 'keywords_notreserved', 1, undef
#line 3172 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_117
		 'keywords_notreserved', 1, undef
#line 3176 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_118
		 'keywords_notreserved', 1, undef
#line 3180 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_119
		 'keywords_notreserved', 1, undef
#line 3184 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_120
		 'keywords_notreserved', 1, undef
#line 3188 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_121
		 'keywords_notreserved', 1, undef
#line 3192 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_122
		 'keywords_notreserved', 1, undef
#line 3196 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_123
		 'keywords_notreserved', 1, undef
#line 3200 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_124
		 'keywords_notreserved', 1, undef
#line 3204 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_125
		 'keywords_notreserved', 1, undef
#line 3208 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_126
		 'keywords_notreserved', 1, undef
#line 3212 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_127
		 'keywords_notreserved', 1, undef
#line 3216 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_128
		 'keywords_notreserved', 1, undef
#line 3220 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_129
		 'keywords_notreserved', 1, undef
#line 3224 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_130
		 'keywords_notreserved', 1, undef
#line 3228 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_131
		 'keywords_notreserved', 1, undef
#line 3232 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_132
		 'keywords_notreserved', 1, undef
#line 3236 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_133
		 'keywords_notreserved', 1, undef
#line 3240 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_134
		 'keywords_notreserved', 1, undef
#line 3244 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_135
		 'keywords_notreserved', 1, undef
#line 3248 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_136
		 'keywords_notreserved', 1, undef
#line 3252 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_137
		 'keywords_notreserved', 1, undef
#line 3256 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_138
		 'keywords_notreserved', 1, undef
#line 3260 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_139
		 'keywords_notreserved', 1, undef
#line 3264 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_140
		 'keywords_notreserved', 1, undef
#line 3268 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_141
		 'keywords_notreserved', 1, undef
#line 3272 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_142
		 'keywords_notreserved', 1, undef
#line 3276 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_143
		 'keywords_notreserved', 1, undef
#line 3280 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_144
		 'keywords_notreserved', 1, undef
#line 3284 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_145
		 'keywords_notreserved', 1, undef
#line 3288 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_146
		 'keywords_notreserved', 1, undef
#line 3292 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_147
		 'keywords_notreserved', 1, undef
#line 3296 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_148
		 'keywords_notreserved', 1, undef
#line 3300 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_149
		 'keywords_notreserved', 1, undef
#line 3304 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_150
		 'keywords_notreserved', 1, undef
#line 3308 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_151
		 'keywords_notreserved', 1, undef
#line 3312 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_152
		 'keywords_notreserved', 1, undef
#line 3316 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_153
		 'keywords_notreserved', 1, undef
#line 3320 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_154
		 'keywords_notreserved', 1, undef
#line 3324 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_155
		 'keywords_notreserved', 1, undef
#line 3328 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_156
		 'keywords_notreserved', 1, undef
#line 3332 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_157
		 'keywords_notreserved', 1, undef
#line 3336 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_158
		 'keywords_notreserved', 1, undef
#line 3340 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_159
		 'keywords_notreserved', 1, undef
#line 3344 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_160
		 'keywords_notreserved', 1, undef
#line 3348 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_161
		 'keywords_notreserved', 1, undef
#line 3352 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_162
		 'keywords_notreserved', 1, undef
#line 3356 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_163
		 'keywords_notreserved', 1, undef
#line 3360 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_164
		 'keywords_notreserved', 1, undef
#line 3364 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_165
		 'keywords_notreserved', 1, undef
#line 3368 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_166
		 'keywords_notreserved', 1, undef
#line 3372 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_167
		 'keywords_notreserved', 1, undef
#line 3376 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_168
		 'keywords_notreserved', 1, undef
#line 3380 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_169
		 'keywords_notreserved', 1, undef
#line 3384 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_170
		 'keywords_notreserved', 1, undef
#line 3388 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_171
		 'keywords_notreserved', 1, undef
#line 3392 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_172
		 'keywords_notreserved', 1, undef
#line 3396 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_173
		 'keywords_notreserved', 1, undef
#line 3400 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_174
		 'keywords_notreserved', 1, undef
#line 3404 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_175
		 'keywords_notreserved', 1, undef
#line 3408 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_176
		 'keywords_notreserved', 1, undef
#line 3412 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_177
		 'keywords_notreserved', 1, undef
#line 3416 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_178
		 'keywords_notreserved', 1, undef
#line 3420 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_179
		 'keywords_notreserved', 1, undef
#line 3424 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_180
		 'keywords_notreserved', 1, undef
#line 3428 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_181
		 'keywords_notreserved', 1, undef
#line 3432 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_182
		 'keywords_notreserved', 1, undef
#line 3436 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_183
		 'keywords_notreserved', 1, undef
#line 3440 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_184
		 'keywords_notreserved', 1, undef
#line 3444 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_185
		 'keywords_notreserved', 1, undef
#line 3448 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_186
		 'keywords_notreserved', 1, undef
#line 3452 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_187
		 'keywords_notreserved', 1, undef
#line 3456 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_188
		 'keywords_notreserved', 1, undef
#line 3460 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_189
		 'keywords_notreserved', 1, undef
#line 3464 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_190
		 'keywords_notreserved', 1, undef
#line 3468 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_191
		 'keywords_notreserved', 1, undef
#line 3472 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_192
		 'keywords_notreserved', 1, undef
#line 3476 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_193
		 'keywords_notreserved', 1, undef
#line 3480 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_194
		 'keywords_notreserved', 1, undef
#line 3484 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_195
		 'keywords_notreserved', 1, undef
#line 3488 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_196
		 'keywords_notreserved', 1, undef
#line 3492 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_197
		 'keywords_notreserved', 1, undef
#line 3496 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_198
		 'keywords_notreserved', 1, undef
#line 3500 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_199
		 'keywords_notreserved', 1, undef
#line 3504 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_200
		 'keywords_notreserved', 1, undef
#line 3508 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_201
		 'keywords_notreserved', 1, undef
#line 3512 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_202
		 'keywords_notreserved', 1, undef
#line 3516 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_203
		 'keywords_notreserved', 1, undef
#line 3520 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_204
		 'keywords_notreserved', 1, undef
#line 3524 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_205
		 'keywords_notreserved', 1, undef
#line 3528 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_206
		 'keywords_notreserved', 1, undef
#line 3532 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_207
		 'keywords_notreserved', 1, undef
#line 3536 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_208
		 'keywords_notreserved', 1, undef
#line 3540 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_209
		 'keywords_notreserved', 1, undef
#line 3544 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_210
		 'keywords_notreserved', 1, undef
#line 3548 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_211
		 'keywords_notreserved', 1, undef
#line 3552 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_212
		 'keywords_notreserved', 1, undef
#line 3556 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_213
		 'keywords_notreserved', 1, undef
#line 3560 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_214
		 'keywords_notreserved', 1, undef
#line 3564 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_215
		 'keywords_notreserved', 1, undef
#line 3568 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_216
		 'keywords_notreserved', 1, undef
#line 3572 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_217
		 'keywords_notreserved', 1, undef
#line 3576 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_218
		 'keywords_notreserved', 1, undef
#line 3580 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_219
		 'keywords_notreserved', 1, undef
#line 3584 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_220
		 'keywords_notreserved', 1, undef
#line 3588 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_221
		 'keywords_notreserved', 1, undef
#line 3592 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_222
		 'keywords_notreserved', 1, undef
#line 3596 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_223
		 'keywords_notreserved', 1, undef
#line 3600 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_224
		 'keywords_notreserved', 1, undef
#line 3604 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_225
		 'keywords_notreserved', 1, undef
#line 3608 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_226
		 'keywords_notreserved', 1, undef
#line 3612 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_227
		 'keywords_notreserved', 1, undef
#line 3616 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_228
		 'keywords_notreserved', 1, undef
#line 3620 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_229
		 'keywords_notreserved', 1, undef
#line 3624 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_230
		 'keywords_notreserved', 1, undef
#line 3628 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_231
		 'keywords_notreserved', 1, undef
#line 3632 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_232
		 'keywords_notreserved', 1, undef
#line 3636 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_233
		 'keywords_notreserved', 1, undef
#line 3640 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_234
		 'keywords_notreserved', 1, undef
#line 3644 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_235
		 'keywords_notreserved', 1, undef
#line 3648 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_236
		 'keywords_notreserved', 1, undef
#line 3652 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_237
		 'keywords_notreserved', 1, undef
#line 3656 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_238
		 'keywords_notreserved', 1, undef
#line 3660 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_239
		 'keywords_notreserved', 1, undef
#line 3664 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_240
		 'keywords_notreserved', 1, undef
#line 3668 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_241
		 'keywords_notreserved', 1, undef
#line 3672 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_242
		 'keywords_notreserved', 1, undef
#line 3676 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_243
		 'keywords_notreserved', 1, undef
#line 3680 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_244
		 'keywords_notreserved', 1, undef
#line 3684 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_245
		 'keywords_notreserved', 1, undef
#line 3688 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_246
		 'keywords_notreserved', 1, undef
#line 3692 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_247
		 'keywords_notreserved', 1, undef
#line 3696 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_248
		 'keywords_notreserved', 1, undef
#line 3700 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_249
		 'keywords_notreserved', 1, undef
#line 3704 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_250
		 'keywords_notreserved', 1, undef
#line 3708 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_251
		 'keywords_notreserved', 1, undef
#line 3712 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_252
		 'keywords_notreserved', 1, undef
#line 3716 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_253
		 'keywords_notreserved', 1, undef
#line 3720 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_254
		 'keywords_notreserved', 1, undef
#line 3724 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_255
		 'keywords_notreserved', 1, undef
#line 3728 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_256
		 'keywords_notreserved', 1, undef
#line 3732 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_257
		 'keywords_notreserved', 1, undef
#line 3736 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_258
		 'keywords_notreserved', 1, undef
#line 3740 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_259
		 'keywords_notreserved', 1, undef
#line 3744 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_260
		 'keywords_notreserved', 1, undef
#line 3748 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_261
		 'keywords_notreserved', 1, undef
#line 3752 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_262
		 'keywords_notreserved', 1, undef
#line 3756 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_263
		 'keywords_notreserved', 1, undef
#line 3760 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_264
		 'keywords_notreserved', 1, undef
#line 3764 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_265
		 'keywords_notreserved', 1, undef
#line 3768 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_266
		 'keywords_notreserved', 1, undef
#line 3772 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_267
		 'keywords_notreserved', 1, undef
#line 3776 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_268
		 'keywords_notreserved', 1, undef
#line 3780 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_269
		 'keywords_notreserved', 1, undef
#line 3784 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_270
		 'keywords_notreserved', 1, undef
#line 3788 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_271
		 'keywords_notreserved', 1, undef
#line 3792 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_272
		 'keywords_notreserved', 1, undef
#line 3796 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_273
		 'keywords_notreserved', 1, undef
#line 3800 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_274
		 'keywords_notreserved', 1, undef
#line 3804 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_275
		 'keywords_notreserved', 1, undef
#line 3808 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_276
		 'keywords_notreserved', 1, undef
#line 3812 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_277
		 'keywords_notreserved', 1, undef
#line 3816 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_278
		 'keywords_notreserved', 1, undef
#line 3820 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_279
		 'keywords_notreserved', 1, undef
#line 3824 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_280
		 'keywords_notreserved', 1, undef
#line 3828 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_281
		 'keywords_notreserved', 1, undef
#line 3832 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_282
		 'keywords_notreserved', 1, undef
#line 3836 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_283
		 'keywords_notreserved', 1, undef
#line 3840 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_284
		 'keywords_notreserved', 1, undef
#line 3844 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_285
		 'keywords_notreserved', 1, undef
#line 3848 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_286
		 'keywords_notreserved', 1, undef
#line 3852 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_287
		 'keywords_notreserved', 1, undef
#line 3856 ../lib/Pg/SQL/Parser/SQL.pm
	]
],
#line 3859 ../lib/Pg/SQL/Parser/SQL.pm
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
         'identifier_38', 
         'identifier_39', 
         'keywords_notreserved_40', 
         'keywords_notreserved_41', 
         'keywords_notreserved_42', 
         'keywords_notreserved_43', 
         'keywords_notreserved_44', 
         'keywords_notreserved_45', 
         'keywords_notreserved_46', 
         'keywords_notreserved_47', 
         'keywords_notreserved_48', 
         'keywords_notreserved_49', 
         'keywords_notreserved_50', 
         'keywords_notreserved_51', 
         'keywords_notreserved_52', 
         'keywords_notreserved_53', 
         'keywords_notreserved_54', 
         'keywords_notreserved_55', 
         'keywords_notreserved_56', 
         'keywords_notreserved_57', 
         'keywords_notreserved_58', 
         'keywords_notreserved_59', 
         'keywords_notreserved_60', 
         'keywords_notreserved_61', 
         'keywords_notreserved_62', 
         'keywords_notreserved_63', 
         'keywords_notreserved_64', 
         'keywords_notreserved_65', 
         'keywords_notreserved_66', 
         'keywords_notreserved_67', 
         'keywords_notreserved_68', 
         'keywords_notreserved_69', 
         'keywords_notreserved_70', 
         'keywords_notreserved_71', 
         'keywords_notreserved_72', 
         'keywords_notreserved_73', 
         'keywords_notreserved_74', 
         'keywords_notreserved_75', 
         'keywords_notreserved_76', 
         'keywords_notreserved_77', 
         'keywords_notreserved_78', 
         'keywords_notreserved_79', 
         'keywords_notreserved_80', 
         'keywords_notreserved_81', 
         'keywords_notreserved_82', 
         'keywords_notreserved_83', 
         'keywords_notreserved_84', 
         'keywords_notreserved_85', 
         'keywords_notreserved_86', 
         'keywords_notreserved_87', 
         'keywords_notreserved_88', 
         'keywords_notreserved_89', 
         'keywords_notreserved_90', 
         'keywords_notreserved_91', 
         'keywords_notreserved_92', 
         'keywords_notreserved_93', 
         'keywords_notreserved_94', 
         'keywords_notreserved_95', 
         'keywords_notreserved_96', 
         'keywords_notreserved_97', 
         'keywords_notreserved_98', 
         'keywords_notreserved_99', 
         'keywords_notreserved_100', 
         'keywords_notreserved_101', 
         'keywords_notreserved_102', 
         'keywords_notreserved_103', 
         'keywords_notreserved_104', 
         'keywords_notreserved_105', 
         'keywords_notreserved_106', 
         'keywords_notreserved_107', 
         'keywords_notreserved_108', 
         'keywords_notreserved_109', 
         'keywords_notreserved_110', 
         'keywords_notreserved_111', 
         'keywords_notreserved_112', 
         'keywords_notreserved_113', 
         'keywords_notreserved_114', 
         'keywords_notreserved_115', 
         'keywords_notreserved_116', 
         'keywords_notreserved_117', 
         'keywords_notreserved_118', 
         'keywords_notreserved_119', 
         'keywords_notreserved_120', 
         'keywords_notreserved_121', 
         'keywords_notreserved_122', 
         'keywords_notreserved_123', 
         'keywords_notreserved_124', 
         'keywords_notreserved_125', 
         'keywords_notreserved_126', 
         'keywords_notreserved_127', 
         'keywords_notreserved_128', 
         'keywords_notreserved_129', 
         'keywords_notreserved_130', 
         'keywords_notreserved_131', 
         'keywords_notreserved_132', 
         'keywords_notreserved_133', 
         'keywords_notreserved_134', 
         'keywords_notreserved_135', 
         'keywords_notreserved_136', 
         'keywords_notreserved_137', 
         'keywords_notreserved_138', 
         'keywords_notreserved_139', 
         'keywords_notreserved_140', 
         'keywords_notreserved_141', 
         'keywords_notreserved_142', 
         'keywords_notreserved_143', 
         'keywords_notreserved_144', 
         'keywords_notreserved_145', 
         'keywords_notreserved_146', 
         'keywords_notreserved_147', 
         'keywords_notreserved_148', 
         'keywords_notreserved_149', 
         'keywords_notreserved_150', 
         'keywords_notreserved_151', 
         'keywords_notreserved_152', 
         'keywords_notreserved_153', 
         'keywords_notreserved_154', 
         'keywords_notreserved_155', 
         'keywords_notreserved_156', 
         'keywords_notreserved_157', 
         'keywords_notreserved_158', 
         'keywords_notreserved_159', 
         'keywords_notreserved_160', 
         'keywords_notreserved_161', 
         'keywords_notreserved_162', 
         'keywords_notreserved_163', 
         'keywords_notreserved_164', 
         'keywords_notreserved_165', 
         'keywords_notreserved_166', 
         'keywords_notreserved_167', 
         'keywords_notreserved_168', 
         'keywords_notreserved_169', 
         'keywords_notreserved_170', 
         'keywords_notreserved_171', 
         'keywords_notreserved_172', 
         'keywords_notreserved_173', 
         'keywords_notreserved_174', 
         'keywords_notreserved_175', 
         'keywords_notreserved_176', 
         'keywords_notreserved_177', 
         'keywords_notreserved_178', 
         'keywords_notreserved_179', 
         'keywords_notreserved_180', 
         'keywords_notreserved_181', 
         'keywords_notreserved_182', 
         'keywords_notreserved_183', 
         'keywords_notreserved_184', 
         'keywords_notreserved_185', 
         'keywords_notreserved_186', 
         'keywords_notreserved_187', 
         'keywords_notreserved_188', 
         'keywords_notreserved_189', 
         'keywords_notreserved_190', 
         'keywords_notreserved_191', 
         'keywords_notreserved_192', 
         'keywords_notreserved_193', 
         'keywords_notreserved_194', 
         'keywords_notreserved_195', 
         'keywords_notreserved_196', 
         'keywords_notreserved_197', 
         'keywords_notreserved_198', 
         'keywords_notreserved_199', 
         'keywords_notreserved_200', 
         'keywords_notreserved_201', 
         'keywords_notreserved_202', 
         'keywords_notreserved_203', 
         'keywords_notreserved_204', 
         'keywords_notreserved_205', 
         'keywords_notreserved_206', 
         'keywords_notreserved_207', 
         'keywords_notreserved_208', 
         'keywords_notreserved_209', 
         'keywords_notreserved_210', 
         'keywords_notreserved_211', 
         'keywords_notreserved_212', 
         'keywords_notreserved_213', 
         'keywords_notreserved_214', 
         'keywords_notreserved_215', 
         'keywords_notreserved_216', 
         'keywords_notreserved_217', 
         'keywords_notreserved_218', 
         'keywords_notreserved_219', 
         'keywords_notreserved_220', 
         'keywords_notreserved_221', 
         'keywords_notreserved_222', 
         'keywords_notreserved_223', 
         'keywords_notreserved_224', 
         'keywords_notreserved_225', 
         'keywords_notreserved_226', 
         'keywords_notreserved_227', 
         'keywords_notreserved_228', 
         'keywords_notreserved_229', 
         'keywords_notreserved_230', 
         'keywords_notreserved_231', 
         'keywords_notreserved_232', 
         'keywords_notreserved_233', 
         'keywords_notreserved_234', 
         'keywords_notreserved_235', 
         'keywords_notreserved_236', 
         'keywords_notreserved_237', 
         'keywords_notreserved_238', 
         'keywords_notreserved_239', 
         'keywords_notreserved_240', 
         'keywords_notreserved_241', 
         'keywords_notreserved_242', 
         'keywords_notreserved_243', 
         'keywords_notreserved_244', 
         'keywords_notreserved_245', 
         'keywords_notreserved_246', 
         'keywords_notreserved_247', 
         'keywords_notreserved_248', 
         'keywords_notreserved_249', 
         'keywords_notreserved_250', 
         'keywords_notreserved_251', 
         'keywords_notreserved_252', 
         'keywords_notreserved_253', 
         'keywords_notreserved_254', 
         'keywords_notreserved_255', 
         'keywords_notreserved_256', 
         'keywords_notreserved_257', 
         'keywords_notreserved_258', 
         'keywords_notreserved_259', 
         'keywords_notreserved_260', 
         'keywords_notreserved_261', 
         'keywords_notreserved_262', 
         'keywords_notreserved_263', 
         'keywords_notreserved_264', 
         'keywords_notreserved_265', 
         'keywords_notreserved_266', 
         'keywords_notreserved_267', 
         'keywords_notreserved_268', 
         'keywords_notreserved_269', 
         'keywords_notreserved_270', 
         'keywords_notreserved_271', 
         'keywords_notreserved_272', 
         'keywords_notreserved_273', 
         'keywords_notreserved_274', 
         'keywords_notreserved_275', 
         'keywords_notreserved_276', 
         'keywords_notreserved_277', 
         'keywords_notreserved_278', 
         'keywords_notreserved_279', 
         'keywords_notreserved_280', 
         'keywords_notreserved_281', 
         'keywords_notreserved_282', 
         'keywords_notreserved_283', 
         'keywords_notreserved_284', 
         'keywords_notreserved_285', 
         'keywords_notreserved_286', 
         'keywords_notreserved_287', );
  $self;
}

#line 411 "SQL.eyp"


# vim: set ft=lex:


=for None

=cut


#line 4175 ../lib/Pg/SQL/Parser/SQL.pm



1;
