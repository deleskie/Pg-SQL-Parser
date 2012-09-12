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

      m{\G(XBITSTRING_CONSTANT|BITSTRING_CONSTANT|UQUOTED_IDENTIFIER|QUOTED_IDENTIFIER|USTRING_CONSTANT|ESTRING_CONSTANT|NUMERIC_CONSTANT|INTEGER_CONSTANT|STRING_CONSTANT|CHARACTERISTICS|CURRENT_SCHEMA|AUTHORIZATION|OPERATOR_NAME|XMLATTRIBUTES|CONFIGURATION|SERIALIZABLE|CONCURRENTLY|XMLSERIALIZE|INSENSITIVE|CONSTRAINTS|TRANSACTION|UNCOMMITTED|UNENCRYPTED|DICTIONARY|CONNECTION|PRIVILEGES|STATISTICS|DELIMITERS|DEALLOCATE|XMLELEMENT|TABLESPACE|REPEATABLE|CHECKPOINT|LC_COLLATE|ASSIGNMENT|IDENTIFIER|WHITESPACE|STANDALONE|PROCEDURAL|CONVERSION|PARTITION|INCREMENT|TIMESTAMP|PROCEDURE|IMMUTABLE|IMMEDIATE|DELIMITER|PRECISION|XMLEXISTS|UNBOUNDED|PRECEDING|AGGREGATE|ATTRIBUTE|EXCLUDING|ASSERTION|INCLUDING|EXCLUSIVE|CHARACTER|STATEMENT|EXTENSION|ENCRYPTED|RECURSIVE|VALIDATOR|SUBSTRING|SEQUENCES|XMLFOREST|FOLLOWING|XMLCONCAT|TEMPORARY|COMMITTED|ISOLATION|FUNCTIONS|SAVEPOINT|COLLATION|INHERITS|ENCODING|TEMPLATE|DEFAULTS|BACKWARD|SECURITY|PRESERVE|VALIDATE|REASSIGN|ROLLBACK|LOCATION|COMMENTS|CONTINUE|UNLOGGED|FUNCTION|OVERLAPS|DEFERRED|UNLISTEN|SMALLINT|EXTERNAL|XMLPARSE|NATIONAL|CASCADED|TRUNCATE|ABSOLUTE|GREATEST|VOLATILE|LANGUAGE|SEQUENCE|IDENTITY|POSITION|RELATIVE|IMPLICIT|PASSWORD|PREPARED|INTERVAL|LC_CTYPE|RESTRICT|MAXVALUE|DOCUMENT|MINVALUE|OPERATOR|DATABASE|COALESCE|REPLACE|RETURNS|INVOKER|PASSING|INTEGER|PREPARE|REPLICA|VARYING|HANDLER|RELEASE|BOOLEAN|VERBOSE|COMMENT|REINDEX|EXTRACT|CATALOG|MAPPING|RESTART|FORWARD|NOTHING|DECIMAL|INDEXES|DECLARE|SIMILAR|INHERIT|EXPLAIN|VARCHAR|DISABLE|DEFINER|INSTEAD|TRUSTED|CASCADE|NUMERIC|XMLROOT|DISCARD|BETWEEN|PARTIAL|EXCLUDE|WRAPPER|WITHOUT|OPTIONS|EXECUTE|UNKNOWN|CONTENT|CURRENT|CLUSTER|NATURAL|RECHECK|GRANTED|STORAGE|NOTNULL|SESSION|TRIGGER|OVERLAY|VERSION|ESCAPE|SEARCH|MINUTE|DELETE|NULLIF|CALLED|ISNULL|BINARY|UPDATE|STRICT|OBJECT|INSERT|EXISTS|NOWAIT|BIGINT|ACCESS|OPTION|STABLE|SCROLL|SYSTEM|ALWAYS|COMMIT|FAMILY|GLOBAL|STDOUT|REVOKE|VACUUM|SCHEMA|FREEZE|DOUBLE|INLINE|CURSOR|VALUES|BEFORE|SECOND|SELECT|LISTEN|SIMPLE|DOMAIN|SERVER|RENAME|PARSER|NOTIFY|HEADER|ACTION|ENABLE|TABLES|INPUT|SYSID|NCHAR|VALUE|MONTH|TREAT|RANGE|SHARE|LARGE|CLOSE|LEAST|FORCE|LEVEL|XMLPI|LABEL|NULLS|RESET|PRIOR|INNER|SETOF|INOUT|FLOAT|STRIP|CACHE|ILIKE|OUTER|AFTER|INDEX|OWNED|ADMIN|CROSS|OWNER|MATCH|CLASS|CHAIN|ABORT|PLANS|QUOTE|NAMES|ALTER|RIGHT|BEGIN|STDIN|CYCLE|START|UNTIL|WRITE|LOCAL|VALID|FIRST|JOIN|WORK|MODE|DROP|LOCK|FULL|DATA|REAL|OVER|COST|ZONE|RULE|TYPE|READ|LEFT|TEXT|ALSO|VIEW|LOAD|WITH|OIDS|EACH|MOVE|TIME|SHOW|HOUR|YEAR|TEMP|COPY|CAST|LIKE|CHAR|NEXT|NAME|TRIM|ROWS|LAST|HOLD|ROLE|ENUM|NONE|DAY|REF|OFF|SET|OUT|DEC|XML|ADD|CSV|ROW|AND|YES|BIT|KEY|INT|AT|BY|NO|TO|\:\:|OF|AS|IS|IF|\+|\(|\^|\/|\,|\-|\<|\)|\;|\=|\%|\*|\.|\>)}gc and return ($1, $1);



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
  [ 'expr_12' => 'expr', [ 'operator_expression' ], 0 ],
  [ 'expr_13' => 'expr', [ 'cast_expression' ], 0 ],
  [ 'operator_expression_14' => 'operator_expression', [ 'expr', 'BETWEEN', 'expr', 'AND', 'expr' ], 0 ],
  [ 'operator_expression_15' => 'operator_expression', [ 'expr', 'OPERATOR_NAME' ], 0 ],
  [ 'operator_expression_16' => 'operator_expression', [ 'OPERATOR_NAME', 'expr' ], 0 ],
  [ 'operator_expression_17' => 'operator_expression', [ 'expr', '+', 'expr' ], 0 ],
  [ 'operator_expression_18' => 'operator_expression', [ 'expr', '-', 'expr' ], 0 ],
  [ 'operator_expression_19' => 'operator_expression', [ 'expr', '*', 'expr' ], 0 ],
  [ 'operator_expression_20' => 'operator_expression', [ 'expr', '%', 'expr' ], 0 ],
  [ 'operator_expression_21' => 'operator_expression', [ 'expr', '/', 'expr' ], 0 ],
  [ 'operator_expression_22' => 'operator_expression', [ 'expr', '<', 'expr' ], 0 ],
  [ 'operator_expression_23' => 'operator_expression', [ 'expr', '>', 'expr' ], 0 ],
  [ 'operator_expression_24' => 'operator_expression', [ 'expr', '=', 'expr' ], 0 ],
  [ 'operator_expression_25' => 'operator_expression', [ 'expr', '^', 'expr' ], 0 ],
  [ 'operator_expression_26' => 'operator_expression', [ 'expr', 'LIKE', 'expr' ], 0 ],
  [ 'operator_expression_27' => 'operator_expression', [ 'expr', 'ILIKE', 'expr' ], 0 ],
  [ 'operator_expression_28' => 'operator_expression', [ 'expr', 'OPERATOR_NAME', 'expr' ], 0 ],
  [ 'cast_expression_29' => 'cast_expression', [ 'expr', '::', 'normal_type' ], 0 ],
  [ 'cast_expression_30' => 'cast_expression', [ 'CAST', '(', 'expr', 'AS', 'normal_type', ')' ], 0 ],
  [ 'cast_expression_31' => 'cast_expression', [ 'normal_type', 'literal_value' ], 0 ],
  [ 'expr_simple_32' => 'expr_simple', [ 'literal_value' ], 0 ],
  [ 'expr_simple_33' => 'expr_simple', [ '(', 'expr', ')' ], 0 ],
  [ 'literal_value_34' => 'literal_value', [ 'STRING_CONSTANT' ], 0 ],
  [ 'literal_value_35' => 'literal_value', [ 'USTRING_CONSTANT' ], 0 ],
  [ 'literal_value_36' => 'literal_value', [ 'ESTRING_CONSTANT' ], 0 ],
  [ 'literal_value_37' => 'literal_value', [ 'BITSTRING_CONSTANT' ], 0 ],
  [ 'literal_value_38' => 'literal_value', [ 'XBITSTRING_CONSTANT' ], 0 ],
  [ 'literal_value_39' => 'literal_value', [ 'NUMERIC_CONSTANT' ], 0 ],
  [ 'literal_value_40' => 'literal_value', [ 'INTEGER_CONSTANT' ], 0 ],
  [ 'identifier_41' => 'identifier', [ 'QUOTED_IDENTIFIER' ], 0 ],
  [ 'identifier_42' => 'identifier', [ 'UQUOTED_IDENTIFIER' ], 0 ],
  [ 'identifier_43' => 'identifier', [ 'IDENTIFIER' ], 0 ],
  [ 'identifier_44' => 'identifier', [ 'keywords_notreserved' ], 0 ],
  [ 'normal_type_45' => 'normal_type', [ 'simple_type' ], 0 ],
  [ 'normal_type_46' => 'normal_type', [ 'NUMERIC', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'normal_type_47' => 'normal_type', [ 'NUMERIC', '(', 'INTEGER_CONSTANT', ',', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'normal_type_48' => 'normal_type', [ 'DECIMAL', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'normal_type_49' => 'normal_type', [ 'DECIMAL', '(', 'INTEGER_CONSTANT', ',', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'normal_type_50' => 'normal_type', [ 'VARCHAR', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'normal_type_51' => 'normal_type', [ 'timestamp_type' ], 0 ],
  [ 'normal_type_52' => 'normal_type', [ 'time_type' ], 0 ],
  [ 'normal_type_53' => 'normal_type', [ 'interval_type' ], 0 ],
  [ 'simple_type_54' => 'simple_type', [ 'base_type' ], 0 ],
  [ 'simple_type_55' => 'simple_type', [ 'identifier', '.', 'base_type' ], 0 ],
  [ 'base_type_56' => 'base_type', [ 'identifier' ], 0 ],
  [ 'base_type_57' => 'base_type', [ 'keywords_reserved_ok_for_functions_or_types' ], 0 ],
  [ 'base_type_58' => 'base_type', [ 'keywords_notreserved_not_ok_for_functions_or_types' ], 0 ],
  [ 'base_type_59' => 'base_type', [ 'DOUBLE', 'PRECISION' ], 0 ],
  [ 'timestamp_type_60' => 'timestamp_type', [ 'TIMESTAMP', 'WITH', 'TIME', 'ZONE' ], 0 ],
  [ 'timestamp_type_61' => 'timestamp_type', [ 'TIMESTAMP', 'WITHOUT', 'TIME', 'ZONE' ], 0 ],
  [ 'timestamp_type_62' => 'timestamp_type', [ 'TIMESTAMP', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'timestamp_type_63' => 'timestamp_type', [ 'TIMESTAMP', '(', 'INTEGER_CONSTANT', ')', 'WITH', 'TIME', 'ZONE' ], 0 ],
  [ 'timestamp_type_64' => 'timestamp_type', [ 'TIMESTAMP', '(', 'INTEGER_CONSTANT', ')', 'WITHOUT', 'TIME', 'ZONE' ], 0 ],
  [ 'time_type_65' => 'time_type', [ 'TIME', 'WITH', 'TIME', 'ZONE' ], 0 ],
  [ 'time_type_66' => 'time_type', [ 'TIME', 'WITHOUT', 'TIME', 'ZONE' ], 0 ],
  [ 'time_type_67' => 'time_type', [ 'TIME', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'time_type_68' => 'time_type', [ 'TIME', '(', 'INTEGER_CONSTANT', ')', 'WITH', 'TIME', 'ZONE' ], 0 ],
  [ 'time_type_69' => 'time_type', [ 'TIME', '(', 'INTEGER_CONSTANT', ')', 'WITHOUT', 'TIME', 'ZONE' ], 0 ],
  [ 'interval_type_70' => 'interval_type', [ 'INTERVAL', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'interval_type_71' => 'interval_type', [ 'base_interval_type', 'YEAR' ], 0 ],
  [ 'interval_type_72' => 'interval_type', [ 'base_interval_type', 'MONTH' ], 0 ],
  [ 'interval_type_73' => 'interval_type', [ 'base_interval_type', 'DAY' ], 0 ],
  [ 'interval_type_74' => 'interval_type', [ 'base_interval_type', 'HOUR' ], 0 ],
  [ 'interval_type_75' => 'interval_type', [ 'base_interval_type', 'MINUTE' ], 0 ],
  [ 'interval_type_76' => 'interval_type', [ 'base_interval_type', 'SECOND' ], 0 ],
  [ 'interval_type_77' => 'interval_type', [ 'base_interval_type', 'YEAR', 'TO', 'MONTH' ], 0 ],
  [ 'interval_type_78' => 'interval_type', [ 'base_interval_type', 'DAY', 'TO', 'HOUR' ], 0 ],
  [ 'interval_type_79' => 'interval_type', [ 'base_interval_type', 'DAY', 'TO', 'MINUTE' ], 0 ],
  [ 'interval_type_80' => 'interval_type', [ 'base_interval_type', 'DAY', 'TO', 'SECOND' ], 0 ],
  [ 'interval_type_81' => 'interval_type', [ 'base_interval_type', 'HOUR', 'TO', 'MINUTE' ], 0 ],
  [ 'interval_type_82' => 'interval_type', [ 'base_interval_type', 'HOUR', 'TO', 'SECOND' ], 0 ],
  [ 'interval_type_83' => 'interval_type', [ 'base_interval_type', 'MINUTE', 'TO', 'SECOND' ], 0 ],
  [ 'interval_type_84' => 'interval_type', [ 'base_interval_type', 'SECOND', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'interval_type_85' => 'interval_type', [ 'base_interval_type', 'DAY', 'TO', 'SECOND', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'interval_type_86' => 'interval_type', [ 'base_interval_type', 'HOUR', 'TO', 'SECOND', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'interval_type_87' => 'interval_type', [ 'base_interval_type', 'MINUTE', 'TO', 'SECOND', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'base_interval_type_88' => 'base_interval_type', [ 'INTERVAL' ], 0 ],
  [ 'base_interval_type_89' => 'base_interval_type', [ 'INTERVAL', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'keywords_notreserved_90' => 'keywords_notreserved', [ 'ABORT' ], 0 ],
  [ 'keywords_notreserved_91' => 'keywords_notreserved', [ 'ABSOLUTE' ], 0 ],
  [ 'keywords_notreserved_92' => 'keywords_notreserved', [ 'ACCESS' ], 0 ],
  [ 'keywords_notreserved_93' => 'keywords_notreserved', [ 'ACTION' ], 0 ],
  [ 'keywords_notreserved_94' => 'keywords_notreserved', [ 'ADD' ], 0 ],
  [ 'keywords_notreserved_95' => 'keywords_notreserved', [ 'ADMIN' ], 0 ],
  [ 'keywords_notreserved_96' => 'keywords_notreserved', [ 'AFTER' ], 0 ],
  [ 'keywords_notreserved_97' => 'keywords_notreserved', [ 'AGGREGATE' ], 0 ],
  [ 'keywords_notreserved_98' => 'keywords_notreserved', [ 'ALSO' ], 0 ],
  [ 'keywords_notreserved_99' => 'keywords_notreserved', [ 'ALTER' ], 0 ],
  [ 'keywords_notreserved_100' => 'keywords_notreserved', [ 'ALWAYS' ], 0 ],
  [ 'keywords_notreserved_101' => 'keywords_notreserved', [ 'ASSERTION' ], 0 ],
  [ 'keywords_notreserved_102' => 'keywords_notreserved', [ 'ASSIGNMENT' ], 0 ],
  [ 'keywords_notreserved_103' => 'keywords_notreserved', [ 'AT' ], 0 ],
  [ 'keywords_notreserved_104' => 'keywords_notreserved', [ 'ATTRIBUTE' ], 0 ],
  [ 'keywords_notreserved_105' => 'keywords_notreserved', [ 'BACKWARD' ], 0 ],
  [ 'keywords_notreserved_106' => 'keywords_notreserved', [ 'BEFORE' ], 0 ],
  [ 'keywords_notreserved_107' => 'keywords_notreserved', [ 'BEGIN' ], 0 ],
  [ 'keywords_notreserved_108' => 'keywords_notreserved', [ 'BY' ], 0 ],
  [ 'keywords_notreserved_109' => 'keywords_notreserved', [ 'CACHE' ], 0 ],
  [ 'keywords_notreserved_110' => 'keywords_notreserved', [ 'CALLED' ], 0 ],
  [ 'keywords_notreserved_111' => 'keywords_notreserved', [ 'CASCADE' ], 0 ],
  [ 'keywords_notreserved_112' => 'keywords_notreserved', [ 'CASCADED' ], 0 ],
  [ 'keywords_notreserved_113' => 'keywords_notreserved', [ 'CATALOG' ], 0 ],
  [ 'keywords_notreserved_114' => 'keywords_notreserved', [ 'CHAIN' ], 0 ],
  [ 'keywords_notreserved_115' => 'keywords_notreserved', [ 'CHARACTERISTICS' ], 0 ],
  [ 'keywords_notreserved_116' => 'keywords_notreserved', [ 'CHECKPOINT' ], 0 ],
  [ 'keywords_notreserved_117' => 'keywords_notreserved', [ 'CLASS' ], 0 ],
  [ 'keywords_notreserved_118' => 'keywords_notreserved', [ 'CLOSE' ], 0 ],
  [ 'keywords_notreserved_119' => 'keywords_notreserved', [ 'CLUSTER' ], 0 ],
  [ 'keywords_notreserved_120' => 'keywords_notreserved', [ 'COLLATION' ], 0 ],
  [ 'keywords_notreserved_121' => 'keywords_notreserved', [ 'COMMENT' ], 0 ],
  [ 'keywords_notreserved_122' => 'keywords_notreserved', [ 'COMMENTS' ], 0 ],
  [ 'keywords_notreserved_123' => 'keywords_notreserved', [ 'COMMIT' ], 0 ],
  [ 'keywords_notreserved_124' => 'keywords_notreserved', [ 'COMMITTED' ], 0 ],
  [ 'keywords_notreserved_125' => 'keywords_notreserved', [ 'CONFIGURATION' ], 0 ],
  [ 'keywords_notreserved_126' => 'keywords_notreserved', [ 'CONNECTION' ], 0 ],
  [ 'keywords_notreserved_127' => 'keywords_notreserved', [ 'CONSTRAINTS' ], 0 ],
  [ 'keywords_notreserved_128' => 'keywords_notreserved', [ 'CONTENT' ], 0 ],
  [ 'keywords_notreserved_129' => 'keywords_notreserved', [ 'CONTINUE' ], 0 ],
  [ 'keywords_notreserved_130' => 'keywords_notreserved', [ 'CONVERSION' ], 0 ],
  [ 'keywords_notreserved_131' => 'keywords_notreserved', [ 'COPY' ], 0 ],
  [ 'keywords_notreserved_132' => 'keywords_notreserved', [ 'COST' ], 0 ],
  [ 'keywords_notreserved_133' => 'keywords_notreserved', [ 'CSV' ], 0 ],
  [ 'keywords_notreserved_134' => 'keywords_notreserved', [ 'CURRENT' ], 0 ],
  [ 'keywords_notreserved_135' => 'keywords_notreserved', [ 'CURSOR' ], 0 ],
  [ 'keywords_notreserved_136' => 'keywords_notreserved', [ 'CYCLE' ], 0 ],
  [ 'keywords_notreserved_137' => 'keywords_notreserved', [ 'DATA' ], 0 ],
  [ 'keywords_notreserved_138' => 'keywords_notreserved', [ 'DATABASE' ], 0 ],
  [ 'keywords_notreserved_139' => 'keywords_notreserved', [ 'DAY' ], 0 ],
  [ 'keywords_notreserved_140' => 'keywords_notreserved', [ 'DEALLOCATE' ], 0 ],
  [ 'keywords_notreserved_141' => 'keywords_notreserved', [ 'DECLARE' ], 0 ],
  [ 'keywords_notreserved_142' => 'keywords_notreserved', [ 'DEFAULTS' ], 0 ],
  [ 'keywords_notreserved_143' => 'keywords_notreserved', [ 'DEFERRED' ], 0 ],
  [ 'keywords_notreserved_144' => 'keywords_notreserved', [ 'DEFINER' ], 0 ],
  [ 'keywords_notreserved_145' => 'keywords_notreserved', [ 'DELETE' ], 0 ],
  [ 'keywords_notreserved_146' => 'keywords_notreserved', [ 'DELIMITER' ], 0 ],
  [ 'keywords_notreserved_147' => 'keywords_notreserved', [ 'DELIMITERS' ], 0 ],
  [ 'keywords_notreserved_148' => 'keywords_notreserved', [ 'DICTIONARY' ], 0 ],
  [ 'keywords_notreserved_149' => 'keywords_notreserved', [ 'DISABLE' ], 0 ],
  [ 'keywords_notreserved_150' => 'keywords_notreserved', [ 'DISCARD' ], 0 ],
  [ 'keywords_notreserved_151' => 'keywords_notreserved', [ 'DOCUMENT' ], 0 ],
  [ 'keywords_notreserved_152' => 'keywords_notreserved', [ 'DOMAIN' ], 0 ],
  [ 'keywords_notreserved_153' => 'keywords_notreserved', [ 'DOUBLE' ], 0 ],
  [ 'keywords_notreserved_154' => 'keywords_notreserved', [ 'DROP' ], 0 ],
  [ 'keywords_notreserved_155' => 'keywords_notreserved', [ 'EACH' ], 0 ],
  [ 'keywords_notreserved_156' => 'keywords_notreserved', [ 'ENABLE' ], 0 ],
  [ 'keywords_notreserved_157' => 'keywords_notreserved', [ 'ENCODING' ], 0 ],
  [ 'keywords_notreserved_158' => 'keywords_notreserved', [ 'ENCRYPTED' ], 0 ],
  [ 'keywords_notreserved_159' => 'keywords_notreserved', [ 'ENUM' ], 0 ],
  [ 'keywords_notreserved_160' => 'keywords_notreserved', [ 'ESCAPE' ], 0 ],
  [ 'keywords_notreserved_161' => 'keywords_notreserved', [ 'EXCLUDE' ], 0 ],
  [ 'keywords_notreserved_162' => 'keywords_notreserved', [ 'EXCLUDING' ], 0 ],
  [ 'keywords_notreserved_163' => 'keywords_notreserved', [ 'EXCLUSIVE' ], 0 ],
  [ 'keywords_notreserved_164' => 'keywords_notreserved', [ 'EXECUTE' ], 0 ],
  [ 'keywords_notreserved_165' => 'keywords_notreserved', [ 'EXPLAIN' ], 0 ],
  [ 'keywords_notreserved_166' => 'keywords_notreserved', [ 'EXTENSION' ], 0 ],
  [ 'keywords_notreserved_167' => 'keywords_notreserved', [ 'EXTERNAL' ], 0 ],
  [ 'keywords_notreserved_168' => 'keywords_notreserved', [ 'FAMILY' ], 0 ],
  [ 'keywords_notreserved_169' => 'keywords_notreserved', [ 'FIRST' ], 0 ],
  [ 'keywords_notreserved_170' => 'keywords_notreserved', [ 'FOLLOWING' ], 0 ],
  [ 'keywords_notreserved_171' => 'keywords_notreserved', [ 'FORCE' ], 0 ],
  [ 'keywords_notreserved_172' => 'keywords_notreserved', [ 'FORWARD' ], 0 ],
  [ 'keywords_notreserved_173' => 'keywords_notreserved', [ 'FUNCTION' ], 0 ],
  [ 'keywords_notreserved_174' => 'keywords_notreserved', [ 'FUNCTIONS' ], 0 ],
  [ 'keywords_notreserved_175' => 'keywords_notreserved', [ 'GLOBAL' ], 0 ],
  [ 'keywords_notreserved_176' => 'keywords_notreserved', [ 'GRANTED' ], 0 ],
  [ 'keywords_notreserved_177' => 'keywords_notreserved', [ 'HANDLER' ], 0 ],
  [ 'keywords_notreserved_178' => 'keywords_notreserved', [ 'HEADER' ], 0 ],
  [ 'keywords_notreserved_179' => 'keywords_notreserved', [ 'HOLD' ], 0 ],
  [ 'keywords_notreserved_180' => 'keywords_notreserved', [ 'HOUR' ], 0 ],
  [ 'keywords_notreserved_181' => 'keywords_notreserved', [ 'IDENTITY' ], 0 ],
  [ 'keywords_notreserved_182' => 'keywords_notreserved', [ 'IF' ], 0 ],
  [ 'keywords_notreserved_183' => 'keywords_notreserved', [ 'IMMEDIATE' ], 0 ],
  [ 'keywords_notreserved_184' => 'keywords_notreserved', [ 'IMMUTABLE' ], 0 ],
  [ 'keywords_notreserved_185' => 'keywords_notreserved', [ 'IMPLICIT' ], 0 ],
  [ 'keywords_notreserved_186' => 'keywords_notreserved', [ 'INCLUDING' ], 0 ],
  [ 'keywords_notreserved_187' => 'keywords_notreserved', [ 'INCREMENT' ], 0 ],
  [ 'keywords_notreserved_188' => 'keywords_notreserved', [ 'INDEX' ], 0 ],
  [ 'keywords_notreserved_189' => 'keywords_notreserved', [ 'INDEXES' ], 0 ],
  [ 'keywords_notreserved_190' => 'keywords_notreserved', [ 'INHERIT' ], 0 ],
  [ 'keywords_notreserved_191' => 'keywords_notreserved', [ 'INHERITS' ], 0 ],
  [ 'keywords_notreserved_192' => 'keywords_notreserved', [ 'INLINE' ], 0 ],
  [ 'keywords_notreserved_193' => 'keywords_notreserved', [ 'INPUT' ], 0 ],
  [ 'keywords_notreserved_194' => 'keywords_notreserved', [ 'INSENSITIVE' ], 0 ],
  [ 'keywords_notreserved_195' => 'keywords_notreserved', [ 'INSERT' ], 0 ],
  [ 'keywords_notreserved_196' => 'keywords_notreserved', [ 'INSTEAD' ], 0 ],
  [ 'keywords_notreserved_197' => 'keywords_notreserved', [ 'INVOKER' ], 0 ],
  [ 'keywords_notreserved_198' => 'keywords_notreserved', [ 'ISOLATION' ], 0 ],
  [ 'keywords_notreserved_199' => 'keywords_notreserved', [ 'KEY' ], 0 ],
  [ 'keywords_notreserved_200' => 'keywords_notreserved', [ 'LABEL' ], 0 ],
  [ 'keywords_notreserved_201' => 'keywords_notreserved', [ 'LANGUAGE' ], 0 ],
  [ 'keywords_notreserved_202' => 'keywords_notreserved', [ 'LARGE' ], 0 ],
  [ 'keywords_notreserved_203' => 'keywords_notreserved', [ 'LAST' ], 0 ],
  [ 'keywords_notreserved_204' => 'keywords_notreserved', [ 'LC_COLLATE' ], 0 ],
  [ 'keywords_notreserved_205' => 'keywords_notreserved', [ 'LC_CTYPE' ], 0 ],
  [ 'keywords_notreserved_206' => 'keywords_notreserved', [ 'LEVEL' ], 0 ],
  [ 'keywords_notreserved_207' => 'keywords_notreserved', [ 'LISTEN' ], 0 ],
  [ 'keywords_notreserved_208' => 'keywords_notreserved', [ 'LOAD' ], 0 ],
  [ 'keywords_notreserved_209' => 'keywords_notreserved', [ 'LOCAL' ], 0 ],
  [ 'keywords_notreserved_210' => 'keywords_notreserved', [ 'LOCATION' ], 0 ],
  [ 'keywords_notreserved_211' => 'keywords_notreserved', [ 'LOCK' ], 0 ],
  [ 'keywords_notreserved_212' => 'keywords_notreserved', [ 'MAPPING' ], 0 ],
  [ 'keywords_notreserved_213' => 'keywords_notreserved', [ 'MATCH' ], 0 ],
  [ 'keywords_notreserved_214' => 'keywords_notreserved', [ 'MAXVALUE' ], 0 ],
  [ 'keywords_notreserved_215' => 'keywords_notreserved', [ 'MINUTE' ], 0 ],
  [ 'keywords_notreserved_216' => 'keywords_notreserved', [ 'MINVALUE' ], 0 ],
  [ 'keywords_notreserved_217' => 'keywords_notreserved', [ 'MODE' ], 0 ],
  [ 'keywords_notreserved_218' => 'keywords_notreserved', [ 'MONTH' ], 0 ],
  [ 'keywords_notreserved_219' => 'keywords_notreserved', [ 'MOVE' ], 0 ],
  [ 'keywords_notreserved_220' => 'keywords_notreserved', [ 'NAME' ], 0 ],
  [ 'keywords_notreserved_221' => 'keywords_notreserved', [ 'NAMES' ], 0 ],
  [ 'keywords_notreserved_222' => 'keywords_notreserved', [ 'NEXT' ], 0 ],
  [ 'keywords_notreserved_223' => 'keywords_notreserved', [ 'NO' ], 0 ],
  [ 'keywords_notreserved_224' => 'keywords_notreserved', [ 'NOTHING' ], 0 ],
  [ 'keywords_notreserved_225' => 'keywords_notreserved', [ 'NOTIFY' ], 0 ],
  [ 'keywords_notreserved_226' => 'keywords_notreserved', [ 'NOWAIT' ], 0 ],
  [ 'keywords_notreserved_227' => 'keywords_notreserved', [ 'NULLS' ], 0 ],
  [ 'keywords_notreserved_228' => 'keywords_notreserved', [ 'OBJECT' ], 0 ],
  [ 'keywords_notreserved_229' => 'keywords_notreserved', [ 'OF' ], 0 ],
  [ 'keywords_notreserved_230' => 'keywords_notreserved', [ 'OFF' ], 0 ],
  [ 'keywords_notreserved_231' => 'keywords_notreserved', [ 'OIDS' ], 0 ],
  [ 'keywords_notreserved_232' => 'keywords_notreserved', [ 'OPERATOR' ], 0 ],
  [ 'keywords_notreserved_233' => 'keywords_notreserved', [ 'OPTION' ], 0 ],
  [ 'keywords_notreserved_234' => 'keywords_notreserved', [ 'OPTIONS' ], 0 ],
  [ 'keywords_notreserved_235' => 'keywords_notreserved', [ 'OWNED' ], 0 ],
  [ 'keywords_notreserved_236' => 'keywords_notreserved', [ 'OWNER' ], 0 ],
  [ 'keywords_notreserved_237' => 'keywords_notreserved', [ 'PARSER' ], 0 ],
  [ 'keywords_notreserved_238' => 'keywords_notreserved', [ 'PARTIAL' ], 0 ],
  [ 'keywords_notreserved_239' => 'keywords_notreserved', [ 'PARTITION' ], 0 ],
  [ 'keywords_notreserved_240' => 'keywords_notreserved', [ 'PASSING' ], 0 ],
  [ 'keywords_notreserved_241' => 'keywords_notreserved', [ 'PASSWORD' ], 0 ],
  [ 'keywords_notreserved_242' => 'keywords_notreserved', [ 'PLANS' ], 0 ],
  [ 'keywords_notreserved_243' => 'keywords_notreserved', [ 'PRECEDING' ], 0 ],
  [ 'keywords_notreserved_244' => 'keywords_notreserved', [ 'PREPARE' ], 0 ],
  [ 'keywords_notreserved_245' => 'keywords_notreserved', [ 'PREPARED' ], 0 ],
  [ 'keywords_notreserved_246' => 'keywords_notreserved', [ 'PRESERVE' ], 0 ],
  [ 'keywords_notreserved_247' => 'keywords_notreserved', [ 'PRIOR' ], 0 ],
  [ 'keywords_notreserved_248' => 'keywords_notreserved', [ 'PRIVILEGES' ], 0 ],
  [ 'keywords_notreserved_249' => 'keywords_notreserved', [ 'PROCEDURAL' ], 0 ],
  [ 'keywords_notreserved_250' => 'keywords_notreserved', [ 'PROCEDURE' ], 0 ],
  [ 'keywords_notreserved_251' => 'keywords_notreserved', [ 'QUOTE' ], 0 ],
  [ 'keywords_notreserved_252' => 'keywords_notreserved', [ 'RANGE' ], 0 ],
  [ 'keywords_notreserved_253' => 'keywords_notreserved', [ 'READ' ], 0 ],
  [ 'keywords_notreserved_254' => 'keywords_notreserved', [ 'REASSIGN' ], 0 ],
  [ 'keywords_notreserved_255' => 'keywords_notreserved', [ 'RECHECK' ], 0 ],
  [ 'keywords_notreserved_256' => 'keywords_notreserved', [ 'RECURSIVE' ], 0 ],
  [ 'keywords_notreserved_257' => 'keywords_notreserved', [ 'REF' ], 0 ],
  [ 'keywords_notreserved_258' => 'keywords_notreserved', [ 'REINDEX' ], 0 ],
  [ 'keywords_notreserved_259' => 'keywords_notreserved', [ 'RELATIVE' ], 0 ],
  [ 'keywords_notreserved_260' => 'keywords_notreserved', [ 'RELEASE' ], 0 ],
  [ 'keywords_notreserved_261' => 'keywords_notreserved', [ 'RENAME' ], 0 ],
  [ 'keywords_notreserved_262' => 'keywords_notreserved', [ 'REPEATABLE' ], 0 ],
  [ 'keywords_notreserved_263' => 'keywords_notreserved', [ 'REPLACE' ], 0 ],
  [ 'keywords_notreserved_264' => 'keywords_notreserved', [ 'REPLICA' ], 0 ],
  [ 'keywords_notreserved_265' => 'keywords_notreserved', [ 'RESET' ], 0 ],
  [ 'keywords_notreserved_266' => 'keywords_notreserved', [ 'RESTART' ], 0 ],
  [ 'keywords_notreserved_267' => 'keywords_notreserved', [ 'RESTRICT' ], 0 ],
  [ 'keywords_notreserved_268' => 'keywords_notreserved', [ 'RETURNS' ], 0 ],
  [ 'keywords_notreserved_269' => 'keywords_notreserved', [ 'REVOKE' ], 0 ],
  [ 'keywords_notreserved_270' => 'keywords_notreserved', [ 'ROLE' ], 0 ],
  [ 'keywords_notreserved_271' => 'keywords_notreserved', [ 'ROLLBACK' ], 0 ],
  [ 'keywords_notreserved_272' => 'keywords_notreserved', [ 'ROWS' ], 0 ],
  [ 'keywords_notreserved_273' => 'keywords_notreserved', [ 'RULE' ], 0 ],
  [ 'keywords_notreserved_274' => 'keywords_notreserved', [ 'SAVEPOINT' ], 0 ],
  [ 'keywords_notreserved_275' => 'keywords_notreserved', [ 'SCHEMA' ], 0 ],
  [ 'keywords_notreserved_276' => 'keywords_notreserved', [ 'SCROLL' ], 0 ],
  [ 'keywords_notreserved_277' => 'keywords_notreserved', [ 'SEARCH' ], 0 ],
  [ 'keywords_notreserved_278' => 'keywords_notreserved', [ 'SECOND' ], 0 ],
  [ 'keywords_notreserved_279' => 'keywords_notreserved', [ 'SECURITY' ], 0 ],
  [ 'keywords_notreserved_280' => 'keywords_notreserved', [ 'SEQUENCE' ], 0 ],
  [ 'keywords_notreserved_281' => 'keywords_notreserved', [ 'SEQUENCES' ], 0 ],
  [ 'keywords_notreserved_282' => 'keywords_notreserved', [ 'SERIALIZABLE' ], 0 ],
  [ 'keywords_notreserved_283' => 'keywords_notreserved', [ 'SERVER' ], 0 ],
  [ 'keywords_notreserved_284' => 'keywords_notreserved', [ 'SESSION' ], 0 ],
  [ 'keywords_notreserved_285' => 'keywords_notreserved', [ 'SET' ], 0 ],
  [ 'keywords_notreserved_286' => 'keywords_notreserved', [ 'SHARE' ], 0 ],
  [ 'keywords_notreserved_287' => 'keywords_notreserved', [ 'SHOW' ], 0 ],
  [ 'keywords_notreserved_288' => 'keywords_notreserved', [ 'SIMPLE' ], 0 ],
  [ 'keywords_notreserved_289' => 'keywords_notreserved', [ 'STABLE' ], 0 ],
  [ 'keywords_notreserved_290' => 'keywords_notreserved', [ 'STANDALONE' ], 0 ],
  [ 'keywords_notreserved_291' => 'keywords_notreserved', [ 'START' ], 0 ],
  [ 'keywords_notreserved_292' => 'keywords_notreserved', [ 'STATEMENT' ], 0 ],
  [ 'keywords_notreserved_293' => 'keywords_notreserved', [ 'STATISTICS' ], 0 ],
  [ 'keywords_notreserved_294' => 'keywords_notreserved', [ 'STDIN' ], 0 ],
  [ 'keywords_notreserved_295' => 'keywords_notreserved', [ 'STDOUT' ], 0 ],
  [ 'keywords_notreserved_296' => 'keywords_notreserved', [ 'STORAGE' ], 0 ],
  [ 'keywords_notreserved_297' => 'keywords_notreserved', [ 'STRICT' ], 0 ],
  [ 'keywords_notreserved_298' => 'keywords_notreserved', [ 'STRIP' ], 0 ],
  [ 'keywords_notreserved_299' => 'keywords_notreserved', [ 'SYSID' ], 0 ],
  [ 'keywords_notreserved_300' => 'keywords_notreserved', [ 'SYSTEM' ], 0 ],
  [ 'keywords_notreserved_301' => 'keywords_notreserved', [ 'TABLES' ], 0 ],
  [ 'keywords_notreserved_302' => 'keywords_notreserved', [ 'TABLESPACE' ], 0 ],
  [ 'keywords_notreserved_303' => 'keywords_notreserved', [ 'TEMP' ], 0 ],
  [ 'keywords_notreserved_304' => 'keywords_notreserved', [ 'TEMPLATE' ], 0 ],
  [ 'keywords_notreserved_305' => 'keywords_notreserved', [ 'TEMPORARY' ], 0 ],
  [ 'keywords_notreserved_306' => 'keywords_notreserved', [ 'TEXT' ], 0 ],
  [ 'keywords_notreserved_307' => 'keywords_notreserved', [ 'TRANSACTION' ], 0 ],
  [ 'keywords_notreserved_308' => 'keywords_notreserved', [ 'TRIGGER' ], 0 ],
  [ 'keywords_notreserved_309' => 'keywords_notreserved', [ 'TRUNCATE' ], 0 ],
  [ 'keywords_notreserved_310' => 'keywords_notreserved', [ 'TRUSTED' ], 0 ],
  [ 'keywords_notreserved_311' => 'keywords_notreserved', [ 'TYPE' ], 0 ],
  [ 'keywords_notreserved_312' => 'keywords_notreserved', [ 'UNBOUNDED' ], 0 ],
  [ 'keywords_notreserved_313' => 'keywords_notreserved', [ 'UNCOMMITTED' ], 0 ],
  [ 'keywords_notreserved_314' => 'keywords_notreserved', [ 'UNENCRYPTED' ], 0 ],
  [ 'keywords_notreserved_315' => 'keywords_notreserved', [ 'UNKNOWN' ], 0 ],
  [ 'keywords_notreserved_316' => 'keywords_notreserved', [ 'UNLISTEN' ], 0 ],
  [ 'keywords_notreserved_317' => 'keywords_notreserved', [ 'UNLOGGED' ], 0 ],
  [ 'keywords_notreserved_318' => 'keywords_notreserved', [ 'UNTIL' ], 0 ],
  [ 'keywords_notreserved_319' => 'keywords_notreserved', [ 'UPDATE' ], 0 ],
  [ 'keywords_notreserved_320' => 'keywords_notreserved', [ 'VACUUM' ], 0 ],
  [ 'keywords_notreserved_321' => 'keywords_notreserved', [ 'VALID' ], 0 ],
  [ 'keywords_notreserved_322' => 'keywords_notreserved', [ 'VALIDATE' ], 0 ],
  [ 'keywords_notreserved_323' => 'keywords_notreserved', [ 'VALIDATOR' ], 0 ],
  [ 'keywords_notreserved_324' => 'keywords_notreserved', [ 'VALUE' ], 0 ],
  [ 'keywords_notreserved_325' => 'keywords_notreserved', [ 'VARYING' ], 0 ],
  [ 'keywords_notreserved_326' => 'keywords_notreserved', [ 'VERSION' ], 0 ],
  [ 'keywords_notreserved_327' => 'keywords_notreserved', [ 'VIEW' ], 0 ],
  [ 'keywords_notreserved_328' => 'keywords_notreserved', [ 'VOLATILE' ], 0 ],
  [ 'keywords_notreserved_329' => 'keywords_notreserved', [ 'WHITESPACE' ], 0 ],
  [ 'keywords_notreserved_330' => 'keywords_notreserved', [ 'WITHOUT' ], 0 ],
  [ 'keywords_notreserved_331' => 'keywords_notreserved', [ 'WORK' ], 0 ],
  [ 'keywords_notreserved_332' => 'keywords_notreserved', [ 'WRAPPER' ], 0 ],
  [ 'keywords_notreserved_333' => 'keywords_notreserved', [ 'WRITE' ], 0 ],
  [ 'keywords_notreserved_334' => 'keywords_notreserved', [ 'XML' ], 0 ],
  [ 'keywords_notreserved_335' => 'keywords_notreserved', [ 'YEAR' ], 0 ],
  [ 'keywords_notreserved_336' => 'keywords_notreserved', [ 'YES' ], 0 ],
  [ 'keywords_notreserved_337' => 'keywords_notreserved', [ 'ZONE' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_338' => 'keywords_reserved_ok_for_functions_or_types', [ 'AUTHORIZATION' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_339' => 'keywords_reserved_ok_for_functions_or_types', [ 'BINARY' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_340' => 'keywords_reserved_ok_for_functions_or_types', [ 'CONCURRENTLY' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_341' => 'keywords_reserved_ok_for_functions_or_types', [ 'CROSS' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_342' => 'keywords_reserved_ok_for_functions_or_types', [ 'CURRENT_SCHEMA' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_343' => 'keywords_reserved_ok_for_functions_or_types', [ 'FREEZE' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_344' => 'keywords_reserved_ok_for_functions_or_types', [ 'FULL' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_345' => 'keywords_reserved_ok_for_functions_or_types', [ 'ILIKE' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_346' => 'keywords_reserved_ok_for_functions_or_types', [ 'INNER' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_347' => 'keywords_reserved_ok_for_functions_or_types', [ 'IS' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_348' => 'keywords_reserved_ok_for_functions_or_types', [ 'ISNULL' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_349' => 'keywords_reserved_ok_for_functions_or_types', [ 'JOIN' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_350' => 'keywords_reserved_ok_for_functions_or_types', [ 'LEFT' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_351' => 'keywords_reserved_ok_for_functions_or_types', [ 'LIKE' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_352' => 'keywords_reserved_ok_for_functions_or_types', [ 'NATURAL' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_353' => 'keywords_reserved_ok_for_functions_or_types', [ 'NOTNULL' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_354' => 'keywords_reserved_ok_for_functions_or_types', [ 'OUTER' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_355' => 'keywords_reserved_ok_for_functions_or_types', [ 'OVER' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_356' => 'keywords_reserved_ok_for_functions_or_types', [ 'OVERLAPS' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_357' => 'keywords_reserved_ok_for_functions_or_types', [ 'RIGHT' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_358' => 'keywords_reserved_ok_for_functions_or_types', [ 'SIMILAR' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_359' => 'keywords_reserved_ok_for_functions_or_types', [ 'VERBOSE' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_360' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'BETWEEN' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_361' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'BIGINT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_362' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'BIT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_363' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'BOOLEAN' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_364' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'CHAR' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_365' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'CHARACTER' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_366' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'COALESCE' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_367' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'DEC' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_368' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'DECIMAL' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_369' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'EXISTS' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_370' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'EXTRACT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_371' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'FLOAT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_372' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'GREATEST' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_373' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'INOUT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_374' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'INT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_375' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'INTEGER' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_376' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'INTERVAL' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_377' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'LEAST' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_378' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'NATIONAL' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_379' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'NCHAR' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_380' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'NONE' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_381' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'NULLIF' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_382' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'NUMERIC' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_383' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'OUT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_384' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'OVERLAY' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_385' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'POSITION' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_386' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'PRECISION' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_387' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'REAL' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_388' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'ROW' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_389' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'SETOF' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_390' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'SMALLINT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_391' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'SUBSTRING' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_392' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'TIME' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_393' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'TIMESTAMP' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_394' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'TREAT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_395' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'TRIM' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_396' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'VALUES' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_397' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'VARCHAR' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_398' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLATTRIBUTES' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_399' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLCONCAT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_400' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLELEMENT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_401' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLEXISTS' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_402' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLFOREST' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_403' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLPARSE' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_404' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLPI' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_405' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLROOT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_406' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLSERIALIZE' ], 0 ],
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
  'operator_expression_14' => 14,
  'operator_expression_15' => 15,
  'operator_expression_16' => 16,
  'operator_expression_17' => 17,
  'operator_expression_18' => 18,
  'operator_expression_19' => 19,
  'operator_expression_20' => 20,
  'operator_expression_21' => 21,
  'operator_expression_22' => 22,
  'operator_expression_23' => 23,
  'operator_expression_24' => 24,
  'operator_expression_25' => 25,
  'operator_expression_26' => 26,
  'operator_expression_27' => 27,
  'operator_expression_28' => 28,
  'cast_expression_29' => 29,
  'cast_expression_30' => 30,
  'cast_expression_31' => 31,
  'expr_simple_32' => 32,
  'expr_simple_33' => 33,
  'literal_value_34' => 34,
  'literal_value_35' => 35,
  'literal_value_36' => 36,
  'literal_value_37' => 37,
  'literal_value_38' => 38,
  'literal_value_39' => 39,
  'literal_value_40' => 40,
  'identifier_41' => 41,
  'identifier_42' => 42,
  'identifier_43' => 43,
  'identifier_44' => 44,
  'normal_type_45' => 45,
  'normal_type_46' => 46,
  'normal_type_47' => 47,
  'normal_type_48' => 48,
  'normal_type_49' => 49,
  'normal_type_50' => 50,
  'normal_type_51' => 51,
  'normal_type_52' => 52,
  'normal_type_53' => 53,
  'simple_type_54' => 54,
  'simple_type_55' => 55,
  'base_type_56' => 56,
  'base_type_57' => 57,
  'base_type_58' => 58,
  'base_type_59' => 59,
  'timestamp_type_60' => 60,
  'timestamp_type_61' => 61,
  'timestamp_type_62' => 62,
  'timestamp_type_63' => 63,
  'timestamp_type_64' => 64,
  'time_type_65' => 65,
  'time_type_66' => 66,
  'time_type_67' => 67,
  'time_type_68' => 68,
  'time_type_69' => 69,
  'interval_type_70' => 70,
  'interval_type_71' => 71,
  'interval_type_72' => 72,
  'interval_type_73' => 73,
  'interval_type_74' => 74,
  'interval_type_75' => 75,
  'interval_type_76' => 76,
  'interval_type_77' => 77,
  'interval_type_78' => 78,
  'interval_type_79' => 79,
  'interval_type_80' => 80,
  'interval_type_81' => 81,
  'interval_type_82' => 82,
  'interval_type_83' => 83,
  'interval_type_84' => 84,
  'interval_type_85' => 85,
  'interval_type_86' => 86,
  'interval_type_87' => 87,
  'base_interval_type_88' => 88,
  'base_interval_type_89' => 89,
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
  'keywords_notreserved_288' => 288,
  'keywords_notreserved_289' => 289,
  'keywords_notreserved_290' => 290,
  'keywords_notreserved_291' => 291,
  'keywords_notreserved_292' => 292,
  'keywords_notreserved_293' => 293,
  'keywords_notreserved_294' => 294,
  'keywords_notreserved_295' => 295,
  'keywords_notreserved_296' => 296,
  'keywords_notreserved_297' => 297,
  'keywords_notreserved_298' => 298,
  'keywords_notreserved_299' => 299,
  'keywords_notreserved_300' => 300,
  'keywords_notreserved_301' => 301,
  'keywords_notreserved_302' => 302,
  'keywords_notreserved_303' => 303,
  'keywords_notreserved_304' => 304,
  'keywords_notreserved_305' => 305,
  'keywords_notreserved_306' => 306,
  'keywords_notreserved_307' => 307,
  'keywords_notreserved_308' => 308,
  'keywords_notreserved_309' => 309,
  'keywords_notreserved_310' => 310,
  'keywords_notreserved_311' => 311,
  'keywords_notreserved_312' => 312,
  'keywords_notreserved_313' => 313,
  'keywords_notreserved_314' => 314,
  'keywords_notreserved_315' => 315,
  'keywords_notreserved_316' => 316,
  'keywords_notreserved_317' => 317,
  'keywords_notreserved_318' => 318,
  'keywords_notreserved_319' => 319,
  'keywords_notreserved_320' => 320,
  'keywords_notreserved_321' => 321,
  'keywords_notreserved_322' => 322,
  'keywords_notreserved_323' => 323,
  'keywords_notreserved_324' => 324,
  'keywords_notreserved_325' => 325,
  'keywords_notreserved_326' => 326,
  'keywords_notreserved_327' => 327,
  'keywords_notreserved_328' => 328,
  'keywords_notreserved_329' => 329,
  'keywords_notreserved_330' => 330,
  'keywords_notreserved_331' => 331,
  'keywords_notreserved_332' => 332,
  'keywords_notreserved_333' => 333,
  'keywords_notreserved_334' => 334,
  'keywords_notreserved_335' => 335,
  'keywords_notreserved_336' => 336,
  'keywords_notreserved_337' => 337,
  'keywords_reserved_ok_for_functions_or_types_338' => 338,
  'keywords_reserved_ok_for_functions_or_types_339' => 339,
  'keywords_reserved_ok_for_functions_or_types_340' => 340,
  'keywords_reserved_ok_for_functions_or_types_341' => 341,
  'keywords_reserved_ok_for_functions_or_types_342' => 342,
  'keywords_reserved_ok_for_functions_or_types_343' => 343,
  'keywords_reserved_ok_for_functions_or_types_344' => 344,
  'keywords_reserved_ok_for_functions_or_types_345' => 345,
  'keywords_reserved_ok_for_functions_or_types_346' => 346,
  'keywords_reserved_ok_for_functions_or_types_347' => 347,
  'keywords_reserved_ok_for_functions_or_types_348' => 348,
  'keywords_reserved_ok_for_functions_or_types_349' => 349,
  'keywords_reserved_ok_for_functions_or_types_350' => 350,
  'keywords_reserved_ok_for_functions_or_types_351' => 351,
  'keywords_reserved_ok_for_functions_or_types_352' => 352,
  'keywords_reserved_ok_for_functions_or_types_353' => 353,
  'keywords_reserved_ok_for_functions_or_types_354' => 354,
  'keywords_reserved_ok_for_functions_or_types_355' => 355,
  'keywords_reserved_ok_for_functions_or_types_356' => 356,
  'keywords_reserved_ok_for_functions_or_types_357' => 357,
  'keywords_reserved_ok_for_functions_or_types_358' => 358,
  'keywords_reserved_ok_for_functions_or_types_359' => 359,
  'keywords_notreserved_not_ok_for_functions_or_types_360' => 360,
  'keywords_notreserved_not_ok_for_functions_or_types_361' => 361,
  'keywords_notreserved_not_ok_for_functions_or_types_362' => 362,
  'keywords_notreserved_not_ok_for_functions_or_types_363' => 363,
  'keywords_notreserved_not_ok_for_functions_or_types_364' => 364,
  'keywords_notreserved_not_ok_for_functions_or_types_365' => 365,
  'keywords_notreserved_not_ok_for_functions_or_types_366' => 366,
  'keywords_notreserved_not_ok_for_functions_or_types_367' => 367,
  'keywords_notreserved_not_ok_for_functions_or_types_368' => 368,
  'keywords_notreserved_not_ok_for_functions_or_types_369' => 369,
  'keywords_notreserved_not_ok_for_functions_or_types_370' => 370,
  'keywords_notreserved_not_ok_for_functions_or_types_371' => 371,
  'keywords_notreserved_not_ok_for_functions_or_types_372' => 372,
  'keywords_notreserved_not_ok_for_functions_or_types_373' => 373,
  'keywords_notreserved_not_ok_for_functions_or_types_374' => 374,
  'keywords_notreserved_not_ok_for_functions_or_types_375' => 375,
  'keywords_notreserved_not_ok_for_functions_or_types_376' => 376,
  'keywords_notreserved_not_ok_for_functions_or_types_377' => 377,
  'keywords_notreserved_not_ok_for_functions_or_types_378' => 378,
  'keywords_notreserved_not_ok_for_functions_or_types_379' => 379,
  'keywords_notreserved_not_ok_for_functions_or_types_380' => 380,
  'keywords_notreserved_not_ok_for_functions_or_types_381' => 381,
  'keywords_notreserved_not_ok_for_functions_or_types_382' => 382,
  'keywords_notreserved_not_ok_for_functions_or_types_383' => 383,
  'keywords_notreserved_not_ok_for_functions_or_types_384' => 384,
  'keywords_notreserved_not_ok_for_functions_or_types_385' => 385,
  'keywords_notreserved_not_ok_for_functions_or_types_386' => 386,
  'keywords_notreserved_not_ok_for_functions_or_types_387' => 387,
  'keywords_notreserved_not_ok_for_functions_or_types_388' => 388,
  'keywords_notreserved_not_ok_for_functions_or_types_389' => 389,
  'keywords_notreserved_not_ok_for_functions_or_types_390' => 390,
  'keywords_notreserved_not_ok_for_functions_or_types_391' => 391,
  'keywords_notreserved_not_ok_for_functions_or_types_392' => 392,
  'keywords_notreserved_not_ok_for_functions_or_types_393' => 393,
  'keywords_notreserved_not_ok_for_functions_or_types_394' => 394,
  'keywords_notreserved_not_ok_for_functions_or_types_395' => 395,
  'keywords_notreserved_not_ok_for_functions_or_types_396' => 396,
  'keywords_notreserved_not_ok_for_functions_or_types_397' => 397,
  'keywords_notreserved_not_ok_for_functions_or_types_398' => 398,
  'keywords_notreserved_not_ok_for_functions_or_types_399' => 399,
  'keywords_notreserved_not_ok_for_functions_or_types_400' => 400,
  'keywords_notreserved_not_ok_for_functions_or_types_401' => 401,
  'keywords_notreserved_not_ok_for_functions_or_types_402' => 402,
  'keywords_notreserved_not_ok_for_functions_or_types_403' => 403,
  'keywords_notreserved_not_ok_for_functions_or_types_404' => 404,
  'keywords_notreserved_not_ok_for_functions_or_types_405' => 405,
  'keywords_notreserved_not_ok_for_functions_or_types_406' => 406,
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
	'.' => { ISSEMANTIC => 0 },
	'/' => { ISSEMANTIC => 0 },
	'::' => { ISSEMANTIC => 0 },
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
	AUTHORIZATION => { ISSEMANTIC => 1 },
	BACKWARD => { ISSEMANTIC => 1 },
	BEFORE => { ISSEMANTIC => 1 },
	BEGIN => { ISSEMANTIC => 1 },
	BETWEEN => { ISSEMANTIC => 1 },
	BIGINT => { ISSEMANTIC => 1 },
	BINARY => { ISSEMANTIC => 1 },
	BIT => { ISSEMANTIC => 1 },
	BITSTRING_CONSTANT => { ISSEMANTIC => 1 },
	BOOLEAN => { ISSEMANTIC => 1 },
	BY => { ISSEMANTIC => 1 },
	CACHE => { ISSEMANTIC => 1 },
	CALLED => { ISSEMANTIC => 1 },
	CASCADE => { ISSEMANTIC => 1 },
	CASCADED => { ISSEMANTIC => 1 },
	CAST => { ISSEMANTIC => 1 },
	CATALOG => { ISSEMANTIC => 1 },
	CHAIN => { ISSEMANTIC => 1 },
	CHAR => { ISSEMANTIC => 1 },
	CHARACTER => { ISSEMANTIC => 1 },
	CHARACTERISTICS => { ISSEMANTIC => 1 },
	CHECKPOINT => { ISSEMANTIC => 1 },
	CLASS => { ISSEMANTIC => 1 },
	CLOSE => { ISSEMANTIC => 1 },
	CLUSTER => { ISSEMANTIC => 1 },
	COALESCE => { ISSEMANTIC => 1 },
	COLLATION => { ISSEMANTIC => 1 },
	COMMENT => { ISSEMANTIC => 1 },
	COMMENTS => { ISSEMANTIC => 1 },
	COMMIT => { ISSEMANTIC => 1 },
	COMMITTED => { ISSEMANTIC => 1 },
	CONCURRENTLY => { ISSEMANTIC => 1 },
	CONFIGURATION => { ISSEMANTIC => 1 },
	CONNECTION => { ISSEMANTIC => 1 },
	CONSTRAINTS => { ISSEMANTIC => 1 },
	CONTENT => { ISSEMANTIC => 1 },
	CONTINUE => { ISSEMANTIC => 1 },
	CONVERSION => { ISSEMANTIC => 1 },
	COPY => { ISSEMANTIC => 1 },
	COST => { ISSEMANTIC => 1 },
	CROSS => { ISSEMANTIC => 1 },
	CSV => { ISSEMANTIC => 1 },
	CURRENT => { ISSEMANTIC => 1 },
	CURRENT_SCHEMA => { ISSEMANTIC => 1 },
	CURSOR => { ISSEMANTIC => 1 },
	CYCLE => { ISSEMANTIC => 1 },
	DATA => { ISSEMANTIC => 1 },
	DATABASE => { ISSEMANTIC => 1 },
	DAY => { ISSEMANTIC => 1 },
	DEALLOCATE => { ISSEMANTIC => 1 },
	DEC => { ISSEMANTIC => 1 },
	DECIMAL => { ISSEMANTIC => 1 },
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
	EXISTS => { ISSEMANTIC => 1 },
	EXPLAIN => { ISSEMANTIC => 1 },
	EXTENSION => { ISSEMANTIC => 1 },
	EXTERNAL => { ISSEMANTIC => 1 },
	EXTRACT => { ISSEMANTIC => 1 },
	FAMILY => { ISSEMANTIC => 1 },
	FIRST => { ISSEMANTIC => 1 },
	FLOAT => { ISSEMANTIC => 1 },
	FOLLOWING => { ISSEMANTIC => 1 },
	FORCE => { ISSEMANTIC => 1 },
	FORWARD => { ISSEMANTIC => 1 },
	FREEZE => { ISSEMANTIC => 1 },
	FULL => { ISSEMANTIC => 1 },
	FUNCTION => { ISSEMANTIC => 1 },
	FUNCTIONS => { ISSEMANTIC => 1 },
	GLOBAL => { ISSEMANTIC => 1 },
	GRANTED => { ISSEMANTIC => 1 },
	GREATEST => { ISSEMANTIC => 1 },
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
	INNER => { ISSEMANTIC => 1 },
	INOUT => { ISSEMANTIC => 1 },
	INPUT => { ISSEMANTIC => 1 },
	INSENSITIVE => { ISSEMANTIC => 1 },
	INSERT => { ISSEMANTIC => 1 },
	INSTEAD => { ISSEMANTIC => 1 },
	INT => { ISSEMANTIC => 1 },
	INTEGER => { ISSEMANTIC => 1 },
	INTEGER_CONSTANT => { ISSEMANTIC => 1 },
	INTERVAL => { ISSEMANTIC => 1 },
	INVOKER => { ISSEMANTIC => 1 },
	IS => { ISSEMANTIC => 1 },
	ISNULL => { ISSEMANTIC => 1 },
	ISOLATION => { ISSEMANTIC => 1 },
	JOIN => { ISSEMANTIC => 1 },
	KEY => { ISSEMANTIC => 1 },
	LABEL => { ISSEMANTIC => 1 },
	LANGUAGE => { ISSEMANTIC => 1 },
	LARGE => { ISSEMANTIC => 1 },
	LAST => { ISSEMANTIC => 1 },
	LC_COLLATE => { ISSEMANTIC => 1 },
	LC_CTYPE => { ISSEMANTIC => 1 },
	LEAST => { ISSEMANTIC => 1 },
	LEFT => { ISSEMANTIC => 1 },
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
	NATIONAL => { ISSEMANTIC => 1 },
	NATURAL => { ISSEMANTIC => 1 },
	NCHAR => { ISSEMANTIC => 1 },
	NEXT => { ISSEMANTIC => 1 },
	NO => { ISSEMANTIC => 1 },
	NONE => { ISSEMANTIC => 1 },
	NOTHING => { ISSEMANTIC => 1 },
	NOTIFY => { ISSEMANTIC => 1 },
	NOTNULL => { ISSEMANTIC => 1 },
	NOWAIT => { ISSEMANTIC => 1 },
	NULLIF => { ISSEMANTIC => 1 },
	NULLS => { ISSEMANTIC => 1 },
	NUMERIC => { ISSEMANTIC => 1 },
	NUMERIC_CONSTANT => { ISSEMANTIC => 1 },
	OBJECT => { ISSEMANTIC => 1 },
	OF => { ISSEMANTIC => 1 },
	OFF => { ISSEMANTIC => 1 },
	OIDS => { ISSEMANTIC => 1 },
	OPERATOR => { ISSEMANTIC => 1 },
	OPERATOR_NAME => { ISSEMANTIC => 1 },
	OPTION => { ISSEMANTIC => 1 },
	OPTIONS => { ISSEMANTIC => 1 },
	OUT => { ISSEMANTIC => 1 },
	OUTER => { ISSEMANTIC => 1 },
	OVER => { ISSEMANTIC => 1 },
	OVERLAPS => { ISSEMANTIC => 1 },
	OVERLAY => { ISSEMANTIC => 1 },
	OWNED => { ISSEMANTIC => 1 },
	OWNER => { ISSEMANTIC => 1 },
	PARSER => { ISSEMANTIC => 1 },
	PARTIAL => { ISSEMANTIC => 1 },
	PARTITION => { ISSEMANTIC => 1 },
	PASSING => { ISSEMANTIC => 1 },
	PASSWORD => { ISSEMANTIC => 1 },
	PLANS => { ISSEMANTIC => 1 },
	POSITION => { ISSEMANTIC => 1 },
	PRECEDING => { ISSEMANTIC => 1 },
	PRECISION => { ISSEMANTIC => 1 },
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
	REAL => { ISSEMANTIC => 1 },
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
	RIGHT => { ISSEMANTIC => 1 },
	ROLE => { ISSEMANTIC => 1 },
	ROLLBACK => { ISSEMANTIC => 1 },
	ROW => { ISSEMANTIC => 1 },
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
	SETOF => { ISSEMANTIC => 1 },
	SHARE => { ISSEMANTIC => 1 },
	SHOW => { ISSEMANTIC => 1 },
	SIMILAR => { ISSEMANTIC => 1 },
	SIMPLE => { ISSEMANTIC => 1 },
	SMALLINT => { ISSEMANTIC => 1 },
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
	SUBSTRING => { ISSEMANTIC => 1 },
	SYSID => { ISSEMANTIC => 1 },
	SYSTEM => { ISSEMANTIC => 1 },
	TABLES => { ISSEMANTIC => 1 },
	TABLESPACE => { ISSEMANTIC => 1 },
	TEMP => { ISSEMANTIC => 1 },
	TEMPLATE => { ISSEMANTIC => 1 },
	TEMPORARY => { ISSEMANTIC => 1 },
	TEXT => { ISSEMANTIC => 1 },
	TIME => { ISSEMANTIC => 1 },
	TIMESTAMP => { ISSEMANTIC => 1 },
	TO => { ISSEMANTIC => 1 },
	TRANSACTION => { ISSEMANTIC => 1 },
	TREAT => { ISSEMANTIC => 1 },
	TRIGGER => { ISSEMANTIC => 1 },
	TRIM => { ISSEMANTIC => 1 },
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
	VALUES => { ISSEMANTIC => 1 },
	VARCHAR => { ISSEMANTIC => 1 },
	VARYING => { ISSEMANTIC => 1 },
	VERBOSE => { ISSEMANTIC => 1 },
	VERSION => { ISSEMANTIC => 1 },
	VIEW => { ISSEMANTIC => 1 },
	VOLATILE => { ISSEMANTIC => 1 },
	WHITESPACE => { ISSEMANTIC => 1 },
	WITH => { ISSEMANTIC => 1 },
	WITHOUT => { ISSEMANTIC => 1 },
	WORK => { ISSEMANTIC => 1 },
	WRAPPER => { ISSEMANTIC => 1 },
	WRITE => { ISSEMANTIC => 1 },
	XBITSTRING_CONSTANT => { ISSEMANTIC => 1 },
	XML => { ISSEMANTIC => 1 },
	XMLATTRIBUTES => { ISSEMANTIC => 1 },
	XMLCONCAT => { ISSEMANTIC => 1 },
	XMLELEMENT => { ISSEMANTIC => 1 },
	XMLEXISTS => { ISSEMANTIC => 1 },
	XMLFOREST => { ISSEMANTIC => 1 },
	XMLPARSE => { ISSEMANTIC => 1 },
	XMLPI => { ISSEMANTIC => 1 },
	XMLROOT => { ISSEMANTIC => 1 },
	XMLSERIALIZE => { ISSEMANTIC => 1 },
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
			'INPUT' => 10,
			'SYSID' => 9,
			'JOIN' => 8,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'NCHAR' => 16,
			'STRING_CONSTANT' => 17,
			'INVOKER' => 18,
			'WORK' => 19,
			'PASSING' => 20,
			'MODE' => 21,
			'INTEGER' => 22,
			'INHERITS' => 23,
			'ESCAPE' => 25,
			'VALUE' => 24,
			'DROP' => 26,
			'MONTH' => 27,
			'ENCODING' => 29,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'FULL' => 37,
			'TREAT' => 38,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'DATA' => 45,
			'DAY' => 44,
			'PARTITION' => 43,
			'RANGE' => 42,
			'REF' => 48,
			'SHARE' => 47,
			'REAL' => 46,
			'OVER' => 49,
			'LARGE' => 51,
			'CURRENT_SCHEMA' => 50,
			'DELETE' => 52,
			'NULLIF' => 53,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'REPLICA' => 58,
			'PRIVILEGES' => 59,
			'ZONE' => 60,
			'LEAST' => 61,
			'STATISTICS' => 62,
			'ISNULL' => 63,
			'CALLED' => 64,
			'USTRING_CONSTANT' => 65,
			'SECURITY' => 66,
			'INCREMENT' => 68,
			'BINARY' => 69,
			'LEVEL' => 70,
			'FORCE' => 71,
			'CONCURRENTLY' => 72,
			'XBITSTRING_CONSTANT' => 73,
			'UPDATE' => 75,
			'PRESERVE' => 76,
			'CHARACTERISTICS' => 78,
			'XMLPI' => 77,
			'VALIDATE' => 79,
			"(" => 80,
			'ESTRING_CONSTANT' => 82,
			'STRICT' => 81,
			'VARYING' => 83,
			'AUTHORIZATION' => 84,
			'REASSIGN' => 85,
			'LABEL' => 87,
			'ROLLBACK' => 86,
			'OBJECT' => 88,
			'TIMESTAMP' => 91,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 92,
			'OPERATOR_NAME' => 94,
			'NUMERIC_CONSTANT' => 93,
			'INSERT' => 95,
			'HANDLER' => 96,
			'LOCATION' => 98,
			'EXISTS' => 97,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'BOOLEAN' => 100,
			'NULLS' => 102,
			'TYPE' => 103,
			'RESET' => 104,
			'NOWAIT' => 105,
			'PRIOR' => 106,
			'OFF' => 110,
			'BIGINT' => 109,
			'XMLSERIALIZE' => 108,
			'VERBOSE' => 111,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'SETOF' => 116,
			'INNER' => 117,
			'EXTRACT' => 118,
			'REINDEX' => 119,
			'PRECISION' => 120,
			'ACCESS' => 121,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'INOUT' => 124,
			'DEALLOCATE' => 125,
			'CATALOG' => 126,
			'OUT' => 127,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'XMLEXISTS' => 133,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'LEFT' => 136,
			'PRECEDING' => 137,
			'INTEGER_CONSTANT' => 138,
			'STABLE' => 139,
			'DEC' => 140,
			'XML' => 142,
			'XMLELEMENT' => 141,
			'SCROLL' => 143,
			'TEXT' => 144,
			'FUNCTION' => 146,
			'ALSO' => 145,
			'AGGREGATE' => 148,
			'SYSTEM' => 147,
			'FLOAT' => 149,
			'ATTRIBUTE' => 150,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'OVERLAPS' => 155,
			'DEFERRED' => 157,
			'VIEW' => 156,
			'REPEATABLE' => 158,
			'ALWAYS' => 159,
			'FORWARD' => 161,
			'CONSTRAINTS' => 160,
			'NOTHING' => 162,
			'EXCLUDING' => 163,
			'DECIMAL' => 164,
			'CHECKPOINT' => 166,
			'INDEXES' => 165,
			'CACHE' => 167,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'UNLISTEN' => 170,
			'LOAD' => 171,
			'FAMILY' => 172,
			'SMALLINT' => 173,
			'ASSERTION' => 174,
			'ILIKE' => 175,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'SIMILAR' => 178,
			'STDOUT' => 180,
			'BITSTRING_CONSTANT' => 182,
			'REVOKE' => 181,
			'INHERIT' => 183,
			'OUTER' => 184,
			'EXPLAIN' => 185,
			'VARCHAR' => 187,
			'OIDS' => 186,
			'AFTER' => 188,
			'DISABLE' => 190,
			'CSV' => 189,
			'VACUUM' => 191,
			'SCHEMA' => 192,
			'ROW' => 193,
			'LC_COLLATE' => 194,
			'FREEZE' => 195,
			'INDEX' => 196,
			'DEFINER' => 197,
			'XMLPARSE' => 198,
			'ADMIN' => 200,
			'INCLUDING' => 201,
			'OWNED' => 202,
			'CROSS' => 203,
			'INSTEAD' => 204,
			'NATIONAL' => 205,
			'EACH' => 206,
			'TRUSTED' => 207,
			'EXCLUSIVE' => 208,
			'OWNER' => 209,
			'CHARACTER' => 210,
			'CASCADE' => 211,
			'STATEMENT' => 212,
			'ASSIGNMENT' => 214,
			'MATCH' => 215,
			'DOUBLE' => 217,
			'CLASS' => 218,
			'MOVE' => 219,
			'TIME' => 220,
			'NUMERIC' => 221,
			'CURSOR' => 222,
			'INLINE' => 223,
			'ENCRYPTED' => 224,
			'EXTENSION' => 225,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'VALIDATOR' => 228,
			'XMLROOT' => 230,
			'UQUOTED_IDENTIFIER' => 231,
			'SUBSTRING' => 232,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'BETWEEN' => 235,
			'ABORT' => 236,
			'XMLATTRIBUTES' => 237,
			'VALUES' => 238,
			'TRUNCATE' => 240,
			'BEFORE' => 241,
			'ABSOLUTE' => 242,
			'IDENTIFIER' => 243,
			'SHOW' => 244,
			'GREATEST' => 245,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'WHITESPACE' => 250,
			'SECOND' => 252,
			'HOUR' => 253,
			'XMLFOREST' => 254,
			'FOLLOWING' => 256,
			'WRAPPER' => 257,
			'LISTEN' => 258,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'YEAR' => 261,
			'STANDALONE' => 262,
			'TEMP' => 263,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OPTIONS' => 266,
			'CAST' => 267,
			'YES' => 268,
			'PROCEDURAL' => 269,
			'SEQUENCE' => 270,
			'LIKE' => 271,
			'SIMPLE' => 272,
			'IDENTITY' => 273,
			'QUOTE' => 274,
			'POSITION' => 276,
			'DOMAIN' => 277,
			'EXECUTE' => 278,
			'UNKNOWN' => 279,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'SERVER' => 283,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'NAMES' => 287,
			'CONFIGURATION' => 286,
			'RENAME' => 289,
			'PARSER' => 288,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RIGHT' => 290,
			'IMPLICIT' => 294,
			'CLUSTER' => 295,
			'NATURAL' => 296,
			'XMLCONCAT' => 297,
			'PASSWORD' => 298,
			'CHAR' => 299,
			'RECHECK' => 300,
			'PREPARED' => 302,
			'NEXT' => 301,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'GRANTED' => 306,
			'BIT' => 305,
			'NOTIFY' => 308,
			'BEGIN' => 307,
			'HEADER' => 309,
			'INTERVAL' => 310,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'STORAGE' => 315,
			'ISOLATION' => 314,
			'FUNCTIONS' => 313,
			'STDIN' => 316,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'IS' => 319,
			'TRIM' => 318,
			'MAXVALUE' => 322,
			'START' => 323,
			'SAVEPOINT' => 326,
			'IF' => 325,
			'DOCUMENT' => 324,
			'ROWS' => 327,
			'MINVALUE' => 329,
			'LAST' => 328,
			'KEY' => 330,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'ACTION' => 334,
			'WRITE' => 335,
			'ROLE' => 336,
			'NOTNULL' => 337,
			'SESSION' => 338,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'NONE' => 344,
			'TABLES' => 347,
			'VALID' => 346,
			'INT' => 345,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'UNENCRYPTED' => 351,
			'OVERLAY' => 352,
			'FIRST' => 354,
			'COALESCE' => 353,
			'VERSION' => 355
		},
		GOTOS => {
			'expr_simple' => 280,
			'result_columns' => 36,
			'identifier' => 67,
			'expr' => 179,
			'timestamp_type' => 239,
			'operator_expression' => 199,
			'simple_type' => 213,
			'base_type' => 216,
			'time_type' => 151,
			'keywords_reserved_ok_for_functions_or_types' => 74,
			'base_interval_type' => 348,
			'normal_type' => 28,
			'keywords_notreserved_not_ok_for_functions_or_types' => 251,
			'interval_type' => 293,
			'literal_value' => 275,
			'result_column' => 229,
			'cast_expression' => 107,
			'keywords_notreserved' => 255
		}
	},
	{#State 6
		ACTIONS => {
			'SELECT' => 5
		},
		DEFAULT => -4,
		GOTOS => {
			'select_stmt' => 1,
			'statement' => 356
		}
	},
	{#State 7
		DEFAULT => 0
	},
	{#State 8
		DEFAULT => -349
	},
	{#State 9
		DEFAULT => -299
	},
	{#State 10
		DEFAULT => -193
	},
	{#State 11
		DEFAULT => -282
	},
	{#State 12
		DEFAULT => -263
	},
	{#State 13
		DEFAULT => -194
	},
	{#State 14
		DEFAULT => -103
	},
	{#State 15
		DEFAULT => -268
	},
	{#State 16
		DEFAULT => -379
	},
	{#State 17
		DEFAULT => -34
	},
	{#State 18
		DEFAULT => -197
	},
	{#State 19
		DEFAULT => -331
	},
	{#State 20
		DEFAULT => -240
	},
	{#State 21
		DEFAULT => -217
	},
	{#State 22
		DEFAULT => -375
	},
	{#State 23
		DEFAULT => -191
	},
	{#State 24
		DEFAULT => -324
	},
	{#State 25
		DEFAULT => -160
	},
	{#State 26
		DEFAULT => -154
	},
	{#State 27
		DEFAULT => -218
	},
	{#State 28
		ACTIONS => {
			'USTRING_CONSTANT' => 65,
			'STRING_CONSTANT' => 17,
			'BITSTRING_CONSTANT' => 182,
			'NUMERIC_CONSTANT' => 93,
			'ESTRING_CONSTANT' => 82,
			'XBITSTRING_CONSTANT' => 73,
			'INTEGER_CONSTANT' => 138
		},
		GOTOS => {
			'literal_value' => 357
		}
	},
	{#State 29
		DEFAULT => -157
	},
	{#State 30
		DEFAULT => -304
	},
	{#State 31
		DEFAULT => -148
	},
	{#State 32
		DEFAULT => -277
	},
	{#State 33
		DEFAULT => -244
	},
	{#State 34
		DEFAULT => -211
	},
	{#State 35
		DEFAULT => -142
	},
	{#State 36
		ACTIONS => {
			"," => 358
		},
		DEFAULT => -6
	},
	{#State 37
		DEFAULT => -344
	},
	{#State 38
		DEFAULT => -394
	},
	{#State 39
		DEFAULT => -108
	},
	{#State 40
		DEFAULT => -223
	},
	{#State 41
		DEFAULT => -215
	},
	{#State 42
		DEFAULT => -252
	},
	{#State 43
		DEFAULT => -239
	},
	{#State 44
		DEFAULT => -139
	},
	{#State 45
		DEFAULT => -137
	},
	{#State 46
		DEFAULT => -387
	},
	{#State 47
		DEFAULT => -286
	},
	{#State 48
		DEFAULT => -257
	},
	{#State 49
		DEFAULT => -355
	},
	{#State 50
		DEFAULT => -342
	},
	{#State 51
		DEFAULT => -202
	},
	{#State 52
		DEFAULT => -145
	},
	{#State 53
		DEFAULT => -381
	},
	{#State 54
		DEFAULT => -126
	},
	{#State 55
		DEFAULT => -118
	},
	{#State 56
		DEFAULT => -105
	},
	{#State 57
		DEFAULT => -132
	},
	{#State 58
		DEFAULT => -264
	},
	{#State 59
		DEFAULT => -248
	},
	{#State 60
		DEFAULT => -337
	},
	{#State 61
		DEFAULT => -377
	},
	{#State 62
		DEFAULT => -293
	},
	{#State 63
		DEFAULT => -348
	},
	{#State 64
		DEFAULT => -110
	},
	{#State 65
		DEFAULT => -35
	},
	{#State 66
		DEFAULT => -279
	},
	{#State 67
		ACTIONS => {
			"." => 359
		},
		DEFAULT => -56
	},
	{#State 68
		DEFAULT => -187
	},
	{#State 69
		DEFAULT => -339
	},
	{#State 70
		DEFAULT => -206
	},
	{#State 71
		DEFAULT => -171
	},
	{#State 72
		DEFAULT => -340
	},
	{#State 73
		DEFAULT => -38
	},
	{#State 74
		DEFAULT => -57
	},
	{#State 75
		DEFAULT => -319
	},
	{#State 76
		DEFAULT => -246
	},
	{#State 77
		DEFAULT => -404
	},
	{#State 78
		DEFAULT => -115
	},
	{#State 79
		DEFAULT => -322
	},
	{#State 80
		ACTIONS => {
			'INPUT' => 10,
			'SYSID' => 9,
			'JOIN' => 8,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'NCHAR' => 16,
			'STRING_CONSTANT' => 17,
			'INVOKER' => 18,
			'WORK' => 19,
			'PASSING' => 20,
			'MODE' => 21,
			'INTEGER' => 22,
			'INHERITS' => 23,
			'ESCAPE' => 25,
			'VALUE' => 24,
			'DROP' => 26,
			'MONTH' => 27,
			'ENCODING' => 29,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'FULL' => 37,
			'TREAT' => 38,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'DATA' => 45,
			'DAY' => 44,
			'PARTITION' => 43,
			'RANGE' => 42,
			'REF' => 48,
			'SHARE' => 47,
			'REAL' => 46,
			'OVER' => 49,
			'LARGE' => 51,
			'CURRENT_SCHEMA' => 50,
			'DELETE' => 52,
			'NULLIF' => 53,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'REPLICA' => 58,
			'PRIVILEGES' => 59,
			'ZONE' => 60,
			'LEAST' => 61,
			'STATISTICS' => 62,
			'ISNULL' => 63,
			'CALLED' => 64,
			'USTRING_CONSTANT' => 65,
			'SECURITY' => 66,
			'INCREMENT' => 68,
			'BINARY' => 69,
			'LEVEL' => 70,
			'FORCE' => 71,
			'CONCURRENTLY' => 72,
			'XBITSTRING_CONSTANT' => 73,
			'UPDATE' => 75,
			'PRESERVE' => 76,
			'CHARACTERISTICS' => 78,
			'XMLPI' => 77,
			'VALIDATE' => 79,
			"(" => 80,
			'ESTRING_CONSTANT' => 82,
			'STRICT' => 81,
			'VARYING' => 83,
			'AUTHORIZATION' => 84,
			'REASSIGN' => 85,
			'LABEL' => 87,
			'ROLLBACK' => 86,
			'OBJECT' => 88,
			'TIMESTAMP' => 91,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 92,
			'OPERATOR_NAME' => 94,
			'NUMERIC_CONSTANT' => 93,
			'INSERT' => 95,
			'HANDLER' => 96,
			'LOCATION' => 98,
			'EXISTS' => 97,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'BOOLEAN' => 100,
			'NULLS' => 102,
			'TYPE' => 103,
			'RESET' => 104,
			'NOWAIT' => 105,
			'PRIOR' => 106,
			'OFF' => 110,
			'BIGINT' => 109,
			'XMLSERIALIZE' => 108,
			'VERBOSE' => 111,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'SETOF' => 116,
			'INNER' => 117,
			'EXTRACT' => 118,
			'REINDEX' => 119,
			'PRECISION' => 120,
			'ACCESS' => 121,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'INOUT' => 124,
			'DEALLOCATE' => 125,
			'CATALOG' => 126,
			'OUT' => 127,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'XMLEXISTS' => 133,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'LEFT' => 136,
			'PRECEDING' => 137,
			'INTEGER_CONSTANT' => 138,
			'STABLE' => 139,
			'DEC' => 140,
			'XML' => 142,
			'XMLELEMENT' => 141,
			'SCROLL' => 143,
			'TEXT' => 144,
			'ALSO' => 145,
			'FUNCTION' => 146,
			'AGGREGATE' => 148,
			'SYSTEM' => 147,
			'FLOAT' => 149,
			'ATTRIBUTE' => 150,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'OVERLAPS' => 155,
			'DEFERRED' => 157,
			'VIEW' => 156,
			'REPEATABLE' => 158,
			'ALWAYS' => 159,
			'CONSTRAINTS' => 160,
			'FORWARD' => 161,
			'NOTHING' => 162,
			'EXCLUDING' => 163,
			'DECIMAL' => 164,
			'CHECKPOINT' => 166,
			'INDEXES' => 165,
			'CACHE' => 167,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'UNLISTEN' => 170,
			'LOAD' => 171,
			'FAMILY' => 172,
			'SMALLINT' => 173,
			'ASSERTION' => 174,
			'ILIKE' => 175,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'SIMILAR' => 178,
			'STDOUT' => 180,
			'BITSTRING_CONSTANT' => 182,
			'REVOKE' => 181,
			'INHERIT' => 183,
			'OUTER' => 184,
			'EXPLAIN' => 185,
			'VARCHAR' => 187,
			'OIDS' => 186,
			'AFTER' => 188,
			'CSV' => 189,
			'DISABLE' => 190,
			'VACUUM' => 191,
			'SCHEMA' => 192,
			'ROW' => 193,
			'LC_COLLATE' => 194,
			'FREEZE' => 195,
			'INDEX' => 196,
			'DEFINER' => 197,
			'XMLPARSE' => 198,
			'OWNED' => 202,
			'INCLUDING' => 201,
			'ADMIN' => 200,
			'CROSS' => 203,
			'INSTEAD' => 204,
			'NATIONAL' => 205,
			'EACH' => 206,
			'TRUSTED' => 207,
			'OWNER' => 209,
			'EXCLUSIVE' => 208,
			'CHARACTER' => 210,
			'STATEMENT' => 212,
			'CASCADE' => 211,
			'ASSIGNMENT' => 214,
			'MATCH' => 215,
			'MOVE' => 219,
			'CLASS' => 218,
			'DOUBLE' => 217,
			'TIME' => 220,
			'NUMERIC' => 221,
			'INLINE' => 223,
			'CURSOR' => 222,
			'EXTENSION' => 225,
			'ENCRYPTED' => 224,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'VALIDATOR' => 228,
			'XMLROOT' => 230,
			'UQUOTED_IDENTIFIER' => 231,
			'SUBSTRING' => 232,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'BETWEEN' => 235,
			'ABORT' => 236,
			'XMLATTRIBUTES' => 237,
			'VALUES' => 238,
			'TRUNCATE' => 240,
			'BEFORE' => 241,
			'SHOW' => 244,
			'ABSOLUTE' => 242,
			'IDENTIFIER' => 243,
			'GREATEST' => 245,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'WHITESPACE' => 250,
			'SECOND' => 252,
			'HOUR' => 253,
			'XMLFOREST' => 254,
			'FOLLOWING' => 256,
			'WRAPPER' => 257,
			'LISTEN' => 258,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'YEAR' => 261,
			'TEMP' => 263,
			'STANDALONE' => 262,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OPTIONS' => 266,
			'CAST' => 267,
			'YES' => 268,
			'PROCEDURAL' => 269,
			'SEQUENCE' => 270,
			'LIKE' => 271,
			'SIMPLE' => 272,
			'QUOTE' => 274,
			'IDENTITY' => 273,
			'POSITION' => 276,
			'EXECUTE' => 278,
			'DOMAIN' => 277,
			'UNKNOWN' => 279,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'SERVER' => 283,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'CONFIGURATION' => 286,
			'NAMES' => 287,
			'PARSER' => 288,
			'RENAME' => 289,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RIGHT' => 290,
			'IMPLICIT' => 294,
			'CLUSTER' => 295,
			'NATURAL' => 296,
			'XMLCONCAT' => 297,
			'PASSWORD' => 298,
			'CHAR' => 299,
			'RECHECK' => 300,
			'NEXT' => 301,
			'PREPARED' => 302,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'GRANTED' => 306,
			'BIT' => 305,
			'BEGIN' => 307,
			'NOTIFY' => 308,
			'HEADER' => 309,
			'INTERVAL' => 310,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'FUNCTIONS' => 313,
			'ISOLATION' => 314,
			'STORAGE' => 315,
			'STDIN' => 316,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'IS' => 319,
			'TRIM' => 318,
			'MAXVALUE' => 322,
			'START' => 323,
			'DOCUMENT' => 324,
			'IF' => 325,
			'SAVEPOINT' => 326,
			'ROWS' => 327,
			'LAST' => 328,
			'MINVALUE' => 329,
			'KEY' => 330,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'ACTION' => 334,
			'WRITE' => 335,
			'ROLE' => 336,
			'NOTNULL' => 337,
			'SESSION' => 338,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'NONE' => 344,
			'TABLES' => 347,
			'VALID' => 346,
			'INT' => 345,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'UNENCRYPTED' => 351,
			'OVERLAY' => 352,
			'FIRST' => 354,
			'COALESCE' => 353,
			'VERSION' => 355
		},
		GOTOS => {
			'base_type' => 216,
			'time_type' => 151,
			'expr_simple' => 280,
			'keywords_reserved_ok_for_functions_or_types' => 74,
			'base_interval_type' => 348,
			'keywords_notreserved_not_ok_for_functions_or_types' => 251,
			'normal_type' => 28,
			'interval_type' => 293,
			'literal_value' => 275,
			'identifier' => 67,
			'expr' => 360,
			'timestamp_type' => 239,
			'operator_expression' => 199,
			'cast_expression' => 107,
			'simple_type' => 213,
			'keywords_notreserved' => 255
		}
	},
	{#State 81
		DEFAULT => -297
	},
	{#State 82
		DEFAULT => -36
	},
	{#State 83
		DEFAULT => -325
	},
	{#State 84
		DEFAULT => -338
	},
	{#State 85
		DEFAULT => -254
	},
	{#State 86
		DEFAULT => -271
	},
	{#State 87
		DEFAULT => -200
	},
	{#State 88
		DEFAULT => -228
	},
	{#State 89
		DEFAULT => -250
	},
	{#State 90
		DEFAULT => -147
	},
	{#State 91
		ACTIONS => {
			'WITHOUT' => 363,
			'WITH' => 362,
			"(" => 361
		},
		DEFAULT => -393
	},
	{#State 92
		DEFAULT => -273
	},
	{#State 93
		DEFAULT => -39
	},
	{#State 94
		ACTIONS => {
			'INPUT' => 10,
			'SYSID' => 9,
			'JOIN' => 8,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'NCHAR' => 16,
			'STRING_CONSTANT' => 17,
			'INVOKER' => 18,
			'WORK' => 19,
			'PASSING' => 20,
			'MODE' => 21,
			'INTEGER' => 22,
			'INHERITS' => 23,
			'ESCAPE' => 25,
			'VALUE' => 24,
			'DROP' => 26,
			'MONTH' => 27,
			'ENCODING' => 29,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'FULL' => 37,
			'TREAT' => 38,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'DATA' => 45,
			'DAY' => 44,
			'PARTITION' => 43,
			'RANGE' => 42,
			'REF' => 48,
			'SHARE' => 47,
			'REAL' => 46,
			'OVER' => 49,
			'LARGE' => 51,
			'CURRENT_SCHEMA' => 50,
			'DELETE' => 52,
			'NULLIF' => 53,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'REPLICA' => 58,
			'PRIVILEGES' => 59,
			'ZONE' => 60,
			'LEAST' => 61,
			'STATISTICS' => 62,
			'ISNULL' => 63,
			'CALLED' => 64,
			'USTRING_CONSTANT' => 65,
			'SECURITY' => 66,
			'INCREMENT' => 68,
			'BINARY' => 69,
			'LEVEL' => 70,
			'FORCE' => 71,
			'CONCURRENTLY' => 72,
			'XBITSTRING_CONSTANT' => 73,
			'UPDATE' => 75,
			'PRESERVE' => 76,
			'CHARACTERISTICS' => 78,
			'XMLPI' => 77,
			'VALIDATE' => 79,
			"(" => 80,
			'ESTRING_CONSTANT' => 82,
			'STRICT' => 81,
			'VARYING' => 83,
			'AUTHORIZATION' => 84,
			'REASSIGN' => 85,
			'LABEL' => 87,
			'ROLLBACK' => 86,
			'OBJECT' => 88,
			'TIMESTAMP' => 91,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 92,
			'OPERATOR_NAME' => 94,
			'NUMERIC_CONSTANT' => 93,
			'INSERT' => 95,
			'HANDLER' => 96,
			'LOCATION' => 98,
			'EXISTS' => 97,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'BOOLEAN' => 100,
			'NULLS' => 102,
			'TYPE' => 103,
			'RESET' => 104,
			'NOWAIT' => 105,
			'PRIOR' => 106,
			'OFF' => 110,
			'BIGINT' => 109,
			'XMLSERIALIZE' => 108,
			'VERBOSE' => 111,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'SETOF' => 116,
			'INNER' => 117,
			'EXTRACT' => 118,
			'REINDEX' => 119,
			'PRECISION' => 120,
			'ACCESS' => 121,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'INOUT' => 124,
			'DEALLOCATE' => 125,
			'CATALOG' => 126,
			'OUT' => 127,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'XMLEXISTS' => 133,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'LEFT' => 136,
			'PRECEDING' => 137,
			'INTEGER_CONSTANT' => 138,
			'STABLE' => 139,
			'DEC' => 140,
			'XML' => 142,
			'XMLELEMENT' => 141,
			'SCROLL' => 143,
			'TEXT' => 144,
			'ALSO' => 145,
			'FUNCTION' => 146,
			'AGGREGATE' => 148,
			'SYSTEM' => 147,
			'FLOAT' => 149,
			'ATTRIBUTE' => 150,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'OVERLAPS' => 155,
			'DEFERRED' => 157,
			'VIEW' => 156,
			'REPEATABLE' => 158,
			'ALWAYS' => 159,
			'CONSTRAINTS' => 160,
			'FORWARD' => 161,
			'NOTHING' => 162,
			'EXCLUDING' => 163,
			'DECIMAL' => 164,
			'CHECKPOINT' => 166,
			'INDEXES' => 165,
			'CACHE' => 167,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'UNLISTEN' => 170,
			'LOAD' => 171,
			'FAMILY' => 172,
			'SMALLINT' => 173,
			'ASSERTION' => 174,
			'ILIKE' => 175,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'SIMILAR' => 178,
			'STDOUT' => 180,
			'BITSTRING_CONSTANT' => 182,
			'REVOKE' => 181,
			'INHERIT' => 183,
			'OUTER' => 184,
			'EXPLAIN' => 185,
			'VARCHAR' => 187,
			'OIDS' => 186,
			'AFTER' => 188,
			'CSV' => 189,
			'DISABLE' => 190,
			'VACUUM' => 191,
			'SCHEMA' => 192,
			'ROW' => 193,
			'LC_COLLATE' => 194,
			'FREEZE' => 195,
			'INDEX' => 196,
			'DEFINER' => 197,
			'XMLPARSE' => 198,
			'OWNED' => 202,
			'INCLUDING' => 201,
			'ADMIN' => 200,
			'CROSS' => 203,
			'INSTEAD' => 204,
			'NATIONAL' => 205,
			'EACH' => 206,
			'TRUSTED' => 207,
			'OWNER' => 209,
			'EXCLUSIVE' => 208,
			'CHARACTER' => 210,
			'STATEMENT' => 212,
			'CASCADE' => 211,
			'ASSIGNMENT' => 214,
			'MATCH' => 215,
			'MOVE' => 219,
			'CLASS' => 218,
			'DOUBLE' => 217,
			'TIME' => 220,
			'NUMERIC' => 221,
			'INLINE' => 223,
			'CURSOR' => 222,
			'EXTENSION' => 225,
			'ENCRYPTED' => 224,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'VALIDATOR' => 228,
			'XMLROOT' => 230,
			'UQUOTED_IDENTIFIER' => 231,
			'SUBSTRING' => 232,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'BETWEEN' => 235,
			'ABORT' => 236,
			'XMLATTRIBUTES' => 237,
			'VALUES' => 238,
			'TRUNCATE' => 240,
			'BEFORE' => 241,
			'SHOW' => 244,
			'ABSOLUTE' => 242,
			'IDENTIFIER' => 243,
			'GREATEST' => 245,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'WHITESPACE' => 250,
			'SECOND' => 252,
			'HOUR' => 253,
			'XMLFOREST' => 254,
			'FOLLOWING' => 256,
			'WRAPPER' => 257,
			'LISTEN' => 258,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'YEAR' => 261,
			'TEMP' => 263,
			'STANDALONE' => 262,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OPTIONS' => 266,
			'CAST' => 267,
			'YES' => 268,
			'PROCEDURAL' => 269,
			'SEQUENCE' => 270,
			'LIKE' => 271,
			'SIMPLE' => 272,
			'QUOTE' => 274,
			'IDENTITY' => 273,
			'POSITION' => 276,
			'EXECUTE' => 278,
			'DOMAIN' => 277,
			'UNKNOWN' => 279,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'SERVER' => 283,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'CONFIGURATION' => 286,
			'NAMES' => 287,
			'PARSER' => 288,
			'RENAME' => 289,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RIGHT' => 290,
			'IMPLICIT' => 294,
			'CLUSTER' => 295,
			'NATURAL' => 296,
			'XMLCONCAT' => 297,
			'PASSWORD' => 298,
			'CHAR' => 299,
			'RECHECK' => 300,
			'NEXT' => 301,
			'PREPARED' => 302,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'GRANTED' => 306,
			'BIT' => 305,
			'BEGIN' => 307,
			'NOTIFY' => 308,
			'HEADER' => 309,
			'INTERVAL' => 310,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'FUNCTIONS' => 313,
			'ISOLATION' => 314,
			'STORAGE' => 315,
			'STDIN' => 316,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'IS' => 319,
			'TRIM' => 318,
			'MAXVALUE' => 322,
			'START' => 323,
			'DOCUMENT' => 324,
			'IF' => 325,
			'SAVEPOINT' => 326,
			'ROWS' => 327,
			'LAST' => 328,
			'MINVALUE' => 329,
			'KEY' => 330,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'ACTION' => 334,
			'WRITE' => 335,
			'ROLE' => 336,
			'NOTNULL' => 337,
			'SESSION' => 338,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'NONE' => 344,
			'TABLES' => 347,
			'VALID' => 346,
			'INT' => 345,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'UNENCRYPTED' => 351,
			'OVERLAY' => 352,
			'FIRST' => 354,
			'COALESCE' => 353,
			'VERSION' => 355
		},
		GOTOS => {
			'base_type' => 216,
			'time_type' => 151,
			'expr_simple' => 280,
			'keywords_reserved_ok_for_functions_or_types' => 74,
			'base_interval_type' => 348,
			'keywords_notreserved_not_ok_for_functions_or_types' => 251,
			'normal_type' => 28,
			'interval_type' => 293,
			'literal_value' => 275,
			'identifier' => 67,
			'expr' => 364,
			'timestamp_type' => 239,
			'operator_expression' => 199,
			'cast_expression' => 107,
			'simple_type' => 213,
			'keywords_notreserved' => 255
		}
	},
	{#State 95
		DEFAULT => -195
	},
	{#State 96
		DEFAULT => -177
	},
	{#State 97
		DEFAULT => -369
	},
	{#State 98
		DEFAULT => -210
	},
	{#State 99
		DEFAULT => -184
	},
	{#State 100
		DEFAULT => -363
	},
	{#State 101
		DEFAULT => -260
	},
	{#State 102
		DEFAULT => -227
	},
	{#State 103
		DEFAULT => -311
	},
	{#State 104
		DEFAULT => -265
	},
	{#State 105
		DEFAULT => -226
	},
	{#State 106
		DEFAULT => -247
	},
	{#State 107
		DEFAULT => -13
	},
	{#State 108
		DEFAULT => -406
	},
	{#State 109
		DEFAULT => -361
	},
	{#State 110
		DEFAULT => -230
	},
	{#State 111
		DEFAULT => -359
	},
	{#State 112
		DEFAULT => -285
	},
	{#State 113
		DEFAULT => -183
	},
	{#State 114
		DEFAULT => -121
	},
	{#State 115
		DEFAULT => -146
	},
	{#State 116
		DEFAULT => -389
	},
	{#State 117
		DEFAULT => -346
	},
	{#State 118
		DEFAULT => -370
	},
	{#State 119
		DEFAULT => -258
	},
	{#State 120
		DEFAULT => -386
	},
	{#State 121
		DEFAULT => -92
	},
	{#State 122
		DEFAULT => -233
	},
	{#State 123
		DEFAULT => -122
	},
	{#State 124
		DEFAULT => -373
	},
	{#State 125
		DEFAULT => -140
	},
	{#State 126
		DEFAULT => -113
	},
	{#State 127
		DEFAULT => -383
	},
	{#State 128
		DEFAULT => -266
	},
	{#State 129
		DEFAULT => -212
	},
	{#State 130
		DEFAULT => -229
	},
	{#State 131
		DEFAULT => -317
	},
	{#State 132
		DEFAULT => -129
	},
	{#State 133
		DEFAULT => -401
	},
	{#State 134
		DEFAULT => -312
	},
	{#State 135
		DEFAULT => -253
	},
	{#State 136
		DEFAULT => -350
	},
	{#State 137
		DEFAULT => -243
	},
	{#State 138
		DEFAULT => -40
	},
	{#State 139
		DEFAULT => -289
	},
	{#State 140
		DEFAULT => -367
	},
	{#State 141
		DEFAULT => -400
	},
	{#State 142
		DEFAULT => -334
	},
	{#State 143
		DEFAULT => -276
	},
	{#State 144
		DEFAULT => -306
	},
	{#State 145
		DEFAULT => -98
	},
	{#State 146
		DEFAULT => -173
	},
	{#State 147
		DEFAULT => -300
	},
	{#State 148
		DEFAULT => -97
	},
	{#State 149
		DEFAULT => -371
	},
	{#State 150
		DEFAULT => -104
	},
	{#State 151
		DEFAULT => -52
	},
	{#State 152
		DEFAULT => -94
	},
	{#State 153
		DEFAULT => -298
	},
	{#State 154
		DEFAULT => -302
	},
	{#State 155
		DEFAULT => -356
	},
	{#State 156
		DEFAULT => -327
	},
	{#State 157
		DEFAULT => -143
	},
	{#State 158
		DEFAULT => -262
	},
	{#State 159
		DEFAULT => -100
	},
	{#State 160
		DEFAULT => -127
	},
	{#State 161
		DEFAULT => -172
	},
	{#State 162
		DEFAULT => -224
	},
	{#State 163
		DEFAULT => -162
	},
	{#State 164
		ACTIONS => {
			"(" => 365
		},
		DEFAULT => -368
	},
	{#State 165
		DEFAULT => -189
	},
	{#State 166
		DEFAULT => -116
	},
	{#State 167
		DEFAULT => -109
	},
	{#State 168
		DEFAULT => -123
	},
	{#State 169
		DEFAULT => -141
	},
	{#State 170
		DEFAULT => -316
	},
	{#State 171
		DEFAULT => -208
	},
	{#State 172
		DEFAULT => -168
	},
	{#State 173
		DEFAULT => -390
	},
	{#State 174
		DEFAULT => -101
	},
	{#State 175
		DEFAULT => -345
	},
	{#State 176
		DEFAULT => -175
	},
	{#State 177
		DEFAULT => -167
	},
	{#State 178
		DEFAULT => -358
	},
	{#State 179
		ACTIONS => {
			"-" => 373,
			"::" => 367,
			"<" => 374,
			"+" => 366,
			'ILIKE' => 371,
			"%" => 378,
			'BETWEEN' => 375,
			"^" => 368,
			"*" => 379,
			'OPERATOR_NAME' => 369,
			'AS' => 372,
			'LIKE' => 376,
			"/" => 370,
			"=" => 377,
			">" => 380
		},
		DEFAULT => -9
	},
	{#State 180
		DEFAULT => -295
	},
	{#State 181
		DEFAULT => -269
	},
	{#State 182
		DEFAULT => -37
	},
	{#State 183
		DEFAULT => -190
	},
	{#State 184
		DEFAULT => -354
	},
	{#State 185
		DEFAULT => -165
	},
	{#State 186
		DEFAULT => -231
	},
	{#State 187
		ACTIONS => {
			"(" => 381
		},
		DEFAULT => -397
	},
	{#State 188
		DEFAULT => -96
	},
	{#State 189
		DEFAULT => -133
	},
	{#State 190
		DEFAULT => -149
	},
	{#State 191
		DEFAULT => -320
	},
	{#State 192
		DEFAULT => -275
	},
	{#State 193
		DEFAULT => -388
	},
	{#State 194
		DEFAULT => -204
	},
	{#State 195
		DEFAULT => -343
	},
	{#State 196
		DEFAULT => -188
	},
	{#State 197
		DEFAULT => -144
	},
	{#State 198
		DEFAULT => -403
	},
	{#State 199
		DEFAULT => -12
	},
	{#State 200
		DEFAULT => -95
	},
	{#State 201
		DEFAULT => -186
	},
	{#State 202
		DEFAULT => -235
	},
	{#State 203
		DEFAULT => -341
	},
	{#State 204
		DEFAULT => -196
	},
	{#State 205
		DEFAULT => -378
	},
	{#State 206
		DEFAULT => -155
	},
	{#State 207
		DEFAULT => -310
	},
	{#State 208
		DEFAULT => -163
	},
	{#State 209
		DEFAULT => -236
	},
	{#State 210
		DEFAULT => -365
	},
	{#State 211
		DEFAULT => -111
	},
	{#State 212
		DEFAULT => -292
	},
	{#State 213
		DEFAULT => -45
	},
	{#State 214
		DEFAULT => -102
	},
	{#State 215
		DEFAULT => -213
	},
	{#State 216
		DEFAULT => -54
	},
	{#State 217
		ACTIONS => {
			'PRECISION' => 382
		},
		DEFAULT => -153
	},
	{#State 218
		DEFAULT => -117
	},
	{#State 219
		DEFAULT => -219
	},
	{#State 220
		ACTIONS => {
			'WITHOUT' => 385,
			'WITH' => 384,
			"(" => 383
		},
		DEFAULT => -392
	},
	{#State 221
		ACTIONS => {
			"(" => 386
		},
		DEFAULT => -382
	},
	{#State 222
		DEFAULT => -135
	},
	{#State 223
		DEFAULT => -192
	},
	{#State 224
		DEFAULT => -158
	},
	{#State 225
		DEFAULT => -166
	},
	{#State 226
		DEFAULT => -114
	},
	{#State 227
		DEFAULT => -256
	},
	{#State 228
		DEFAULT => -323
	},
	{#State 229
		DEFAULT => -7
	},
	{#State 230
		DEFAULT => -405
	},
	{#State 231
		DEFAULT => -42
	},
	{#State 232
		DEFAULT => -391
	},
	{#State 233
		DEFAULT => -112
	},
	{#State 234
		DEFAULT => -150
	},
	{#State 235
		DEFAULT => -360
	},
	{#State 236
		DEFAULT => -90
	},
	{#State 237
		DEFAULT => -398
	},
	{#State 238
		DEFAULT => -396
	},
	{#State 239
		DEFAULT => -51
	},
	{#State 240
		DEFAULT => -309
	},
	{#State 241
		DEFAULT => -106
	},
	{#State 242
		DEFAULT => -91
	},
	{#State 243
		DEFAULT => -43
	},
	{#State 244
		DEFAULT => -287
	},
	{#State 245
		DEFAULT => -372
	},
	{#State 246
		DEFAULT => -242
	},
	{#State 247
		DEFAULT => -238
	},
	{#State 248
		DEFAULT => -281
	},
	{#State 249
		DEFAULT => -161
	},
	{#State 250
		DEFAULT => -329
	},
	{#State 251
		DEFAULT => -58
	},
	{#State 252
		DEFAULT => -278
	},
	{#State 253
		DEFAULT => -180
	},
	{#State 254
		DEFAULT => -402
	},
	{#State 255
		DEFAULT => -44
	},
	{#State 256
		DEFAULT => -170
	},
	{#State 257
		DEFAULT => -332
	},
	{#State 258
		DEFAULT => -207
	},
	{#State 259
		DEFAULT => -328
	},
	{#State 260
		DEFAULT => -201
	},
	{#State 261
		DEFAULT => -335
	},
	{#State 262
		DEFAULT => -290
	},
	{#State 263
		DEFAULT => -303
	},
	{#State 264
		DEFAULT => -131
	},
	{#State 265
		DEFAULT => -330
	},
	{#State 266
		DEFAULT => -234
	},
	{#State 267
		ACTIONS => {
			"(" => 387
		}
	},
	{#State 268
		DEFAULT => -336
	},
	{#State 269
		DEFAULT => -249
	},
	{#State 270
		DEFAULT => -280
	},
	{#State 271
		DEFAULT => -351
	},
	{#State 272
		DEFAULT => -288
	},
	{#State 273
		DEFAULT => -181
	},
	{#State 274
		DEFAULT => -251
	},
	{#State 275
		DEFAULT => -32
	},
	{#State 276
		DEFAULT => -385
	},
	{#State 277
		DEFAULT => -152
	},
	{#State 278
		DEFAULT => -164
	},
	{#State 279
		DEFAULT => -315
	},
	{#State 280
		DEFAULT => -11
	},
	{#State 281
		DEFAULT => -128
	},
	{#State 282
		DEFAULT => -41
	},
	{#State 283
		DEFAULT => -283
	},
	{#State 284
		DEFAULT => -259
	},
	{#State 285
		DEFAULT => -307
	},
	{#State 286
		DEFAULT => -125
	},
	{#State 287
		DEFAULT => -221
	},
	{#State 288
		DEFAULT => -237
	},
	{#State 289
		DEFAULT => -261
	},
	{#State 290
		DEFAULT => -357
	},
	{#State 291
		DEFAULT => -134
	},
	{#State 292
		DEFAULT => -99
	},
	{#State 293
		DEFAULT => -53
	},
	{#State 294
		DEFAULT => -185
	},
	{#State 295
		DEFAULT => -119
	},
	{#State 296
		DEFAULT => -352
	},
	{#State 297
		DEFAULT => -399
	},
	{#State 298
		DEFAULT => -241
	},
	{#State 299
		DEFAULT => -364
	},
	{#State 300
		DEFAULT => -255
	},
	{#State 301
		DEFAULT => -222
	},
	{#State 302
		DEFAULT => -245
	},
	{#State 303
		DEFAULT => -305
	},
	{#State 304
		DEFAULT => -124
	},
	{#State 305
		DEFAULT => -362
	},
	{#State 306
		DEFAULT => -176
	},
	{#State 307
		DEFAULT => -107
	},
	{#State 308
		DEFAULT => -225
	},
	{#State 309
		DEFAULT => -178
	},
	{#State 310
		ACTIONS => {
			'MONTH' => -88,
			'SECOND' => -88,
			"(" => 388,
			'HOUR' => -88,
			'YEAR' => -88,
			'MINUTE' => -88,
			'DAY' => -88
		},
		DEFAULT => -376
	},
	{#State 311
		DEFAULT => -205
	},
	{#State 312
		DEFAULT => -220
	},
	{#State 313
		DEFAULT => -174
	},
	{#State 314
		DEFAULT => -198
	},
	{#State 315
		DEFAULT => -296
	},
	{#State 316
		DEFAULT => -294
	},
	{#State 317
		DEFAULT => -267
	},
	{#State 318
		DEFAULT => -395
	},
	{#State 319
		DEFAULT => -347
	},
	{#State 320
		DEFAULT => -313
	},
	{#State 321
		DEFAULT => -136
	},
	{#State 322
		DEFAULT => -214
	},
	{#State 323
		DEFAULT => -291
	},
	{#State 324
		DEFAULT => -151
	},
	{#State 325
		DEFAULT => -182
	},
	{#State 326
		DEFAULT => -274
	},
	{#State 327
		DEFAULT => -272
	},
	{#State 328
		DEFAULT => -203
	},
	{#State 329
		DEFAULT => -216
	},
	{#State 330
		DEFAULT => -199
	},
	{#State 331
		DEFAULT => -318
	},
	{#State 332
		DEFAULT => -232
	},
	{#State 333
		DEFAULT => -179
	},
	{#State 334
		DEFAULT => -93
	},
	{#State 335
		DEFAULT => -333
	},
	{#State 336
		DEFAULT => -270
	},
	{#State 337
		DEFAULT => -353
	},
	{#State 338
		DEFAULT => -284
	},
	{#State 339
		DEFAULT => -130
	},
	{#State 340
		DEFAULT => -159
	},
	{#State 341
		DEFAULT => -138
	},
	{#State 342
		DEFAULT => -156
	},
	{#State 343
		DEFAULT => -209
	},
	{#State 344
		DEFAULT => -380
	},
	{#State 345
		DEFAULT => -374
	},
	{#State 346
		DEFAULT => -321
	},
	{#State 347
		DEFAULT => -301
	},
	{#State 348
		ACTIONS => {
			'YEAR' => 394,
			'MINUTE' => 390,
			'HOUR' => 393,
			'MONTH' => 389,
			'DAY' => 391,
			'SECOND' => 392
		}
	},
	{#State 349
		DEFAULT => -308
	},
	{#State 350
		DEFAULT => -120
	},
	{#State 351
		DEFAULT => -314
	},
	{#State 352
		DEFAULT => -384
	},
	{#State 353
		DEFAULT => -366
	},
	{#State 354
		DEFAULT => -169
	},
	{#State 355
		DEFAULT => -326
	},
	{#State 356
		DEFAULT => -3
	},
	{#State 357
		DEFAULT => -31
	},
	{#State 358
		ACTIONS => {
			'INPUT' => 10,
			'SYSID' => 9,
			'JOIN' => 8,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'NCHAR' => 16,
			'STRING_CONSTANT' => 17,
			'INVOKER' => 18,
			'WORK' => 19,
			'PASSING' => 20,
			'MODE' => 21,
			'INTEGER' => 22,
			'INHERITS' => 23,
			'ESCAPE' => 25,
			'VALUE' => 24,
			'DROP' => 26,
			'MONTH' => 27,
			'ENCODING' => 29,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'FULL' => 37,
			'TREAT' => 38,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'DATA' => 45,
			'DAY' => 44,
			'PARTITION' => 43,
			'RANGE' => 42,
			'REF' => 48,
			'SHARE' => 47,
			'REAL' => 46,
			'OVER' => 49,
			'LARGE' => 51,
			'CURRENT_SCHEMA' => 50,
			'DELETE' => 52,
			'NULLIF' => 53,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'REPLICA' => 58,
			'PRIVILEGES' => 59,
			'ZONE' => 60,
			'LEAST' => 61,
			'STATISTICS' => 62,
			'ISNULL' => 63,
			'CALLED' => 64,
			'USTRING_CONSTANT' => 65,
			'SECURITY' => 66,
			'INCREMENT' => 68,
			'BINARY' => 69,
			'LEVEL' => 70,
			'FORCE' => 71,
			'CONCURRENTLY' => 72,
			'XBITSTRING_CONSTANT' => 73,
			'UPDATE' => 75,
			'PRESERVE' => 76,
			'CHARACTERISTICS' => 78,
			'XMLPI' => 77,
			'VALIDATE' => 79,
			"(" => 80,
			'ESTRING_CONSTANT' => 82,
			'STRICT' => 81,
			'VARYING' => 83,
			'AUTHORIZATION' => 84,
			'REASSIGN' => 85,
			'LABEL' => 87,
			'ROLLBACK' => 86,
			'OBJECT' => 88,
			'TIMESTAMP' => 91,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 92,
			'OPERATOR_NAME' => 94,
			'NUMERIC_CONSTANT' => 93,
			'INSERT' => 95,
			'HANDLER' => 96,
			'LOCATION' => 98,
			'EXISTS' => 97,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'BOOLEAN' => 100,
			'NULLS' => 102,
			'TYPE' => 103,
			'RESET' => 104,
			'NOWAIT' => 105,
			'PRIOR' => 106,
			'OFF' => 110,
			'BIGINT' => 109,
			'XMLSERIALIZE' => 108,
			'VERBOSE' => 111,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'SETOF' => 116,
			'INNER' => 117,
			'EXTRACT' => 118,
			'REINDEX' => 119,
			'PRECISION' => 120,
			'ACCESS' => 121,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'INOUT' => 124,
			'DEALLOCATE' => 125,
			'CATALOG' => 126,
			'OUT' => 127,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'XMLEXISTS' => 133,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'LEFT' => 136,
			'PRECEDING' => 137,
			'INTEGER_CONSTANT' => 138,
			'STABLE' => 139,
			'DEC' => 140,
			'XML' => 142,
			'XMLELEMENT' => 141,
			'SCROLL' => 143,
			'TEXT' => 144,
			'ALSO' => 145,
			'FUNCTION' => 146,
			'AGGREGATE' => 148,
			'SYSTEM' => 147,
			'FLOAT' => 149,
			'ATTRIBUTE' => 150,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'OVERLAPS' => 155,
			'DEFERRED' => 157,
			'VIEW' => 156,
			'REPEATABLE' => 158,
			'ALWAYS' => 159,
			'CONSTRAINTS' => 160,
			'FORWARD' => 161,
			'NOTHING' => 162,
			'EXCLUDING' => 163,
			'DECIMAL' => 164,
			'CHECKPOINT' => 166,
			'INDEXES' => 165,
			'CACHE' => 167,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'UNLISTEN' => 170,
			'LOAD' => 171,
			'FAMILY' => 172,
			'SMALLINT' => 173,
			'ASSERTION' => 174,
			'ILIKE' => 175,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'SIMILAR' => 178,
			'STDOUT' => 180,
			'BITSTRING_CONSTANT' => 182,
			'REVOKE' => 181,
			'INHERIT' => 183,
			'OUTER' => 184,
			'EXPLAIN' => 185,
			'VARCHAR' => 187,
			'OIDS' => 186,
			'AFTER' => 188,
			'CSV' => 189,
			'DISABLE' => 190,
			'VACUUM' => 191,
			'SCHEMA' => 192,
			'ROW' => 193,
			'LC_COLLATE' => 194,
			'FREEZE' => 195,
			'INDEX' => 196,
			'DEFINER' => 197,
			'XMLPARSE' => 198,
			'OWNED' => 202,
			'INCLUDING' => 201,
			'ADMIN' => 200,
			'CROSS' => 203,
			'INSTEAD' => 204,
			'NATIONAL' => 205,
			'EACH' => 206,
			'TRUSTED' => 207,
			'OWNER' => 209,
			'EXCLUSIVE' => 208,
			'CHARACTER' => 210,
			'STATEMENT' => 212,
			'CASCADE' => 211,
			'ASSIGNMENT' => 214,
			'MATCH' => 215,
			'MOVE' => 219,
			'CLASS' => 218,
			'DOUBLE' => 217,
			'TIME' => 220,
			'NUMERIC' => 221,
			'INLINE' => 223,
			'CURSOR' => 222,
			'EXTENSION' => 225,
			'ENCRYPTED' => 224,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'VALIDATOR' => 228,
			'XMLROOT' => 230,
			'UQUOTED_IDENTIFIER' => 231,
			'SUBSTRING' => 232,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'BETWEEN' => 235,
			'ABORT' => 236,
			'XMLATTRIBUTES' => 237,
			'VALUES' => 238,
			'TRUNCATE' => 240,
			'BEFORE' => 241,
			'SHOW' => 244,
			'ABSOLUTE' => 242,
			'IDENTIFIER' => 243,
			'GREATEST' => 245,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'WHITESPACE' => 250,
			'SECOND' => 252,
			'HOUR' => 253,
			'XMLFOREST' => 254,
			'FOLLOWING' => 256,
			'WRAPPER' => 257,
			'LISTEN' => 258,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'YEAR' => 261,
			'TEMP' => 263,
			'STANDALONE' => 262,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OPTIONS' => 266,
			'CAST' => 267,
			'YES' => 268,
			'PROCEDURAL' => 269,
			'SEQUENCE' => 270,
			'LIKE' => 271,
			'SIMPLE' => 272,
			'QUOTE' => 274,
			'IDENTITY' => 273,
			'POSITION' => 276,
			'EXECUTE' => 278,
			'DOMAIN' => 277,
			'UNKNOWN' => 279,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'SERVER' => 283,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'CONFIGURATION' => 286,
			'NAMES' => 287,
			'PARSER' => 288,
			'RENAME' => 289,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RIGHT' => 290,
			'IMPLICIT' => 294,
			'CLUSTER' => 295,
			'NATURAL' => 296,
			'XMLCONCAT' => 297,
			'PASSWORD' => 298,
			'CHAR' => 299,
			'RECHECK' => 300,
			'NEXT' => 301,
			'PREPARED' => 302,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'GRANTED' => 306,
			'BIT' => 305,
			'BEGIN' => 307,
			'NOTIFY' => 308,
			'HEADER' => 309,
			'INTERVAL' => 310,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'FUNCTIONS' => 313,
			'ISOLATION' => 314,
			'STORAGE' => 315,
			'STDIN' => 316,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'IS' => 319,
			'TRIM' => 318,
			'MAXVALUE' => 322,
			'START' => 323,
			'DOCUMENT' => 324,
			'IF' => 325,
			'SAVEPOINT' => 326,
			'ROWS' => 327,
			'LAST' => 328,
			'MINVALUE' => 329,
			'KEY' => 330,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'ACTION' => 334,
			'WRITE' => 335,
			'ROLE' => 336,
			'NOTNULL' => 337,
			'SESSION' => 338,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'NONE' => 344,
			'TABLES' => 347,
			'VALID' => 346,
			'INT' => 345,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'UNENCRYPTED' => 351,
			'OVERLAY' => 352,
			'FIRST' => 354,
			'COALESCE' => 353,
			'VERSION' => 355
		},
		GOTOS => {
			'expr_simple' => 280,
			'identifier' => 67,
			'expr' => 179,
			'timestamp_type' => 239,
			'operator_expression' => 199,
			'simple_type' => 213,
			'base_type' => 216,
			'time_type' => 151,
			'keywords_reserved_ok_for_functions_or_types' => 74,
			'base_interval_type' => 348,
			'normal_type' => 28,
			'keywords_notreserved_not_ok_for_functions_or_types' => 251,
			'literal_value' => 275,
			'interval_type' => 293,
			'result_column' => 395,
			'cast_expression' => 107,
			'keywords_notreserved' => 255
		}
	},
	{#State 359
		ACTIONS => {
			'INPUT' => 10,
			'SYSID' => 9,
			'JOIN' => 8,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'NCHAR' => 16,
			'INVOKER' => 18,
			'WORK' => 19,
			'PASSING' => 20,
			'MODE' => 21,
			'INTEGER' => 22,
			'INHERITS' => 23,
			'ESCAPE' => 25,
			'VALUE' => 24,
			'DROP' => 26,
			'MONTH' => 27,
			'ENCODING' => 29,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'FULL' => 37,
			'TREAT' => 38,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'DATA' => 45,
			'DAY' => 44,
			'PARTITION' => 43,
			'RANGE' => 42,
			'REF' => 48,
			'SHARE' => 47,
			'REAL' => 46,
			'OVER' => 49,
			'LARGE' => 51,
			'CURRENT_SCHEMA' => 50,
			'DELETE' => 52,
			'NULLIF' => 53,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'REPLICA' => 58,
			'PRIVILEGES' => 59,
			'ZONE' => 60,
			'LEAST' => 61,
			'STATISTICS' => 62,
			'ISNULL' => 63,
			'CALLED' => 64,
			'SECURITY' => 66,
			'INCREMENT' => 68,
			'BINARY' => 69,
			'LEVEL' => 70,
			'FORCE' => 71,
			'CONCURRENTLY' => 72,
			'UPDATE' => 75,
			'PRESERVE' => 76,
			'XMLPI' => 77,
			'CHARACTERISTICS' => 78,
			'VALIDATE' => 79,
			'STRICT' => 81,
			'VARYING' => 83,
			'AUTHORIZATION' => 84,
			'REASSIGN' => 85,
			'LABEL' => 87,
			'ROLLBACK' => 86,
			'OBJECT' => 88,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'TIMESTAMP' => 397,
			'RULE' => 92,
			'INSERT' => 95,
			'HANDLER' => 96,
			'LOCATION' => 98,
			'EXISTS' => 97,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'BOOLEAN' => 100,
			'NULLS' => 102,
			'TYPE' => 103,
			'RESET' => 104,
			'NOWAIT' => 105,
			'PRIOR' => 106,
			'OFF' => 110,
			'BIGINT' => 109,
			'XMLSERIALIZE' => 108,
			'VERBOSE' => 111,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'SETOF' => 116,
			'INNER' => 117,
			'EXTRACT' => 118,
			'REINDEX' => 119,
			'PRECISION' => 120,
			'ACCESS' => 121,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'INOUT' => 124,
			'DEALLOCATE' => 125,
			'CATALOG' => 126,
			'OUT' => 127,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'XMLEXISTS' => 133,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'LEFT' => 136,
			'PRECEDING' => 137,
			'STABLE' => 139,
			'DEC' => 140,
			'XMLELEMENT' => 141,
			'XML' => 142,
			'SCROLL' => 143,
			'TEXT' => 144,
			'FUNCTION' => 146,
			'ALSO' => 145,
			'SYSTEM' => 147,
			'AGGREGATE' => 148,
			'FLOAT' => 149,
			'ATTRIBUTE' => 150,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'OVERLAPS' => 155,
			'DEFERRED' => 157,
			'VIEW' => 156,
			'REPEATABLE' => 158,
			'ALWAYS' => 159,
			'CONSTRAINTS' => 160,
			'FORWARD' => 161,
			'NOTHING' => 162,
			'EXCLUDING' => 163,
			'DECIMAL' => 398,
			'CHECKPOINT' => 166,
			'INDEXES' => 165,
			'CACHE' => 167,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'UNLISTEN' => 170,
			'LOAD' => 171,
			'FAMILY' => 172,
			'SMALLINT' => 173,
			'ASSERTION' => 174,
			'ILIKE' => 175,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'SIMILAR' => 178,
			'STDOUT' => 180,
			'REVOKE' => 181,
			'INHERIT' => 183,
			'OUTER' => 184,
			'EXPLAIN' => 185,
			'OIDS' => 186,
			'VARCHAR' => 399,
			'AFTER' => 188,
			'CSV' => 189,
			'DISABLE' => 190,
			'VACUUM' => 191,
			'SCHEMA' => 192,
			'ROW' => 193,
			'LC_COLLATE' => 194,
			'FREEZE' => 195,
			'INDEX' => 196,
			'DEFINER' => 197,
			'XMLPARSE' => 198,
			'OWNED' => 202,
			'INCLUDING' => 201,
			'ADMIN' => 200,
			'CROSS' => 203,
			'INSTEAD' => 204,
			'NATIONAL' => 205,
			'EACH' => 206,
			'TRUSTED' => 207,
			'OWNER' => 209,
			'EXCLUSIVE' => 208,
			'CHARACTER' => 210,
			'STATEMENT' => 212,
			'CASCADE' => 211,
			'ASSIGNMENT' => 214,
			'MATCH' => 215,
			'MOVE' => 219,
			'CLASS' => 218,
			'DOUBLE' => 217,
			'TIME' => 401,
			'NUMERIC' => 402,
			'INLINE' => 223,
			'CURSOR' => 222,
			'EXTENSION' => 225,
			'ENCRYPTED' => 224,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'VALIDATOR' => 228,
			'XMLROOT' => 230,
			'UQUOTED_IDENTIFIER' => 231,
			'SUBSTRING' => 232,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'BETWEEN' => 235,
			'ABORT' => 236,
			'XMLATTRIBUTES' => 237,
			'VALUES' => 238,
			'TRUNCATE' => 240,
			'BEFORE' => 241,
			'SHOW' => 244,
			'ABSOLUTE' => 242,
			'IDENTIFIER' => 243,
			'GREATEST' => 245,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'WHITESPACE' => 250,
			'SECOND' => 252,
			'HOUR' => 253,
			'XMLFOREST' => 254,
			'FOLLOWING' => 256,
			'WRAPPER' => 257,
			'LISTEN' => 258,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'YEAR' => 261,
			'TEMP' => 263,
			'STANDALONE' => 262,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OPTIONS' => 266,
			'YES' => 268,
			'PROCEDURAL' => 269,
			'SEQUENCE' => 270,
			'LIKE' => 271,
			'SIMPLE' => 272,
			'QUOTE' => 274,
			'IDENTITY' => 273,
			'POSITION' => 276,
			'EXECUTE' => 278,
			'DOMAIN' => 277,
			'UNKNOWN' => 279,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'SERVER' => 283,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'NAMES' => 287,
			'CONFIGURATION' => 286,
			'RENAME' => 289,
			'PARSER' => 288,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RIGHT' => 290,
			'IMPLICIT' => 294,
			'CLUSTER' => 295,
			'NATURAL' => 296,
			'XMLCONCAT' => 297,
			'PASSWORD' => 298,
			'CHAR' => 299,
			'RECHECK' => 300,
			'NEXT' => 301,
			'PREPARED' => 302,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'GRANTED' => 306,
			'BIT' => 305,
			'BEGIN' => 307,
			'NOTIFY' => 308,
			'HEADER' => 309,
			'INTERVAL' => 403,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'FUNCTIONS' => 313,
			'ISOLATION' => 314,
			'STORAGE' => 315,
			'STDIN' => 316,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'IS' => 319,
			'TRIM' => 318,
			'MAXVALUE' => 322,
			'START' => 323,
			'DOCUMENT' => 324,
			'IF' => 325,
			'SAVEPOINT' => 326,
			'ROWS' => 327,
			'LAST' => 328,
			'MINVALUE' => 329,
			'KEY' => 330,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'ACTION' => 334,
			'WRITE' => 335,
			'ROLE' => 336,
			'NOTNULL' => 337,
			'SESSION' => 338,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'NONE' => 344,
			'TABLES' => 347,
			'VALID' => 346,
			'INT' => 345,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'UNENCRYPTED' => 351,
			'OVERLAY' => 352,
			'FIRST' => 354,
			'COALESCE' => 353,
			'VERSION' => 355
		},
		GOTOS => {
			'base_type' => 400,
			'identifier' => 396,
			'keywords_reserved_ok_for_functions_or_types' => 74,
			'keywords_notreserved' => 255,
			'keywords_notreserved_not_ok_for_functions_or_types' => 251
		}
	},
	{#State 360
		ACTIONS => {
			"-" => 373,
			'LIKE' => 376,
			"::" => 367,
			"<" => 374,
			"+" => 366,
			'ILIKE' => 371,
			"%" => 378,
			"/" => 370,
			"=" => 377,
			'BETWEEN' => 375,
			"^" => 368,
			"*" => 379,
			'OPERATOR_NAME' => 369,
			")" => 404,
			">" => 380
		}
	},
	{#State 361
		ACTIONS => {
			'INTEGER_CONSTANT' => 405
		}
	},
	{#State 362
		ACTIONS => {
			'TIME' => 406
		}
	},
	{#State 363
		ACTIONS => {
			'TIME' => 407
		}
	},
	{#State 364
		ACTIONS => {
			"-" => 373,
			"::" => 367,
			"+" => 366,
			"%" => 378,
			"^" => 368,
			"*" => 379,
			"/" => 370
		},
		DEFAULT => -16
	},
	{#State 365
		ACTIONS => {
			'INTEGER_CONSTANT' => 408
		}
	},
	{#State 366
		ACTIONS => {
			'INPUT' => 10,
			'SYSID' => 9,
			'JOIN' => 8,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'NCHAR' => 16,
			'STRING_CONSTANT' => 17,
			'INVOKER' => 18,
			'WORK' => 19,
			'PASSING' => 20,
			'MODE' => 21,
			'INTEGER' => 22,
			'INHERITS' => 23,
			'ESCAPE' => 25,
			'VALUE' => 24,
			'DROP' => 26,
			'MONTH' => 27,
			'ENCODING' => 29,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'FULL' => 37,
			'TREAT' => 38,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'DATA' => 45,
			'DAY' => 44,
			'PARTITION' => 43,
			'RANGE' => 42,
			'REF' => 48,
			'SHARE' => 47,
			'REAL' => 46,
			'OVER' => 49,
			'LARGE' => 51,
			'CURRENT_SCHEMA' => 50,
			'DELETE' => 52,
			'NULLIF' => 53,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'REPLICA' => 58,
			'PRIVILEGES' => 59,
			'ZONE' => 60,
			'LEAST' => 61,
			'STATISTICS' => 62,
			'ISNULL' => 63,
			'CALLED' => 64,
			'USTRING_CONSTANT' => 65,
			'SECURITY' => 66,
			'INCREMENT' => 68,
			'BINARY' => 69,
			'LEVEL' => 70,
			'FORCE' => 71,
			'CONCURRENTLY' => 72,
			'XBITSTRING_CONSTANT' => 73,
			'UPDATE' => 75,
			'PRESERVE' => 76,
			'CHARACTERISTICS' => 78,
			'XMLPI' => 77,
			'VALIDATE' => 79,
			"(" => 80,
			'ESTRING_CONSTANT' => 82,
			'STRICT' => 81,
			'VARYING' => 83,
			'AUTHORIZATION' => 84,
			'REASSIGN' => 85,
			'LABEL' => 87,
			'ROLLBACK' => 86,
			'OBJECT' => 88,
			'TIMESTAMP' => 91,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 92,
			'OPERATOR_NAME' => 94,
			'NUMERIC_CONSTANT' => 93,
			'INSERT' => 95,
			'HANDLER' => 96,
			'LOCATION' => 98,
			'EXISTS' => 97,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'BOOLEAN' => 100,
			'NULLS' => 102,
			'TYPE' => 103,
			'RESET' => 104,
			'NOWAIT' => 105,
			'PRIOR' => 106,
			'OFF' => 110,
			'BIGINT' => 109,
			'XMLSERIALIZE' => 108,
			'VERBOSE' => 111,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'SETOF' => 116,
			'INNER' => 117,
			'EXTRACT' => 118,
			'REINDEX' => 119,
			'PRECISION' => 120,
			'ACCESS' => 121,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'INOUT' => 124,
			'DEALLOCATE' => 125,
			'CATALOG' => 126,
			'OUT' => 127,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'XMLEXISTS' => 133,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'LEFT' => 136,
			'PRECEDING' => 137,
			'INTEGER_CONSTANT' => 138,
			'STABLE' => 139,
			'DEC' => 140,
			'XML' => 142,
			'XMLELEMENT' => 141,
			'SCROLL' => 143,
			'TEXT' => 144,
			'ALSO' => 145,
			'FUNCTION' => 146,
			'AGGREGATE' => 148,
			'SYSTEM' => 147,
			'FLOAT' => 149,
			'ATTRIBUTE' => 150,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'OVERLAPS' => 155,
			'DEFERRED' => 157,
			'VIEW' => 156,
			'REPEATABLE' => 158,
			'ALWAYS' => 159,
			'CONSTRAINTS' => 160,
			'FORWARD' => 161,
			'NOTHING' => 162,
			'EXCLUDING' => 163,
			'DECIMAL' => 164,
			'CHECKPOINT' => 166,
			'INDEXES' => 165,
			'CACHE' => 167,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'UNLISTEN' => 170,
			'LOAD' => 171,
			'FAMILY' => 172,
			'SMALLINT' => 173,
			'ASSERTION' => 174,
			'ILIKE' => 175,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'SIMILAR' => 178,
			'STDOUT' => 180,
			'BITSTRING_CONSTANT' => 182,
			'REVOKE' => 181,
			'INHERIT' => 183,
			'OUTER' => 184,
			'EXPLAIN' => 185,
			'VARCHAR' => 187,
			'OIDS' => 186,
			'AFTER' => 188,
			'CSV' => 189,
			'DISABLE' => 190,
			'VACUUM' => 191,
			'SCHEMA' => 192,
			'ROW' => 193,
			'LC_COLLATE' => 194,
			'FREEZE' => 195,
			'INDEX' => 196,
			'DEFINER' => 197,
			'XMLPARSE' => 198,
			'OWNED' => 202,
			'INCLUDING' => 201,
			'ADMIN' => 200,
			'CROSS' => 203,
			'INSTEAD' => 204,
			'NATIONAL' => 205,
			'EACH' => 206,
			'TRUSTED' => 207,
			'OWNER' => 209,
			'EXCLUSIVE' => 208,
			'CHARACTER' => 210,
			'STATEMENT' => 212,
			'CASCADE' => 211,
			'ASSIGNMENT' => 214,
			'MATCH' => 215,
			'MOVE' => 219,
			'CLASS' => 218,
			'DOUBLE' => 217,
			'TIME' => 220,
			'NUMERIC' => 221,
			'INLINE' => 223,
			'CURSOR' => 222,
			'EXTENSION' => 225,
			'ENCRYPTED' => 224,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'VALIDATOR' => 228,
			'XMLROOT' => 230,
			'UQUOTED_IDENTIFIER' => 231,
			'SUBSTRING' => 232,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'BETWEEN' => 235,
			'ABORT' => 236,
			'XMLATTRIBUTES' => 237,
			'VALUES' => 238,
			'TRUNCATE' => 240,
			'BEFORE' => 241,
			'SHOW' => 244,
			'ABSOLUTE' => 242,
			'IDENTIFIER' => 243,
			'GREATEST' => 245,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'WHITESPACE' => 250,
			'SECOND' => 252,
			'HOUR' => 253,
			'XMLFOREST' => 254,
			'FOLLOWING' => 256,
			'WRAPPER' => 257,
			'LISTEN' => 258,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'YEAR' => 261,
			'TEMP' => 263,
			'STANDALONE' => 262,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OPTIONS' => 266,
			'CAST' => 267,
			'YES' => 268,
			'PROCEDURAL' => 269,
			'SEQUENCE' => 270,
			'LIKE' => 271,
			'SIMPLE' => 272,
			'QUOTE' => 274,
			'IDENTITY' => 273,
			'POSITION' => 276,
			'EXECUTE' => 278,
			'DOMAIN' => 277,
			'UNKNOWN' => 279,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'SERVER' => 283,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'CONFIGURATION' => 286,
			'NAMES' => 287,
			'PARSER' => 288,
			'RENAME' => 289,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RIGHT' => 290,
			'IMPLICIT' => 294,
			'CLUSTER' => 295,
			'NATURAL' => 296,
			'XMLCONCAT' => 297,
			'PASSWORD' => 298,
			'CHAR' => 299,
			'RECHECK' => 300,
			'NEXT' => 301,
			'PREPARED' => 302,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'GRANTED' => 306,
			'BIT' => 305,
			'BEGIN' => 307,
			'NOTIFY' => 308,
			'HEADER' => 309,
			'INTERVAL' => 310,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'FUNCTIONS' => 313,
			'ISOLATION' => 314,
			'STORAGE' => 315,
			'STDIN' => 316,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'IS' => 319,
			'TRIM' => 318,
			'MAXVALUE' => 322,
			'START' => 323,
			'DOCUMENT' => 324,
			'IF' => 325,
			'SAVEPOINT' => 326,
			'ROWS' => 327,
			'LAST' => 328,
			'MINVALUE' => 329,
			'KEY' => 330,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'ACTION' => 334,
			'WRITE' => 335,
			'ROLE' => 336,
			'NOTNULL' => 337,
			'SESSION' => 338,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'NONE' => 344,
			'TABLES' => 347,
			'VALID' => 346,
			'INT' => 345,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'UNENCRYPTED' => 351,
			'OVERLAY' => 352,
			'FIRST' => 354,
			'COALESCE' => 353,
			'VERSION' => 355
		},
		GOTOS => {
			'base_type' => 216,
			'time_type' => 151,
			'expr_simple' => 280,
			'keywords_reserved_ok_for_functions_or_types' => 74,
			'base_interval_type' => 348,
			'keywords_notreserved_not_ok_for_functions_or_types' => 251,
			'normal_type' => 28,
			'interval_type' => 293,
			'literal_value' => 275,
			'identifier' => 67,
			'expr' => 409,
			'timestamp_type' => 239,
			'operator_expression' => 199,
			'cast_expression' => 107,
			'simple_type' => 213,
			'keywords_notreserved' => 255
		}
	},
	{#State 367
		ACTIONS => {
			'INPUT' => 10,
			'SYSID' => 9,
			'JOIN' => 8,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'NCHAR' => 16,
			'INVOKER' => 18,
			'WORK' => 19,
			'PASSING' => 20,
			'MODE' => 21,
			'INTEGER' => 22,
			'INHERITS' => 23,
			'ESCAPE' => 25,
			'VALUE' => 24,
			'DROP' => 26,
			'MONTH' => 27,
			'ENCODING' => 29,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'FULL' => 37,
			'TREAT' => 38,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'DATA' => 45,
			'DAY' => 44,
			'PARTITION' => 43,
			'RANGE' => 42,
			'REF' => 48,
			'SHARE' => 47,
			'REAL' => 46,
			'OVER' => 49,
			'LARGE' => 51,
			'CURRENT_SCHEMA' => 50,
			'DELETE' => 52,
			'NULLIF' => 53,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'REPLICA' => 58,
			'PRIVILEGES' => 59,
			'ZONE' => 60,
			'LEAST' => 61,
			'STATISTICS' => 62,
			'ISNULL' => 63,
			'CALLED' => 64,
			'SECURITY' => 66,
			'INCREMENT' => 68,
			'BINARY' => 69,
			'LEVEL' => 70,
			'FORCE' => 71,
			'CONCURRENTLY' => 72,
			'UPDATE' => 75,
			'PRESERVE' => 76,
			'XMLPI' => 77,
			'CHARACTERISTICS' => 78,
			'VALIDATE' => 79,
			'STRICT' => 81,
			'VARYING' => 83,
			'AUTHORIZATION' => 84,
			'REASSIGN' => 85,
			'LABEL' => 87,
			'ROLLBACK' => 86,
			'OBJECT' => 88,
			'TIMESTAMP' => 91,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 92,
			'INSERT' => 95,
			'HANDLER' => 96,
			'LOCATION' => 98,
			'EXISTS' => 97,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'BOOLEAN' => 100,
			'NULLS' => 102,
			'TYPE' => 103,
			'RESET' => 104,
			'NOWAIT' => 105,
			'PRIOR' => 106,
			'OFF' => 110,
			'BIGINT' => 109,
			'XMLSERIALIZE' => 108,
			'VERBOSE' => 111,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'SETOF' => 116,
			'INNER' => 117,
			'EXTRACT' => 118,
			'REINDEX' => 119,
			'PRECISION' => 120,
			'ACCESS' => 121,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'INOUT' => 124,
			'DEALLOCATE' => 125,
			'CATALOG' => 126,
			'OUT' => 127,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'XMLEXISTS' => 133,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'LEFT' => 136,
			'PRECEDING' => 137,
			'STABLE' => 139,
			'DEC' => 140,
			'XMLELEMENT' => 141,
			'XML' => 142,
			'SCROLL' => 143,
			'TEXT' => 144,
			'FUNCTION' => 146,
			'ALSO' => 145,
			'SYSTEM' => 147,
			'AGGREGATE' => 148,
			'FLOAT' => 149,
			'ATTRIBUTE' => 150,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'OVERLAPS' => 155,
			'DEFERRED' => 157,
			'VIEW' => 156,
			'REPEATABLE' => 158,
			'ALWAYS' => 159,
			'CONSTRAINTS' => 160,
			'FORWARD' => 161,
			'NOTHING' => 162,
			'EXCLUDING' => 163,
			'DECIMAL' => 164,
			'CHECKPOINT' => 166,
			'INDEXES' => 165,
			'CACHE' => 167,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'UNLISTEN' => 170,
			'LOAD' => 171,
			'FAMILY' => 172,
			'SMALLINT' => 173,
			'ASSERTION' => 174,
			'ILIKE' => 175,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'SIMILAR' => 178,
			'STDOUT' => 180,
			'REVOKE' => 181,
			'INHERIT' => 183,
			'OUTER' => 184,
			'EXPLAIN' => 185,
			'VARCHAR' => 187,
			'OIDS' => 186,
			'AFTER' => 188,
			'CSV' => 189,
			'DISABLE' => 190,
			'VACUUM' => 191,
			'SCHEMA' => 192,
			'ROW' => 193,
			'LC_COLLATE' => 194,
			'FREEZE' => 195,
			'INDEX' => 196,
			'DEFINER' => 197,
			'XMLPARSE' => 198,
			'OWNED' => 202,
			'INCLUDING' => 201,
			'ADMIN' => 200,
			'CROSS' => 203,
			'INSTEAD' => 204,
			'NATIONAL' => 205,
			'EACH' => 206,
			'TRUSTED' => 207,
			'OWNER' => 209,
			'EXCLUSIVE' => 208,
			'CHARACTER' => 210,
			'STATEMENT' => 212,
			'CASCADE' => 211,
			'ASSIGNMENT' => 214,
			'MATCH' => 215,
			'MOVE' => 219,
			'CLASS' => 218,
			'DOUBLE' => 217,
			'TIME' => 220,
			'NUMERIC' => 221,
			'INLINE' => 223,
			'CURSOR' => 222,
			'EXTENSION' => 225,
			'ENCRYPTED' => 224,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'VALIDATOR' => 228,
			'XMLROOT' => 230,
			'UQUOTED_IDENTIFIER' => 231,
			'SUBSTRING' => 232,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'BETWEEN' => 235,
			'ABORT' => 236,
			'XMLATTRIBUTES' => 237,
			'VALUES' => 238,
			'TRUNCATE' => 240,
			'BEFORE' => 241,
			'SHOW' => 244,
			'ABSOLUTE' => 242,
			'IDENTIFIER' => 243,
			'GREATEST' => 245,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'WHITESPACE' => 250,
			'SECOND' => 252,
			'HOUR' => 253,
			'XMLFOREST' => 254,
			'FOLLOWING' => 256,
			'WRAPPER' => 257,
			'LISTEN' => 258,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'YEAR' => 261,
			'TEMP' => 263,
			'STANDALONE' => 262,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OPTIONS' => 266,
			'YES' => 268,
			'PROCEDURAL' => 269,
			'SEQUENCE' => 270,
			'LIKE' => 271,
			'SIMPLE' => 272,
			'QUOTE' => 274,
			'IDENTITY' => 273,
			'POSITION' => 276,
			'EXECUTE' => 278,
			'DOMAIN' => 277,
			'UNKNOWN' => 279,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'SERVER' => 283,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'NAMES' => 287,
			'CONFIGURATION' => 286,
			'RENAME' => 289,
			'PARSER' => 288,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RIGHT' => 290,
			'IMPLICIT' => 294,
			'CLUSTER' => 295,
			'NATURAL' => 296,
			'XMLCONCAT' => 297,
			'PASSWORD' => 298,
			'CHAR' => 299,
			'RECHECK' => 300,
			'NEXT' => 301,
			'PREPARED' => 302,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'GRANTED' => 306,
			'BIT' => 305,
			'BEGIN' => 307,
			'NOTIFY' => 308,
			'HEADER' => 309,
			'INTERVAL' => 310,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'FUNCTIONS' => 313,
			'ISOLATION' => 314,
			'STORAGE' => 315,
			'STDIN' => 316,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'IS' => 319,
			'TRIM' => 318,
			'MAXVALUE' => 322,
			'START' => 323,
			'DOCUMENT' => 324,
			'IF' => 325,
			'SAVEPOINT' => 326,
			'ROWS' => 327,
			'LAST' => 328,
			'MINVALUE' => 329,
			'KEY' => 330,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'ACTION' => 334,
			'WRITE' => 335,
			'ROLE' => 336,
			'NOTNULL' => 337,
			'SESSION' => 338,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'NONE' => 344,
			'TABLES' => 347,
			'VALID' => 346,
			'INT' => 345,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'UNENCRYPTED' => 351,
			'OVERLAY' => 352,
			'FIRST' => 354,
			'COALESCE' => 353,
			'VERSION' => 355
		},
		GOTOS => {
			'base_type' => 216,
			'time_type' => 151,
			'keywords_reserved_ok_for_functions_or_types' => 74,
			'base_interval_type' => 348,
			'keywords_notreserved_not_ok_for_functions_or_types' => 251,
			'normal_type' => 410,
			'interval_type' => 293,
			'identifier' => 67,
			'timestamp_type' => 239,
			'simple_type' => 213,
			'keywords_notreserved' => 255
		}
	},
	{#State 368
		ACTIONS => {
			'INPUT' => 10,
			'SYSID' => 9,
			'JOIN' => 8,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'NCHAR' => 16,
			'STRING_CONSTANT' => 17,
			'INVOKER' => 18,
			'WORK' => 19,
			'PASSING' => 20,
			'MODE' => 21,
			'INTEGER' => 22,
			'INHERITS' => 23,
			'ESCAPE' => 25,
			'VALUE' => 24,
			'DROP' => 26,
			'MONTH' => 27,
			'ENCODING' => 29,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'FULL' => 37,
			'TREAT' => 38,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'DATA' => 45,
			'DAY' => 44,
			'PARTITION' => 43,
			'RANGE' => 42,
			'REF' => 48,
			'SHARE' => 47,
			'REAL' => 46,
			'OVER' => 49,
			'LARGE' => 51,
			'CURRENT_SCHEMA' => 50,
			'DELETE' => 52,
			'NULLIF' => 53,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'REPLICA' => 58,
			'PRIVILEGES' => 59,
			'ZONE' => 60,
			'LEAST' => 61,
			'STATISTICS' => 62,
			'ISNULL' => 63,
			'CALLED' => 64,
			'USTRING_CONSTANT' => 65,
			'SECURITY' => 66,
			'INCREMENT' => 68,
			'BINARY' => 69,
			'LEVEL' => 70,
			'FORCE' => 71,
			'CONCURRENTLY' => 72,
			'XBITSTRING_CONSTANT' => 73,
			'UPDATE' => 75,
			'PRESERVE' => 76,
			'CHARACTERISTICS' => 78,
			'XMLPI' => 77,
			'VALIDATE' => 79,
			"(" => 80,
			'ESTRING_CONSTANT' => 82,
			'STRICT' => 81,
			'VARYING' => 83,
			'AUTHORIZATION' => 84,
			'REASSIGN' => 85,
			'LABEL' => 87,
			'ROLLBACK' => 86,
			'OBJECT' => 88,
			'TIMESTAMP' => 91,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 92,
			'OPERATOR_NAME' => 94,
			'NUMERIC_CONSTANT' => 93,
			'INSERT' => 95,
			'HANDLER' => 96,
			'LOCATION' => 98,
			'EXISTS' => 97,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'BOOLEAN' => 100,
			'NULLS' => 102,
			'TYPE' => 103,
			'RESET' => 104,
			'NOWAIT' => 105,
			'PRIOR' => 106,
			'OFF' => 110,
			'BIGINT' => 109,
			'XMLSERIALIZE' => 108,
			'VERBOSE' => 111,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'SETOF' => 116,
			'INNER' => 117,
			'EXTRACT' => 118,
			'REINDEX' => 119,
			'PRECISION' => 120,
			'ACCESS' => 121,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'INOUT' => 124,
			'DEALLOCATE' => 125,
			'CATALOG' => 126,
			'OUT' => 127,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'XMLEXISTS' => 133,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'LEFT' => 136,
			'PRECEDING' => 137,
			'INTEGER_CONSTANT' => 138,
			'STABLE' => 139,
			'DEC' => 140,
			'XML' => 142,
			'XMLELEMENT' => 141,
			'SCROLL' => 143,
			'TEXT' => 144,
			'ALSO' => 145,
			'FUNCTION' => 146,
			'AGGREGATE' => 148,
			'SYSTEM' => 147,
			'FLOAT' => 149,
			'ATTRIBUTE' => 150,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'OVERLAPS' => 155,
			'DEFERRED' => 157,
			'VIEW' => 156,
			'REPEATABLE' => 158,
			'ALWAYS' => 159,
			'CONSTRAINTS' => 160,
			'FORWARD' => 161,
			'NOTHING' => 162,
			'EXCLUDING' => 163,
			'DECIMAL' => 164,
			'CHECKPOINT' => 166,
			'INDEXES' => 165,
			'CACHE' => 167,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'UNLISTEN' => 170,
			'LOAD' => 171,
			'FAMILY' => 172,
			'SMALLINT' => 173,
			'ASSERTION' => 174,
			'ILIKE' => 175,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'SIMILAR' => 178,
			'STDOUT' => 180,
			'BITSTRING_CONSTANT' => 182,
			'REVOKE' => 181,
			'INHERIT' => 183,
			'OUTER' => 184,
			'EXPLAIN' => 185,
			'VARCHAR' => 187,
			'OIDS' => 186,
			'AFTER' => 188,
			'CSV' => 189,
			'DISABLE' => 190,
			'VACUUM' => 191,
			'SCHEMA' => 192,
			'ROW' => 193,
			'LC_COLLATE' => 194,
			'FREEZE' => 195,
			'INDEX' => 196,
			'DEFINER' => 197,
			'XMLPARSE' => 198,
			'OWNED' => 202,
			'INCLUDING' => 201,
			'ADMIN' => 200,
			'CROSS' => 203,
			'INSTEAD' => 204,
			'NATIONAL' => 205,
			'EACH' => 206,
			'TRUSTED' => 207,
			'OWNER' => 209,
			'EXCLUSIVE' => 208,
			'CHARACTER' => 210,
			'STATEMENT' => 212,
			'CASCADE' => 211,
			'ASSIGNMENT' => 214,
			'MATCH' => 215,
			'MOVE' => 219,
			'CLASS' => 218,
			'DOUBLE' => 217,
			'TIME' => 220,
			'NUMERIC' => 221,
			'INLINE' => 223,
			'CURSOR' => 222,
			'EXTENSION' => 225,
			'ENCRYPTED' => 224,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'VALIDATOR' => 228,
			'XMLROOT' => 230,
			'UQUOTED_IDENTIFIER' => 231,
			'SUBSTRING' => 232,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'BETWEEN' => 235,
			'ABORT' => 236,
			'XMLATTRIBUTES' => 237,
			'VALUES' => 238,
			'TRUNCATE' => 240,
			'BEFORE' => 241,
			'SHOW' => 244,
			'ABSOLUTE' => 242,
			'IDENTIFIER' => 243,
			'GREATEST' => 245,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'WHITESPACE' => 250,
			'SECOND' => 252,
			'HOUR' => 253,
			'XMLFOREST' => 254,
			'FOLLOWING' => 256,
			'WRAPPER' => 257,
			'LISTEN' => 258,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'YEAR' => 261,
			'TEMP' => 263,
			'STANDALONE' => 262,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OPTIONS' => 266,
			'CAST' => 267,
			'YES' => 268,
			'PROCEDURAL' => 269,
			'SEQUENCE' => 270,
			'LIKE' => 271,
			'SIMPLE' => 272,
			'QUOTE' => 274,
			'IDENTITY' => 273,
			'POSITION' => 276,
			'EXECUTE' => 278,
			'DOMAIN' => 277,
			'UNKNOWN' => 279,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'SERVER' => 283,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'CONFIGURATION' => 286,
			'NAMES' => 287,
			'PARSER' => 288,
			'RENAME' => 289,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RIGHT' => 290,
			'IMPLICIT' => 294,
			'CLUSTER' => 295,
			'NATURAL' => 296,
			'XMLCONCAT' => 297,
			'PASSWORD' => 298,
			'CHAR' => 299,
			'RECHECK' => 300,
			'NEXT' => 301,
			'PREPARED' => 302,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'GRANTED' => 306,
			'BIT' => 305,
			'BEGIN' => 307,
			'NOTIFY' => 308,
			'HEADER' => 309,
			'INTERVAL' => 310,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'FUNCTIONS' => 313,
			'ISOLATION' => 314,
			'STORAGE' => 315,
			'STDIN' => 316,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'IS' => 319,
			'TRIM' => 318,
			'MAXVALUE' => 322,
			'START' => 323,
			'DOCUMENT' => 324,
			'IF' => 325,
			'SAVEPOINT' => 326,
			'ROWS' => 327,
			'LAST' => 328,
			'MINVALUE' => 329,
			'KEY' => 330,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'ACTION' => 334,
			'WRITE' => 335,
			'ROLE' => 336,
			'NOTNULL' => 337,
			'SESSION' => 338,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'NONE' => 344,
			'TABLES' => 347,
			'VALID' => 346,
			'INT' => 345,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'UNENCRYPTED' => 351,
			'OVERLAY' => 352,
			'FIRST' => 354,
			'COALESCE' => 353,
			'VERSION' => 355
		},
		GOTOS => {
			'base_type' => 216,
			'time_type' => 151,
			'expr_simple' => 280,
			'keywords_reserved_ok_for_functions_or_types' => 74,
			'base_interval_type' => 348,
			'keywords_notreserved_not_ok_for_functions_or_types' => 251,
			'normal_type' => 28,
			'interval_type' => 293,
			'literal_value' => 275,
			'identifier' => 67,
			'expr' => 411,
			'timestamp_type' => 239,
			'operator_expression' => 199,
			'cast_expression' => 107,
			'simple_type' => 213,
			'keywords_notreserved' => 255
		}
	},
	{#State 369
		ACTIONS => {
			'INPUT' => 10,
			'SYSID' => 9,
			'JOIN' => 8,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'STRING_CONSTANT' => 17,
			'NCHAR' => 16,
			'INVOKER' => 18,
			'WORK' => 19,
			'PASSING' => 20,
			'MODE' => 21,
			'INHERITS' => 23,
			'INTEGER' => 22,
			'ESCAPE' => 25,
			'VALUE' => 24,
			'DROP' => 26,
			'MONTH' => 27,
			'ENCODING' => 29,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'FULL' => 37,
			'TREAT' => 38,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'DATA' => 45,
			'DAY' => 44,
			'PARTITION' => 43,
			'RANGE' => 42,
			'REF' => 48,
			'SHARE' => 47,
			'REAL' => 46,
			'OVER' => 49,
			'LARGE' => 51,
			'CURRENT_SCHEMA' => 50,
			'DELETE' => 52,
			'NULLIF' => 53,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'REPLICA' => 58,
			'PRIVILEGES' => 59,
			'ZONE' => 60,
			'LEAST' => 61,
			'STATISTICS' => 62,
			'ISNULL' => 63,
			'CALLED' => 64,
			'USTRING_CONSTANT' => 65,
			'SECURITY' => 66,
			'INCREMENT' => 68,
			'BINARY' => 69,
			'LEVEL' => 70,
			'FORCE' => 71,
			'CONCURRENTLY' => 72,
			'XBITSTRING_CONSTANT' => 73,
			'PRESERVE' => 76,
			'UPDATE' => 75,
			'CHARACTERISTICS' => 78,
			'XMLPI' => 77,
			'VALIDATE' => 79,
			"(" => 80,
			'ESTRING_CONSTANT' => 82,
			'STRICT' => 81,
			'VARYING' => 83,
			'AUTHORIZATION' => 84,
			'REASSIGN' => 85,
			'LABEL' => 87,
			'ROLLBACK' => 86,
			'OBJECT' => 88,
			'TIMESTAMP' => 91,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 92,
			'NUMERIC_CONSTANT' => 93,
			'INSERT' => 95,
			'HANDLER' => 96,
			'LOCATION' => 98,
			'EXISTS' => 97,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'BOOLEAN' => 100,
			'NULLS' => 102,
			'TYPE' => 103,
			'RESET' => 104,
			'NOWAIT' => 105,
			'PRIOR' => 106,
			'OFF' => 110,
			'BIGINT' => 109,
			'XMLSERIALIZE' => 108,
			'VERBOSE' => 111,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'SETOF' => 116,
			'INNER' => 117,
			'EXTRACT' => 118,
			'REINDEX' => 119,
			'PRECISION' => 120,
			'ACCESS' => 121,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'INOUT' => 124,
			'DEALLOCATE' => 125,
			'CATALOG' => 126,
			'OUT' => 127,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'XMLEXISTS' => 133,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'LEFT' => 136,
			'PRECEDING' => 137,
			'INTEGER_CONSTANT' => 138,
			'STABLE' => 139,
			'DEC' => 140,
			'XML' => 142,
			'XMLELEMENT' => 141,
			'SCROLL' => 143,
			'TEXT' => 144,
			'ALSO' => 145,
			'FUNCTION' => 146,
			'AGGREGATE' => 148,
			'SYSTEM' => 147,
			'FLOAT' => 149,
			'ATTRIBUTE' => 150,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'OVERLAPS' => 155,
			'DEFERRED' => 157,
			'VIEW' => 156,
			'REPEATABLE' => 158,
			'ALWAYS' => 159,
			'CONSTRAINTS' => 160,
			'FORWARD' => 161,
			'NOTHING' => 162,
			'EXCLUDING' => 163,
			'DECIMAL' => 164,
			'CHECKPOINT' => 166,
			'INDEXES' => 165,
			'CACHE' => 167,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'UNLISTEN' => 170,
			'LOAD' => 171,
			'FAMILY' => 172,
			'SMALLINT' => 173,
			'ASSERTION' => 174,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'SIMILAR' => 178,
			'STDOUT' => 180,
			'BITSTRING_CONSTANT' => 182,
			'REVOKE' => 181,
			'INHERIT' => 183,
			'OUTER' => 184,
			'EXPLAIN' => 185,
			'VARCHAR' => 187,
			'OIDS' => 186,
			'AFTER' => 188,
			'CSV' => 189,
			'DISABLE' => 190,
			'VACUUM' => 191,
			'SCHEMA' => 192,
			'ROW' => 193,
			'LC_COLLATE' => 194,
			'FREEZE' => 195,
			'INDEX' => 196,
			'DEFINER' => 197,
			'XMLPARSE' => 198,
			'OWNED' => 202,
			'INCLUDING' => 201,
			'ADMIN' => 200,
			'CROSS' => 203,
			'INSTEAD' => 204,
			'NATIONAL' => 205,
			'EACH' => 206,
			'TRUSTED' => 207,
			'OWNER' => 209,
			'EXCLUSIVE' => 208,
			'CHARACTER' => 210,
			'STATEMENT' => 212,
			'CASCADE' => 211,
			'ASSIGNMENT' => 214,
			'MATCH' => 215,
			'MOVE' => 219,
			'CLASS' => 218,
			'DOUBLE' => 217,
			'TIME' => 220,
			'NUMERIC' => 221,
			'INLINE' => 223,
			'CURSOR' => 222,
			'EXTENSION' => 225,
			'ENCRYPTED' => 224,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'VALIDATOR' => 228,
			'XMLROOT' => 230,
			'UQUOTED_IDENTIFIER' => 231,
			'SUBSTRING' => 232,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'ABORT' => 236,
			'XMLATTRIBUTES' => 237,
			'VALUES' => 238,
			'TRUNCATE' => 240,
			'BEFORE' => 241,
			'SHOW' => 244,
			'ABSOLUTE' => 242,
			'IDENTIFIER' => 243,
			'GREATEST' => 245,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'WHITESPACE' => 250,
			'SECOND' => 252,
			'HOUR' => 253,
			'XMLFOREST' => 254,
			'FOLLOWING' => 256,
			'WRAPPER' => 257,
			'LISTEN' => 258,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'YEAR' => 261,
			'TEMP' => 263,
			'STANDALONE' => 262,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OPTIONS' => 266,
			'CAST' => 267,
			'YES' => 268,
			'PROCEDURAL' => 269,
			'SEQUENCE' => 270,
			'SIMPLE' => 272,
			'QUOTE' => 274,
			'IDENTITY' => 273,
			'POSITION' => 276,
			'DOMAIN' => 277,
			'EXECUTE' => 278,
			'UNKNOWN' => 279,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'SERVER' => 283,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'CONFIGURATION' => 286,
			'NAMES' => 287,
			'PARSER' => 288,
			'RENAME' => 289,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RIGHT' => 290,
			'IMPLICIT' => 294,
			'CLUSTER' => 295,
			'NATURAL' => 296,
			'XMLCONCAT' => 297,
			'PASSWORD' => 298,
			'CHAR' => 299,
			'RECHECK' => 300,
			'NEXT' => 301,
			'PREPARED' => 302,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'GRANTED' => 306,
			'BIT' => 305,
			'BEGIN' => 307,
			'NOTIFY' => 308,
			'HEADER' => 309,
			'INTERVAL' => 310,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'FUNCTIONS' => 313,
			'ISOLATION' => 314,
			'STORAGE' => 315,
			'STDIN' => 316,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'IS' => 319,
			'TRIM' => 318,
			'MAXVALUE' => 322,
			'START' => 323,
			'DOCUMENT' => 324,
			'IF' => 325,
			'SAVEPOINT' => 326,
			'ROWS' => 327,
			'LAST' => 328,
			'MINVALUE' => 329,
			'KEY' => 330,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'ACTION' => 334,
			'WRITE' => 335,
			'ROLE' => 336,
			'NOTNULL' => 337,
			'SESSION' => 338,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'NONE' => 344,
			'TABLES' => 347,
			'VALID' => 346,
			'INT' => 345,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'UNENCRYPTED' => 351,
			'OVERLAY' => 352,
			'FIRST' => 354,
			'COALESCE' => 353,
			'VERSION' => 355
		},
		DEFAULT => -15,
		GOTOS => {
			'base_type' => 216,
			'time_type' => 151,
			'expr_simple' => 280,
			'keywords_reserved_ok_for_functions_or_types' => 74,
			'base_interval_type' => 348,
			'keywords_notreserved_not_ok_for_functions_or_types' => 251,
			'normal_type' => 28,
			'interval_type' => 293,
			'literal_value' => 275,
			'identifier' => 67,
			'expr' => 412,
			'timestamp_type' => 239,
			'operator_expression' => 199,
			'cast_expression' => 107,
			'simple_type' => 213,
			'keywords_notreserved' => 255
		}
	},
	{#State 370
		ACTIONS => {
			'INPUT' => 10,
			'SYSID' => 9,
			'JOIN' => 8,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'NCHAR' => 16,
			'STRING_CONSTANT' => 17,
			'INVOKER' => 18,
			'WORK' => 19,
			'PASSING' => 20,
			'MODE' => 21,
			'INTEGER' => 22,
			'INHERITS' => 23,
			'ESCAPE' => 25,
			'VALUE' => 24,
			'DROP' => 26,
			'MONTH' => 27,
			'ENCODING' => 29,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'FULL' => 37,
			'TREAT' => 38,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'DATA' => 45,
			'DAY' => 44,
			'PARTITION' => 43,
			'RANGE' => 42,
			'REF' => 48,
			'SHARE' => 47,
			'REAL' => 46,
			'OVER' => 49,
			'LARGE' => 51,
			'CURRENT_SCHEMA' => 50,
			'DELETE' => 52,
			'NULLIF' => 53,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'REPLICA' => 58,
			'PRIVILEGES' => 59,
			'ZONE' => 60,
			'LEAST' => 61,
			'STATISTICS' => 62,
			'ISNULL' => 63,
			'CALLED' => 64,
			'USTRING_CONSTANT' => 65,
			'SECURITY' => 66,
			'INCREMENT' => 68,
			'BINARY' => 69,
			'LEVEL' => 70,
			'FORCE' => 71,
			'CONCURRENTLY' => 72,
			'XBITSTRING_CONSTANT' => 73,
			'UPDATE' => 75,
			'PRESERVE' => 76,
			'CHARACTERISTICS' => 78,
			'XMLPI' => 77,
			'VALIDATE' => 79,
			"(" => 80,
			'ESTRING_CONSTANT' => 82,
			'STRICT' => 81,
			'VARYING' => 83,
			'AUTHORIZATION' => 84,
			'REASSIGN' => 85,
			'LABEL' => 87,
			'ROLLBACK' => 86,
			'OBJECT' => 88,
			'TIMESTAMP' => 91,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 92,
			'OPERATOR_NAME' => 94,
			'NUMERIC_CONSTANT' => 93,
			'INSERT' => 95,
			'HANDLER' => 96,
			'LOCATION' => 98,
			'EXISTS' => 97,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'BOOLEAN' => 100,
			'NULLS' => 102,
			'TYPE' => 103,
			'RESET' => 104,
			'NOWAIT' => 105,
			'PRIOR' => 106,
			'OFF' => 110,
			'BIGINT' => 109,
			'XMLSERIALIZE' => 108,
			'VERBOSE' => 111,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'SETOF' => 116,
			'INNER' => 117,
			'EXTRACT' => 118,
			'REINDEX' => 119,
			'PRECISION' => 120,
			'ACCESS' => 121,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'INOUT' => 124,
			'DEALLOCATE' => 125,
			'CATALOG' => 126,
			'OUT' => 127,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'XMLEXISTS' => 133,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'LEFT' => 136,
			'PRECEDING' => 137,
			'INTEGER_CONSTANT' => 138,
			'STABLE' => 139,
			'DEC' => 140,
			'XML' => 142,
			'XMLELEMENT' => 141,
			'SCROLL' => 143,
			'TEXT' => 144,
			'ALSO' => 145,
			'FUNCTION' => 146,
			'AGGREGATE' => 148,
			'SYSTEM' => 147,
			'FLOAT' => 149,
			'ATTRIBUTE' => 150,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'OVERLAPS' => 155,
			'DEFERRED' => 157,
			'VIEW' => 156,
			'REPEATABLE' => 158,
			'ALWAYS' => 159,
			'CONSTRAINTS' => 160,
			'FORWARD' => 161,
			'NOTHING' => 162,
			'EXCLUDING' => 163,
			'DECIMAL' => 164,
			'CHECKPOINT' => 166,
			'INDEXES' => 165,
			'CACHE' => 167,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'UNLISTEN' => 170,
			'LOAD' => 171,
			'FAMILY' => 172,
			'SMALLINT' => 173,
			'ASSERTION' => 174,
			'ILIKE' => 175,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'SIMILAR' => 178,
			'STDOUT' => 180,
			'BITSTRING_CONSTANT' => 182,
			'REVOKE' => 181,
			'INHERIT' => 183,
			'OUTER' => 184,
			'EXPLAIN' => 185,
			'VARCHAR' => 187,
			'OIDS' => 186,
			'AFTER' => 188,
			'CSV' => 189,
			'DISABLE' => 190,
			'VACUUM' => 191,
			'SCHEMA' => 192,
			'ROW' => 193,
			'LC_COLLATE' => 194,
			'FREEZE' => 195,
			'INDEX' => 196,
			'DEFINER' => 197,
			'XMLPARSE' => 198,
			'OWNED' => 202,
			'INCLUDING' => 201,
			'ADMIN' => 200,
			'CROSS' => 203,
			'INSTEAD' => 204,
			'NATIONAL' => 205,
			'EACH' => 206,
			'TRUSTED' => 207,
			'OWNER' => 209,
			'EXCLUSIVE' => 208,
			'CHARACTER' => 210,
			'STATEMENT' => 212,
			'CASCADE' => 211,
			'ASSIGNMENT' => 214,
			'MATCH' => 215,
			'MOVE' => 219,
			'CLASS' => 218,
			'DOUBLE' => 217,
			'TIME' => 220,
			'NUMERIC' => 221,
			'INLINE' => 223,
			'CURSOR' => 222,
			'EXTENSION' => 225,
			'ENCRYPTED' => 224,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'VALIDATOR' => 228,
			'XMLROOT' => 230,
			'UQUOTED_IDENTIFIER' => 231,
			'SUBSTRING' => 232,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'BETWEEN' => 235,
			'ABORT' => 236,
			'XMLATTRIBUTES' => 237,
			'VALUES' => 238,
			'TRUNCATE' => 240,
			'BEFORE' => 241,
			'SHOW' => 244,
			'ABSOLUTE' => 242,
			'IDENTIFIER' => 243,
			'GREATEST' => 245,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'WHITESPACE' => 250,
			'SECOND' => 252,
			'HOUR' => 253,
			'XMLFOREST' => 254,
			'FOLLOWING' => 256,
			'WRAPPER' => 257,
			'LISTEN' => 258,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'YEAR' => 261,
			'TEMP' => 263,
			'STANDALONE' => 262,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OPTIONS' => 266,
			'CAST' => 267,
			'YES' => 268,
			'PROCEDURAL' => 269,
			'SEQUENCE' => 270,
			'LIKE' => 271,
			'SIMPLE' => 272,
			'QUOTE' => 274,
			'IDENTITY' => 273,
			'POSITION' => 276,
			'EXECUTE' => 278,
			'DOMAIN' => 277,
			'UNKNOWN' => 279,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'SERVER' => 283,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'CONFIGURATION' => 286,
			'NAMES' => 287,
			'PARSER' => 288,
			'RENAME' => 289,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RIGHT' => 290,
			'IMPLICIT' => 294,
			'CLUSTER' => 295,
			'NATURAL' => 296,
			'XMLCONCAT' => 297,
			'PASSWORD' => 298,
			'CHAR' => 299,
			'RECHECK' => 300,
			'NEXT' => 301,
			'PREPARED' => 302,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'GRANTED' => 306,
			'BIT' => 305,
			'BEGIN' => 307,
			'NOTIFY' => 308,
			'HEADER' => 309,
			'INTERVAL' => 310,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'FUNCTIONS' => 313,
			'ISOLATION' => 314,
			'STORAGE' => 315,
			'STDIN' => 316,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'IS' => 319,
			'TRIM' => 318,
			'MAXVALUE' => 322,
			'START' => 323,
			'DOCUMENT' => 324,
			'IF' => 325,
			'SAVEPOINT' => 326,
			'ROWS' => 327,
			'LAST' => 328,
			'MINVALUE' => 329,
			'KEY' => 330,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'ACTION' => 334,
			'WRITE' => 335,
			'ROLE' => 336,
			'NOTNULL' => 337,
			'SESSION' => 338,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'NONE' => 344,
			'TABLES' => 347,
			'VALID' => 346,
			'INT' => 345,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'UNENCRYPTED' => 351,
			'OVERLAY' => 352,
			'FIRST' => 354,
			'COALESCE' => 353,
			'VERSION' => 355
		},
		GOTOS => {
			'base_type' => 216,
			'time_type' => 151,
			'expr_simple' => 280,
			'keywords_reserved_ok_for_functions_or_types' => 74,
			'base_interval_type' => 348,
			'keywords_notreserved_not_ok_for_functions_or_types' => 251,
			'normal_type' => 28,
			'interval_type' => 293,
			'literal_value' => 275,
			'identifier' => 67,
			'expr' => 413,
			'timestamp_type' => 239,
			'operator_expression' => 199,
			'cast_expression' => 107,
			'simple_type' => 213,
			'keywords_notreserved' => 255
		}
	},
	{#State 371
		ACTIONS => {
			'INPUT' => 10,
			'SYSID' => 9,
			'JOIN' => 8,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'NCHAR' => 16,
			'STRING_CONSTANT' => 17,
			'INVOKER' => 18,
			'WORK' => 19,
			'PASSING' => 20,
			'MODE' => 21,
			'INTEGER' => 22,
			'INHERITS' => 23,
			'ESCAPE' => 25,
			'VALUE' => 24,
			'DROP' => 26,
			'MONTH' => 27,
			'ENCODING' => 29,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'FULL' => 37,
			'TREAT' => 38,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'DATA' => 45,
			'DAY' => 44,
			'PARTITION' => 43,
			'RANGE' => 42,
			'REF' => 48,
			'SHARE' => 47,
			'REAL' => 46,
			'OVER' => 49,
			'LARGE' => 51,
			'CURRENT_SCHEMA' => 50,
			'DELETE' => 52,
			'NULLIF' => 53,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'REPLICA' => 58,
			'PRIVILEGES' => 59,
			'ZONE' => 60,
			'LEAST' => 61,
			'STATISTICS' => 62,
			'ISNULL' => 63,
			'CALLED' => 64,
			'USTRING_CONSTANT' => 65,
			'SECURITY' => 66,
			'INCREMENT' => 68,
			'BINARY' => 69,
			'LEVEL' => 70,
			'FORCE' => 71,
			'CONCURRENTLY' => 72,
			'XBITSTRING_CONSTANT' => 73,
			'UPDATE' => 75,
			'PRESERVE' => 76,
			'CHARACTERISTICS' => 78,
			'XMLPI' => 77,
			'VALIDATE' => 79,
			"(" => 80,
			'ESTRING_CONSTANT' => 82,
			'STRICT' => 81,
			'VARYING' => 83,
			'AUTHORIZATION' => 84,
			'REASSIGN' => 85,
			'LABEL' => 87,
			'ROLLBACK' => 86,
			'OBJECT' => 88,
			'TIMESTAMP' => 91,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 92,
			'OPERATOR_NAME' => 94,
			'NUMERIC_CONSTANT' => 93,
			'INSERT' => 95,
			'HANDLER' => 96,
			'LOCATION' => 98,
			'EXISTS' => 97,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'BOOLEAN' => 100,
			'NULLS' => 102,
			'TYPE' => 103,
			'RESET' => 104,
			'NOWAIT' => 105,
			'PRIOR' => 106,
			'OFF' => 110,
			'BIGINT' => 109,
			'XMLSERIALIZE' => 108,
			'VERBOSE' => 111,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'SETOF' => 116,
			'INNER' => 117,
			'EXTRACT' => 118,
			'REINDEX' => 119,
			'PRECISION' => 120,
			'ACCESS' => 121,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'INOUT' => 124,
			'DEALLOCATE' => 125,
			'CATALOG' => 126,
			'OUT' => 127,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'XMLEXISTS' => 133,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'LEFT' => 136,
			'PRECEDING' => 137,
			'INTEGER_CONSTANT' => 138,
			'STABLE' => 139,
			'DEC' => 140,
			'XML' => 142,
			'XMLELEMENT' => 141,
			'SCROLL' => 143,
			'TEXT' => 144,
			'ALSO' => 145,
			'FUNCTION' => 146,
			'AGGREGATE' => 148,
			'SYSTEM' => 147,
			'FLOAT' => 149,
			'ATTRIBUTE' => 150,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'OVERLAPS' => 155,
			'DEFERRED' => 157,
			'VIEW' => 156,
			'REPEATABLE' => 158,
			'ALWAYS' => 159,
			'CONSTRAINTS' => 160,
			'FORWARD' => 161,
			'NOTHING' => 162,
			'EXCLUDING' => 163,
			'DECIMAL' => 164,
			'CHECKPOINT' => 166,
			'INDEXES' => 165,
			'CACHE' => 167,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'UNLISTEN' => 170,
			'LOAD' => 171,
			'FAMILY' => 172,
			'SMALLINT' => 173,
			'ASSERTION' => 174,
			'ILIKE' => 175,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'SIMILAR' => 178,
			'STDOUT' => 180,
			'BITSTRING_CONSTANT' => 182,
			'REVOKE' => 181,
			'INHERIT' => 183,
			'OUTER' => 184,
			'EXPLAIN' => 185,
			'VARCHAR' => 187,
			'OIDS' => 186,
			'AFTER' => 188,
			'CSV' => 189,
			'DISABLE' => 190,
			'VACUUM' => 191,
			'SCHEMA' => 192,
			'ROW' => 193,
			'LC_COLLATE' => 194,
			'FREEZE' => 195,
			'INDEX' => 196,
			'DEFINER' => 197,
			'XMLPARSE' => 198,
			'OWNED' => 202,
			'INCLUDING' => 201,
			'ADMIN' => 200,
			'CROSS' => 203,
			'INSTEAD' => 204,
			'NATIONAL' => 205,
			'EACH' => 206,
			'TRUSTED' => 207,
			'OWNER' => 209,
			'EXCLUSIVE' => 208,
			'CHARACTER' => 210,
			'STATEMENT' => 212,
			'CASCADE' => 211,
			'ASSIGNMENT' => 214,
			'MATCH' => 215,
			'MOVE' => 219,
			'CLASS' => 218,
			'DOUBLE' => 217,
			'TIME' => 220,
			'NUMERIC' => 221,
			'INLINE' => 223,
			'CURSOR' => 222,
			'EXTENSION' => 225,
			'ENCRYPTED' => 224,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'VALIDATOR' => 228,
			'XMLROOT' => 230,
			'UQUOTED_IDENTIFIER' => 231,
			'SUBSTRING' => 232,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'BETWEEN' => 235,
			'ABORT' => 236,
			'XMLATTRIBUTES' => 237,
			'VALUES' => 238,
			'TRUNCATE' => 240,
			'BEFORE' => 241,
			'SHOW' => 244,
			'ABSOLUTE' => 242,
			'IDENTIFIER' => 243,
			'GREATEST' => 245,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'WHITESPACE' => 250,
			'SECOND' => 252,
			'HOUR' => 253,
			'XMLFOREST' => 254,
			'FOLLOWING' => 256,
			'WRAPPER' => 257,
			'LISTEN' => 258,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'YEAR' => 261,
			'TEMP' => 263,
			'STANDALONE' => 262,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OPTIONS' => 266,
			'CAST' => 267,
			'YES' => 268,
			'PROCEDURAL' => 269,
			'SEQUENCE' => 270,
			'LIKE' => 271,
			'SIMPLE' => 272,
			'QUOTE' => 274,
			'IDENTITY' => 273,
			'POSITION' => 276,
			'EXECUTE' => 278,
			'DOMAIN' => 277,
			'UNKNOWN' => 279,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'SERVER' => 283,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'CONFIGURATION' => 286,
			'NAMES' => 287,
			'PARSER' => 288,
			'RENAME' => 289,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RIGHT' => 290,
			'IMPLICIT' => 294,
			'CLUSTER' => 295,
			'NATURAL' => 296,
			'XMLCONCAT' => 297,
			'PASSWORD' => 298,
			'CHAR' => 299,
			'RECHECK' => 300,
			'NEXT' => 301,
			'PREPARED' => 302,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'GRANTED' => 306,
			'BIT' => 305,
			'BEGIN' => 307,
			'NOTIFY' => 308,
			'HEADER' => 309,
			'INTERVAL' => 310,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'FUNCTIONS' => 313,
			'ISOLATION' => 314,
			'STORAGE' => 315,
			'STDIN' => 316,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'IS' => 319,
			'TRIM' => 318,
			'MAXVALUE' => 322,
			'START' => 323,
			'DOCUMENT' => 324,
			'IF' => 325,
			'SAVEPOINT' => 326,
			'ROWS' => 327,
			'LAST' => 328,
			'MINVALUE' => 329,
			'KEY' => 330,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'ACTION' => 334,
			'WRITE' => 335,
			'ROLE' => 336,
			'NOTNULL' => 337,
			'SESSION' => 338,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'NONE' => 344,
			'TABLES' => 347,
			'VALID' => 346,
			'INT' => 345,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'UNENCRYPTED' => 351,
			'OVERLAY' => 352,
			'FIRST' => 354,
			'COALESCE' => 353,
			'VERSION' => 355
		},
		GOTOS => {
			'base_type' => 216,
			'time_type' => 151,
			'expr_simple' => 280,
			'keywords_reserved_ok_for_functions_or_types' => 74,
			'base_interval_type' => 348,
			'keywords_notreserved_not_ok_for_functions_or_types' => 251,
			'normal_type' => 28,
			'interval_type' => 293,
			'literal_value' => 275,
			'identifier' => 67,
			'expr' => 414,
			'timestamp_type' => 239,
			'operator_expression' => 199,
			'cast_expression' => 107,
			'simple_type' => 213,
			'keywords_notreserved' => 255
		}
	},
	{#State 372
		ACTIONS => {
			'VACUUM' => 191,
			'INPUT' => 10,
			'SYSID' => 9,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'SCHEMA' => 192,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'LC_COLLATE' => 194,
			'INDEX' => 196,
			'DEFINER' => 197,
			'INVOKER' => 18,
			'WORK' => 19,
			'ADMIN' => 200,
			'INCLUDING' => 201,
			'OWNED' => 202,
			'PASSING' => 20,
			'INSTEAD' => 204,
			'MODE' => 21,
			'INHERITS' => 23,
			'VALUE' => 24,
			'ESCAPE' => 25,
			'DROP' => 26,
			'MONTH' => 27,
			'EACH' => 206,
			'ENCODING' => 29,
			'TRUSTED' => 207,
			'EXCLUSIVE' => 208,
			'OWNER' => 209,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'CASCADE' => 211,
			'STATEMENT' => 212,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'ASSIGNMENT' => 214,
			'RANGE' => 42,
			'PARTITION' => 43,
			'DAY' => 44,
			'DATA' => 45,
			'SHARE' => 47,
			'REF' => 48,
			'MATCH' => 215,
			'CLASS' => 218,
			'DOUBLE' => 416,
			'MOVE' => 219,
			'LARGE' => 51,
			'DELETE' => 52,
			'CURSOR' => 222,
			'INLINE' => 223,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'ENCRYPTED' => 224,
			'EXTENSION' => 225,
			'REPLICA' => 58,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'PRIVILEGES' => 59,
			'VALIDATOR' => 228,
			'UQUOTED_IDENTIFIER' => 231,
			'ZONE' => 60,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'STATISTICS' => 62,
			'CALLED' => 64,
			'SECURITY' => 66,
			'ABORT' => 236,
			'INCREMENT' => 68,
			'LEVEL' => 70,
			'FORCE' => 71,
			'BEFORE' => 241,
			'TRUNCATE' => 240,
			'IDENTIFIER' => 243,
			'ABSOLUTE' => 242,
			'SHOW' => 244,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'UPDATE' => 75,
			'PRESERVE' => 76,
			'SECOND' => 252,
			'WHITESPACE' => 250,
			'CHARACTERISTICS' => 78,
			'VALIDATE' => 79,
			'STRICT' => 81,
			'HOUR' => 253,
			'VARYING' => 83,
			'FOLLOWING' => 256,
			'LISTEN' => 258,
			'WRAPPER' => 257,
			'REASSIGN' => 85,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'STANDALONE' => 262,
			'TEMP' => 263,
			'YEAR' => 261,
			'ROLLBACK' => 86,
			'LABEL' => 87,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OBJECT' => 88,
			'PROCEDURE' => 89,
			'DELIMITERS' => 90,
			'RULE' => 92,
			'OPTIONS' => 266,
			'INSERT' => 95,
			'PROCEDURAL' => 269,
			'YES' => 268,
			'HANDLER' => 96,
			'SEQUENCE' => 270,
			'SIMPLE' => 272,
			'LOCATION' => 98,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'NULLS' => 102,
			'TYPE' => 103,
			'IDENTITY' => 273,
			'QUOTE' => 274,
			'RESET' => 104,
			'NOWAIT' => 105,
			'DOMAIN' => 277,
			'EXECUTE' => 278,
			'PRIOR' => 106,
			'UNKNOWN' => 279,
			'OFF' => 110,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'REINDEX' => 119,
			'SERVER' => 283,
			'ACCESS' => 121,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'CONFIGURATION' => 286,
			'NAMES' => 287,
			'DEALLOCATE' => 125,
			'PARSER' => 288,
			'RENAME' => 289,
			'CATALOG' => 126,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'IMPLICIT' => 294,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'CLUSTER' => 295,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'PRECEDING' => 137,
			'STABLE' => 139,
			'PASSWORD' => 298,
			'RECHECK' => 300,
			'NEXT' => 301,
			'PREPARED' => 302,
			'XML' => 142,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'SCROLL' => 143,
			'TEXT' => 144,
			'GRANTED' => 306,
			'BEGIN' => 307,
			'NOTIFY' => 308,
			'FUNCTION' => 146,
			'ALSO' => 145,
			'HEADER' => 309,
			'SYSTEM' => 147,
			'AGGREGATE' => 148,
			'ATTRIBUTE' => 150,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'FUNCTIONS' => 313,
			'ISOLATION' => 314,
			'STORAGE' => 315,
			'STDIN' => 316,
			'VIEW' => 156,
			'DEFERRED' => 157,
			'REPEATABLE' => 158,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'ALWAYS' => 159,
			'MAXVALUE' => 322,
			'FORWARD' => 161,
			'CONSTRAINTS' => 160,
			'START' => 323,
			'NOTHING' => 162,
			'DOCUMENT' => 324,
			'IF' => 325,
			'SAVEPOINT' => 326,
			'EXCLUDING' => 163,
			'ROWS' => 327,
			'LAST' => 328,
			'MINVALUE' => 329,
			'INDEXES' => 165,
			'CHECKPOINT' => 166,
			'KEY' => 330,
			'CACHE' => 167,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'ACTION' => 334,
			'UNLISTEN' => 170,
			'WRITE' => 335,
			'LOAD' => 171,
			'ROLE' => 336,
			'SESSION' => 338,
			'FAMILY' => 172,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ASSERTION' => 174,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'STDOUT' => 180,
			'REVOKE' => 181,
			'TABLES' => 347,
			'VALID' => 346,
			'INHERIT' => 183,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'EXPLAIN' => 185,
			'UNENCRYPTED' => 351,
			'OIDS' => 186,
			'FIRST' => 354,
			'AFTER' => 188,
			'DISABLE' => 190,
			'CSV' => 189,
			'VERSION' => 355
		},
		GOTOS => {
			'identifier' => 415,
			'keywords_notreserved' => 255
		}
	},
	{#State 373
		ACTIONS => {
			'INPUT' => 10,
			'SYSID' => 9,
			'JOIN' => 8,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'NCHAR' => 16,
			'STRING_CONSTANT' => 17,
			'INVOKER' => 18,
			'WORK' => 19,
			'PASSING' => 20,
			'MODE' => 21,
			'INTEGER' => 22,
			'INHERITS' => 23,
			'ESCAPE' => 25,
			'VALUE' => 24,
			'DROP' => 26,
			'MONTH' => 27,
			'ENCODING' => 29,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'FULL' => 37,
			'TREAT' => 38,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'DATA' => 45,
			'DAY' => 44,
			'PARTITION' => 43,
			'RANGE' => 42,
			'REF' => 48,
			'SHARE' => 47,
			'REAL' => 46,
			'OVER' => 49,
			'LARGE' => 51,
			'CURRENT_SCHEMA' => 50,
			'DELETE' => 52,
			'NULLIF' => 53,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'REPLICA' => 58,
			'PRIVILEGES' => 59,
			'ZONE' => 60,
			'LEAST' => 61,
			'STATISTICS' => 62,
			'ISNULL' => 63,
			'CALLED' => 64,
			'USTRING_CONSTANT' => 65,
			'SECURITY' => 66,
			'INCREMENT' => 68,
			'BINARY' => 69,
			'LEVEL' => 70,
			'FORCE' => 71,
			'CONCURRENTLY' => 72,
			'XBITSTRING_CONSTANT' => 73,
			'UPDATE' => 75,
			'PRESERVE' => 76,
			'CHARACTERISTICS' => 78,
			'XMLPI' => 77,
			'VALIDATE' => 79,
			"(" => 80,
			'ESTRING_CONSTANT' => 82,
			'STRICT' => 81,
			'VARYING' => 83,
			'AUTHORIZATION' => 84,
			'REASSIGN' => 85,
			'LABEL' => 87,
			'ROLLBACK' => 86,
			'OBJECT' => 88,
			'TIMESTAMP' => 91,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 92,
			'OPERATOR_NAME' => 94,
			'NUMERIC_CONSTANT' => 93,
			'INSERT' => 95,
			'HANDLER' => 96,
			'LOCATION' => 98,
			'EXISTS' => 97,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'BOOLEAN' => 100,
			'NULLS' => 102,
			'TYPE' => 103,
			'RESET' => 104,
			'NOWAIT' => 105,
			'PRIOR' => 106,
			'OFF' => 110,
			'BIGINT' => 109,
			'XMLSERIALIZE' => 108,
			'VERBOSE' => 111,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'SETOF' => 116,
			'INNER' => 117,
			'EXTRACT' => 118,
			'REINDEX' => 119,
			'PRECISION' => 120,
			'ACCESS' => 121,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'INOUT' => 124,
			'DEALLOCATE' => 125,
			'CATALOG' => 126,
			'OUT' => 127,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'XMLEXISTS' => 133,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'LEFT' => 136,
			'PRECEDING' => 137,
			'INTEGER_CONSTANT' => 138,
			'STABLE' => 139,
			'DEC' => 140,
			'XML' => 142,
			'XMLELEMENT' => 141,
			'SCROLL' => 143,
			'TEXT' => 144,
			'ALSO' => 145,
			'FUNCTION' => 146,
			'AGGREGATE' => 148,
			'SYSTEM' => 147,
			'FLOAT' => 149,
			'ATTRIBUTE' => 150,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'OVERLAPS' => 155,
			'DEFERRED' => 157,
			'VIEW' => 156,
			'REPEATABLE' => 158,
			'ALWAYS' => 159,
			'CONSTRAINTS' => 160,
			'FORWARD' => 161,
			'NOTHING' => 162,
			'EXCLUDING' => 163,
			'DECIMAL' => 164,
			'CHECKPOINT' => 166,
			'INDEXES' => 165,
			'CACHE' => 167,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'UNLISTEN' => 170,
			'LOAD' => 171,
			'FAMILY' => 172,
			'SMALLINT' => 173,
			'ASSERTION' => 174,
			'ILIKE' => 175,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'SIMILAR' => 178,
			'STDOUT' => 180,
			'BITSTRING_CONSTANT' => 182,
			'REVOKE' => 181,
			'INHERIT' => 183,
			'OUTER' => 184,
			'EXPLAIN' => 185,
			'VARCHAR' => 187,
			'OIDS' => 186,
			'AFTER' => 188,
			'CSV' => 189,
			'DISABLE' => 190,
			'VACUUM' => 191,
			'SCHEMA' => 192,
			'ROW' => 193,
			'LC_COLLATE' => 194,
			'FREEZE' => 195,
			'INDEX' => 196,
			'DEFINER' => 197,
			'XMLPARSE' => 198,
			'OWNED' => 202,
			'INCLUDING' => 201,
			'ADMIN' => 200,
			'CROSS' => 203,
			'INSTEAD' => 204,
			'NATIONAL' => 205,
			'EACH' => 206,
			'TRUSTED' => 207,
			'OWNER' => 209,
			'EXCLUSIVE' => 208,
			'CHARACTER' => 210,
			'STATEMENT' => 212,
			'CASCADE' => 211,
			'ASSIGNMENT' => 214,
			'MATCH' => 215,
			'MOVE' => 219,
			'CLASS' => 218,
			'DOUBLE' => 217,
			'TIME' => 220,
			'NUMERIC' => 221,
			'INLINE' => 223,
			'CURSOR' => 222,
			'EXTENSION' => 225,
			'ENCRYPTED' => 224,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'VALIDATOR' => 228,
			'XMLROOT' => 230,
			'UQUOTED_IDENTIFIER' => 231,
			'SUBSTRING' => 232,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'BETWEEN' => 235,
			'ABORT' => 236,
			'XMLATTRIBUTES' => 237,
			'VALUES' => 238,
			'TRUNCATE' => 240,
			'BEFORE' => 241,
			'SHOW' => 244,
			'ABSOLUTE' => 242,
			'IDENTIFIER' => 243,
			'GREATEST' => 245,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'WHITESPACE' => 250,
			'SECOND' => 252,
			'HOUR' => 253,
			'XMLFOREST' => 254,
			'FOLLOWING' => 256,
			'WRAPPER' => 257,
			'LISTEN' => 258,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'YEAR' => 261,
			'TEMP' => 263,
			'STANDALONE' => 262,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OPTIONS' => 266,
			'CAST' => 267,
			'YES' => 268,
			'PROCEDURAL' => 269,
			'SEQUENCE' => 270,
			'LIKE' => 271,
			'SIMPLE' => 272,
			'QUOTE' => 274,
			'IDENTITY' => 273,
			'POSITION' => 276,
			'EXECUTE' => 278,
			'DOMAIN' => 277,
			'UNKNOWN' => 279,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'SERVER' => 283,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'CONFIGURATION' => 286,
			'NAMES' => 287,
			'PARSER' => 288,
			'RENAME' => 289,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RIGHT' => 290,
			'IMPLICIT' => 294,
			'CLUSTER' => 295,
			'NATURAL' => 296,
			'XMLCONCAT' => 297,
			'PASSWORD' => 298,
			'CHAR' => 299,
			'RECHECK' => 300,
			'NEXT' => 301,
			'PREPARED' => 302,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'GRANTED' => 306,
			'BIT' => 305,
			'BEGIN' => 307,
			'NOTIFY' => 308,
			'HEADER' => 309,
			'INTERVAL' => 310,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'FUNCTIONS' => 313,
			'ISOLATION' => 314,
			'STORAGE' => 315,
			'STDIN' => 316,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'IS' => 319,
			'TRIM' => 318,
			'MAXVALUE' => 322,
			'START' => 323,
			'DOCUMENT' => 324,
			'IF' => 325,
			'SAVEPOINT' => 326,
			'ROWS' => 327,
			'LAST' => 328,
			'MINVALUE' => 329,
			'KEY' => 330,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'ACTION' => 334,
			'WRITE' => 335,
			'ROLE' => 336,
			'NOTNULL' => 337,
			'SESSION' => 338,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'NONE' => 344,
			'TABLES' => 347,
			'VALID' => 346,
			'INT' => 345,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'UNENCRYPTED' => 351,
			'OVERLAY' => 352,
			'FIRST' => 354,
			'COALESCE' => 353,
			'VERSION' => 355
		},
		GOTOS => {
			'base_type' => 216,
			'time_type' => 151,
			'expr_simple' => 280,
			'keywords_reserved_ok_for_functions_or_types' => 74,
			'base_interval_type' => 348,
			'keywords_notreserved_not_ok_for_functions_or_types' => 251,
			'normal_type' => 28,
			'interval_type' => 293,
			'literal_value' => 275,
			'identifier' => 67,
			'expr' => 417,
			'timestamp_type' => 239,
			'operator_expression' => 199,
			'cast_expression' => 107,
			'simple_type' => 213,
			'keywords_notreserved' => 255
		}
	},
	{#State 374
		ACTIONS => {
			'INPUT' => 10,
			'SYSID' => 9,
			'JOIN' => 8,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'NCHAR' => 16,
			'STRING_CONSTANT' => 17,
			'INVOKER' => 18,
			'WORK' => 19,
			'PASSING' => 20,
			'MODE' => 21,
			'INTEGER' => 22,
			'INHERITS' => 23,
			'ESCAPE' => 25,
			'VALUE' => 24,
			'DROP' => 26,
			'MONTH' => 27,
			'ENCODING' => 29,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'FULL' => 37,
			'TREAT' => 38,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'DATA' => 45,
			'DAY' => 44,
			'PARTITION' => 43,
			'RANGE' => 42,
			'REF' => 48,
			'SHARE' => 47,
			'REAL' => 46,
			'OVER' => 49,
			'LARGE' => 51,
			'CURRENT_SCHEMA' => 50,
			'DELETE' => 52,
			'NULLIF' => 53,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'REPLICA' => 58,
			'PRIVILEGES' => 59,
			'ZONE' => 60,
			'LEAST' => 61,
			'STATISTICS' => 62,
			'ISNULL' => 63,
			'CALLED' => 64,
			'USTRING_CONSTANT' => 65,
			'SECURITY' => 66,
			'INCREMENT' => 68,
			'BINARY' => 69,
			'LEVEL' => 70,
			'FORCE' => 71,
			'CONCURRENTLY' => 72,
			'XBITSTRING_CONSTANT' => 73,
			'UPDATE' => 75,
			'PRESERVE' => 76,
			'CHARACTERISTICS' => 78,
			'XMLPI' => 77,
			'VALIDATE' => 79,
			"(" => 80,
			'ESTRING_CONSTANT' => 82,
			'STRICT' => 81,
			'VARYING' => 83,
			'AUTHORIZATION' => 84,
			'REASSIGN' => 85,
			'LABEL' => 87,
			'ROLLBACK' => 86,
			'OBJECT' => 88,
			'TIMESTAMP' => 91,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 92,
			'OPERATOR_NAME' => 94,
			'NUMERIC_CONSTANT' => 93,
			'INSERT' => 95,
			'HANDLER' => 96,
			'LOCATION' => 98,
			'EXISTS' => 97,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'BOOLEAN' => 100,
			'NULLS' => 102,
			'TYPE' => 103,
			'RESET' => 104,
			'NOWAIT' => 105,
			'PRIOR' => 106,
			'OFF' => 110,
			'BIGINT' => 109,
			'XMLSERIALIZE' => 108,
			'VERBOSE' => 111,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'SETOF' => 116,
			'INNER' => 117,
			'EXTRACT' => 118,
			'REINDEX' => 119,
			'PRECISION' => 120,
			'ACCESS' => 121,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'INOUT' => 124,
			'DEALLOCATE' => 125,
			'CATALOG' => 126,
			'OUT' => 127,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'XMLEXISTS' => 133,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'LEFT' => 136,
			'PRECEDING' => 137,
			'INTEGER_CONSTANT' => 138,
			'STABLE' => 139,
			'DEC' => 140,
			'XML' => 142,
			'XMLELEMENT' => 141,
			'SCROLL' => 143,
			'TEXT' => 144,
			'ALSO' => 145,
			'FUNCTION' => 146,
			'AGGREGATE' => 148,
			'SYSTEM' => 147,
			'FLOAT' => 149,
			'ATTRIBUTE' => 150,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'OVERLAPS' => 155,
			'DEFERRED' => 157,
			'VIEW' => 156,
			'REPEATABLE' => 158,
			'ALWAYS' => 159,
			'CONSTRAINTS' => 160,
			'FORWARD' => 161,
			'NOTHING' => 162,
			'EXCLUDING' => 163,
			'DECIMAL' => 164,
			'CHECKPOINT' => 166,
			'INDEXES' => 165,
			'CACHE' => 167,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'UNLISTEN' => 170,
			'LOAD' => 171,
			'FAMILY' => 172,
			'SMALLINT' => 173,
			'ASSERTION' => 174,
			'ILIKE' => 175,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'SIMILAR' => 178,
			'STDOUT' => 180,
			'BITSTRING_CONSTANT' => 182,
			'REVOKE' => 181,
			'INHERIT' => 183,
			'OUTER' => 184,
			'EXPLAIN' => 185,
			'VARCHAR' => 187,
			'OIDS' => 186,
			'AFTER' => 188,
			'CSV' => 189,
			'DISABLE' => 190,
			'VACUUM' => 191,
			'SCHEMA' => 192,
			'ROW' => 193,
			'LC_COLLATE' => 194,
			'FREEZE' => 195,
			'INDEX' => 196,
			'DEFINER' => 197,
			'XMLPARSE' => 198,
			'OWNED' => 202,
			'INCLUDING' => 201,
			'ADMIN' => 200,
			'CROSS' => 203,
			'INSTEAD' => 204,
			'NATIONAL' => 205,
			'EACH' => 206,
			'TRUSTED' => 207,
			'OWNER' => 209,
			'EXCLUSIVE' => 208,
			'CHARACTER' => 210,
			'STATEMENT' => 212,
			'CASCADE' => 211,
			'ASSIGNMENT' => 214,
			'MATCH' => 215,
			'MOVE' => 219,
			'CLASS' => 218,
			'DOUBLE' => 217,
			'TIME' => 220,
			'NUMERIC' => 221,
			'INLINE' => 223,
			'CURSOR' => 222,
			'EXTENSION' => 225,
			'ENCRYPTED' => 224,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'VALIDATOR' => 228,
			'XMLROOT' => 230,
			'UQUOTED_IDENTIFIER' => 231,
			'SUBSTRING' => 232,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'BETWEEN' => 235,
			'ABORT' => 236,
			'XMLATTRIBUTES' => 237,
			'VALUES' => 238,
			'TRUNCATE' => 240,
			'BEFORE' => 241,
			'SHOW' => 244,
			'ABSOLUTE' => 242,
			'IDENTIFIER' => 243,
			'GREATEST' => 245,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'WHITESPACE' => 250,
			'SECOND' => 252,
			'HOUR' => 253,
			'XMLFOREST' => 254,
			'FOLLOWING' => 256,
			'WRAPPER' => 257,
			'LISTEN' => 258,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'YEAR' => 261,
			'TEMP' => 263,
			'STANDALONE' => 262,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OPTIONS' => 266,
			'CAST' => 267,
			'YES' => 268,
			'PROCEDURAL' => 269,
			'SEQUENCE' => 270,
			'LIKE' => 271,
			'SIMPLE' => 272,
			'QUOTE' => 274,
			'IDENTITY' => 273,
			'POSITION' => 276,
			'EXECUTE' => 278,
			'DOMAIN' => 277,
			'UNKNOWN' => 279,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'SERVER' => 283,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'CONFIGURATION' => 286,
			'NAMES' => 287,
			'PARSER' => 288,
			'RENAME' => 289,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RIGHT' => 290,
			'IMPLICIT' => 294,
			'CLUSTER' => 295,
			'NATURAL' => 296,
			'XMLCONCAT' => 297,
			'PASSWORD' => 298,
			'CHAR' => 299,
			'RECHECK' => 300,
			'NEXT' => 301,
			'PREPARED' => 302,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'GRANTED' => 306,
			'BIT' => 305,
			'BEGIN' => 307,
			'NOTIFY' => 308,
			'HEADER' => 309,
			'INTERVAL' => 310,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'FUNCTIONS' => 313,
			'ISOLATION' => 314,
			'STORAGE' => 315,
			'STDIN' => 316,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'IS' => 319,
			'TRIM' => 318,
			'MAXVALUE' => 322,
			'START' => 323,
			'DOCUMENT' => 324,
			'IF' => 325,
			'SAVEPOINT' => 326,
			'ROWS' => 327,
			'LAST' => 328,
			'MINVALUE' => 329,
			'KEY' => 330,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'ACTION' => 334,
			'WRITE' => 335,
			'ROLE' => 336,
			'NOTNULL' => 337,
			'SESSION' => 338,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'NONE' => 344,
			'TABLES' => 347,
			'VALID' => 346,
			'INT' => 345,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'UNENCRYPTED' => 351,
			'OVERLAY' => 352,
			'FIRST' => 354,
			'COALESCE' => 353,
			'VERSION' => 355
		},
		GOTOS => {
			'base_type' => 216,
			'time_type' => 151,
			'expr_simple' => 280,
			'keywords_reserved_ok_for_functions_or_types' => 74,
			'base_interval_type' => 348,
			'keywords_notreserved_not_ok_for_functions_or_types' => 251,
			'normal_type' => 28,
			'interval_type' => 293,
			'literal_value' => 275,
			'identifier' => 67,
			'expr' => 418,
			'timestamp_type' => 239,
			'operator_expression' => 199,
			'cast_expression' => 107,
			'simple_type' => 213,
			'keywords_notreserved' => 255
		}
	},
	{#State 375
		ACTIONS => {
			'INPUT' => 10,
			'SYSID' => 9,
			'JOIN' => 8,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'NCHAR' => 16,
			'STRING_CONSTANT' => 17,
			'INVOKER' => 18,
			'WORK' => 19,
			'PASSING' => 20,
			'MODE' => 21,
			'INTEGER' => 22,
			'INHERITS' => 23,
			'ESCAPE' => 25,
			'VALUE' => 24,
			'DROP' => 26,
			'MONTH' => 27,
			'ENCODING' => 29,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'FULL' => 37,
			'TREAT' => 38,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'DATA' => 45,
			'DAY' => 44,
			'PARTITION' => 43,
			'RANGE' => 42,
			'REF' => 48,
			'SHARE' => 47,
			'REAL' => 46,
			'OVER' => 49,
			'LARGE' => 51,
			'CURRENT_SCHEMA' => 50,
			'DELETE' => 52,
			'NULLIF' => 53,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'REPLICA' => 58,
			'PRIVILEGES' => 59,
			'ZONE' => 60,
			'LEAST' => 61,
			'STATISTICS' => 62,
			'ISNULL' => 63,
			'CALLED' => 64,
			'USTRING_CONSTANT' => 65,
			'SECURITY' => 66,
			'INCREMENT' => 68,
			'BINARY' => 69,
			'LEVEL' => 70,
			'FORCE' => 71,
			'CONCURRENTLY' => 72,
			'XBITSTRING_CONSTANT' => 73,
			'UPDATE' => 75,
			'PRESERVE' => 76,
			'CHARACTERISTICS' => 78,
			'XMLPI' => 77,
			'VALIDATE' => 79,
			"(" => 80,
			'ESTRING_CONSTANT' => 82,
			'STRICT' => 81,
			'VARYING' => 83,
			'AUTHORIZATION' => 84,
			'REASSIGN' => 85,
			'LABEL' => 87,
			'ROLLBACK' => 86,
			'OBJECT' => 88,
			'TIMESTAMP' => 91,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 92,
			'OPERATOR_NAME' => 94,
			'NUMERIC_CONSTANT' => 93,
			'INSERT' => 95,
			'HANDLER' => 96,
			'LOCATION' => 98,
			'EXISTS' => 97,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'BOOLEAN' => 100,
			'NULLS' => 102,
			'TYPE' => 103,
			'RESET' => 104,
			'NOWAIT' => 105,
			'PRIOR' => 106,
			'OFF' => 110,
			'BIGINT' => 109,
			'XMLSERIALIZE' => 108,
			'VERBOSE' => 111,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'SETOF' => 116,
			'INNER' => 117,
			'EXTRACT' => 118,
			'REINDEX' => 119,
			'PRECISION' => 120,
			'ACCESS' => 121,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'INOUT' => 124,
			'DEALLOCATE' => 125,
			'CATALOG' => 126,
			'OUT' => 127,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'XMLEXISTS' => 133,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'LEFT' => 136,
			'PRECEDING' => 137,
			'INTEGER_CONSTANT' => 138,
			'STABLE' => 139,
			'DEC' => 140,
			'XML' => 142,
			'XMLELEMENT' => 141,
			'SCROLL' => 143,
			'TEXT' => 144,
			'ALSO' => 145,
			'FUNCTION' => 146,
			'AGGREGATE' => 148,
			'SYSTEM' => 147,
			'FLOAT' => 149,
			'ATTRIBUTE' => 150,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'OVERLAPS' => 155,
			'DEFERRED' => 157,
			'VIEW' => 156,
			'REPEATABLE' => 158,
			'ALWAYS' => 159,
			'CONSTRAINTS' => 160,
			'FORWARD' => 161,
			'NOTHING' => 162,
			'EXCLUDING' => 163,
			'DECIMAL' => 164,
			'CHECKPOINT' => 166,
			'INDEXES' => 165,
			'CACHE' => 167,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'UNLISTEN' => 170,
			'LOAD' => 171,
			'FAMILY' => 172,
			'SMALLINT' => 173,
			'ASSERTION' => 174,
			'ILIKE' => 175,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'SIMILAR' => 178,
			'STDOUT' => 180,
			'BITSTRING_CONSTANT' => 182,
			'REVOKE' => 181,
			'INHERIT' => 183,
			'OUTER' => 184,
			'EXPLAIN' => 185,
			'VARCHAR' => 187,
			'OIDS' => 186,
			'AFTER' => 188,
			'CSV' => 189,
			'DISABLE' => 190,
			'VACUUM' => 191,
			'SCHEMA' => 192,
			'ROW' => 193,
			'LC_COLLATE' => 194,
			'FREEZE' => 195,
			'INDEX' => 196,
			'DEFINER' => 197,
			'XMLPARSE' => 198,
			'OWNED' => 202,
			'INCLUDING' => 201,
			'ADMIN' => 200,
			'CROSS' => 203,
			'INSTEAD' => 204,
			'NATIONAL' => 205,
			'EACH' => 206,
			'TRUSTED' => 207,
			'OWNER' => 209,
			'EXCLUSIVE' => 208,
			'CHARACTER' => 210,
			'STATEMENT' => 212,
			'CASCADE' => 211,
			'ASSIGNMENT' => 214,
			'MATCH' => 215,
			'MOVE' => 219,
			'CLASS' => 218,
			'DOUBLE' => 217,
			'TIME' => 220,
			'NUMERIC' => 221,
			'INLINE' => 223,
			'CURSOR' => 222,
			'EXTENSION' => 225,
			'ENCRYPTED' => 224,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'VALIDATOR' => 228,
			'XMLROOT' => 230,
			'UQUOTED_IDENTIFIER' => 231,
			'SUBSTRING' => 232,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'BETWEEN' => 235,
			'ABORT' => 236,
			'XMLATTRIBUTES' => 237,
			'VALUES' => 238,
			'TRUNCATE' => 240,
			'BEFORE' => 241,
			'SHOW' => 244,
			'ABSOLUTE' => 242,
			'IDENTIFIER' => 243,
			'GREATEST' => 245,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'WHITESPACE' => 250,
			'SECOND' => 252,
			'HOUR' => 253,
			'XMLFOREST' => 254,
			'FOLLOWING' => 256,
			'WRAPPER' => 257,
			'LISTEN' => 258,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'YEAR' => 261,
			'TEMP' => 263,
			'STANDALONE' => 262,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OPTIONS' => 266,
			'CAST' => 267,
			'YES' => 268,
			'PROCEDURAL' => 269,
			'SEQUENCE' => 270,
			'LIKE' => 271,
			'SIMPLE' => 272,
			'QUOTE' => 274,
			'IDENTITY' => 273,
			'POSITION' => 276,
			'EXECUTE' => 278,
			'DOMAIN' => 277,
			'UNKNOWN' => 279,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'SERVER' => 283,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'CONFIGURATION' => 286,
			'NAMES' => 287,
			'PARSER' => 288,
			'RENAME' => 289,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RIGHT' => 290,
			'IMPLICIT' => 294,
			'CLUSTER' => 295,
			'NATURAL' => 296,
			'XMLCONCAT' => 297,
			'PASSWORD' => 298,
			'CHAR' => 299,
			'RECHECK' => 300,
			'NEXT' => 301,
			'PREPARED' => 302,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'GRANTED' => 306,
			'BIT' => 305,
			'BEGIN' => 307,
			'NOTIFY' => 308,
			'HEADER' => 309,
			'INTERVAL' => 310,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'FUNCTIONS' => 313,
			'ISOLATION' => 314,
			'STORAGE' => 315,
			'STDIN' => 316,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'IS' => 319,
			'TRIM' => 318,
			'MAXVALUE' => 322,
			'START' => 323,
			'DOCUMENT' => 324,
			'IF' => 325,
			'SAVEPOINT' => 326,
			'ROWS' => 327,
			'LAST' => 328,
			'MINVALUE' => 329,
			'KEY' => 330,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'ACTION' => 334,
			'WRITE' => 335,
			'ROLE' => 336,
			'NOTNULL' => 337,
			'SESSION' => 338,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'NONE' => 344,
			'TABLES' => 347,
			'VALID' => 346,
			'INT' => 345,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'UNENCRYPTED' => 351,
			'OVERLAY' => 352,
			'FIRST' => 354,
			'COALESCE' => 353,
			'VERSION' => 355
		},
		GOTOS => {
			'base_type' => 216,
			'time_type' => 151,
			'expr_simple' => 280,
			'keywords_reserved_ok_for_functions_or_types' => 74,
			'base_interval_type' => 348,
			'keywords_notreserved_not_ok_for_functions_or_types' => 251,
			'normal_type' => 28,
			'interval_type' => 293,
			'literal_value' => 275,
			'identifier' => 67,
			'expr' => 419,
			'timestamp_type' => 239,
			'operator_expression' => 199,
			'cast_expression' => 107,
			'simple_type' => 213,
			'keywords_notreserved' => 255
		}
	},
	{#State 376
		ACTIONS => {
			'INPUT' => 10,
			'SYSID' => 9,
			'JOIN' => 8,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'NCHAR' => 16,
			'STRING_CONSTANT' => 17,
			'INVOKER' => 18,
			'WORK' => 19,
			'PASSING' => 20,
			'MODE' => 21,
			'INTEGER' => 22,
			'INHERITS' => 23,
			'ESCAPE' => 25,
			'VALUE' => 24,
			'DROP' => 26,
			'MONTH' => 27,
			'ENCODING' => 29,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'FULL' => 37,
			'TREAT' => 38,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'DATA' => 45,
			'DAY' => 44,
			'PARTITION' => 43,
			'RANGE' => 42,
			'REF' => 48,
			'SHARE' => 47,
			'REAL' => 46,
			'OVER' => 49,
			'LARGE' => 51,
			'CURRENT_SCHEMA' => 50,
			'DELETE' => 52,
			'NULLIF' => 53,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'REPLICA' => 58,
			'PRIVILEGES' => 59,
			'ZONE' => 60,
			'LEAST' => 61,
			'STATISTICS' => 62,
			'ISNULL' => 63,
			'CALLED' => 64,
			'USTRING_CONSTANT' => 65,
			'SECURITY' => 66,
			'INCREMENT' => 68,
			'BINARY' => 69,
			'LEVEL' => 70,
			'FORCE' => 71,
			'CONCURRENTLY' => 72,
			'XBITSTRING_CONSTANT' => 73,
			'UPDATE' => 75,
			'PRESERVE' => 76,
			'CHARACTERISTICS' => 78,
			'XMLPI' => 77,
			'VALIDATE' => 79,
			"(" => 80,
			'ESTRING_CONSTANT' => 82,
			'STRICT' => 81,
			'VARYING' => 83,
			'AUTHORIZATION' => 84,
			'REASSIGN' => 85,
			'LABEL' => 87,
			'ROLLBACK' => 86,
			'OBJECT' => 88,
			'TIMESTAMP' => 91,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 92,
			'OPERATOR_NAME' => 94,
			'NUMERIC_CONSTANT' => 93,
			'INSERT' => 95,
			'HANDLER' => 96,
			'LOCATION' => 98,
			'EXISTS' => 97,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'BOOLEAN' => 100,
			'NULLS' => 102,
			'TYPE' => 103,
			'RESET' => 104,
			'NOWAIT' => 105,
			'PRIOR' => 106,
			'OFF' => 110,
			'BIGINT' => 109,
			'XMLSERIALIZE' => 108,
			'VERBOSE' => 111,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'SETOF' => 116,
			'INNER' => 117,
			'EXTRACT' => 118,
			'REINDEX' => 119,
			'PRECISION' => 120,
			'ACCESS' => 121,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'INOUT' => 124,
			'DEALLOCATE' => 125,
			'CATALOG' => 126,
			'OUT' => 127,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'XMLEXISTS' => 133,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'LEFT' => 136,
			'PRECEDING' => 137,
			'INTEGER_CONSTANT' => 138,
			'STABLE' => 139,
			'DEC' => 140,
			'XML' => 142,
			'XMLELEMENT' => 141,
			'SCROLL' => 143,
			'TEXT' => 144,
			'ALSO' => 145,
			'FUNCTION' => 146,
			'AGGREGATE' => 148,
			'SYSTEM' => 147,
			'FLOAT' => 149,
			'ATTRIBUTE' => 150,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'OVERLAPS' => 155,
			'DEFERRED' => 157,
			'VIEW' => 156,
			'REPEATABLE' => 158,
			'ALWAYS' => 159,
			'CONSTRAINTS' => 160,
			'FORWARD' => 161,
			'NOTHING' => 162,
			'EXCLUDING' => 163,
			'DECIMAL' => 164,
			'CHECKPOINT' => 166,
			'INDEXES' => 165,
			'CACHE' => 167,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'UNLISTEN' => 170,
			'LOAD' => 171,
			'FAMILY' => 172,
			'SMALLINT' => 173,
			'ASSERTION' => 174,
			'ILIKE' => 175,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'SIMILAR' => 178,
			'STDOUT' => 180,
			'BITSTRING_CONSTANT' => 182,
			'REVOKE' => 181,
			'INHERIT' => 183,
			'OUTER' => 184,
			'EXPLAIN' => 185,
			'VARCHAR' => 187,
			'OIDS' => 186,
			'AFTER' => 188,
			'CSV' => 189,
			'DISABLE' => 190,
			'VACUUM' => 191,
			'SCHEMA' => 192,
			'ROW' => 193,
			'LC_COLLATE' => 194,
			'FREEZE' => 195,
			'INDEX' => 196,
			'DEFINER' => 197,
			'XMLPARSE' => 198,
			'OWNED' => 202,
			'INCLUDING' => 201,
			'ADMIN' => 200,
			'CROSS' => 203,
			'INSTEAD' => 204,
			'NATIONAL' => 205,
			'EACH' => 206,
			'TRUSTED' => 207,
			'OWNER' => 209,
			'EXCLUSIVE' => 208,
			'CHARACTER' => 210,
			'STATEMENT' => 212,
			'CASCADE' => 211,
			'ASSIGNMENT' => 214,
			'MATCH' => 215,
			'MOVE' => 219,
			'CLASS' => 218,
			'DOUBLE' => 217,
			'TIME' => 220,
			'NUMERIC' => 221,
			'INLINE' => 223,
			'CURSOR' => 222,
			'EXTENSION' => 225,
			'ENCRYPTED' => 224,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'VALIDATOR' => 228,
			'XMLROOT' => 230,
			'UQUOTED_IDENTIFIER' => 231,
			'SUBSTRING' => 232,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'BETWEEN' => 235,
			'ABORT' => 236,
			'XMLATTRIBUTES' => 237,
			'VALUES' => 238,
			'TRUNCATE' => 240,
			'BEFORE' => 241,
			'SHOW' => 244,
			'ABSOLUTE' => 242,
			'IDENTIFIER' => 243,
			'GREATEST' => 245,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'WHITESPACE' => 250,
			'SECOND' => 252,
			'HOUR' => 253,
			'XMLFOREST' => 254,
			'FOLLOWING' => 256,
			'WRAPPER' => 257,
			'LISTEN' => 258,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'YEAR' => 261,
			'TEMP' => 263,
			'STANDALONE' => 262,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OPTIONS' => 266,
			'CAST' => 267,
			'YES' => 268,
			'PROCEDURAL' => 269,
			'SEQUENCE' => 270,
			'LIKE' => 271,
			'SIMPLE' => 272,
			'QUOTE' => 274,
			'IDENTITY' => 273,
			'POSITION' => 276,
			'EXECUTE' => 278,
			'DOMAIN' => 277,
			'UNKNOWN' => 279,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'SERVER' => 283,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'CONFIGURATION' => 286,
			'NAMES' => 287,
			'PARSER' => 288,
			'RENAME' => 289,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RIGHT' => 290,
			'IMPLICIT' => 294,
			'CLUSTER' => 295,
			'NATURAL' => 296,
			'XMLCONCAT' => 297,
			'PASSWORD' => 298,
			'CHAR' => 299,
			'RECHECK' => 300,
			'NEXT' => 301,
			'PREPARED' => 302,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'GRANTED' => 306,
			'BIT' => 305,
			'BEGIN' => 307,
			'NOTIFY' => 308,
			'HEADER' => 309,
			'INTERVAL' => 310,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'FUNCTIONS' => 313,
			'ISOLATION' => 314,
			'STORAGE' => 315,
			'STDIN' => 316,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'IS' => 319,
			'TRIM' => 318,
			'MAXVALUE' => 322,
			'START' => 323,
			'DOCUMENT' => 324,
			'IF' => 325,
			'SAVEPOINT' => 326,
			'ROWS' => 327,
			'LAST' => 328,
			'MINVALUE' => 329,
			'KEY' => 330,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'ACTION' => 334,
			'WRITE' => 335,
			'ROLE' => 336,
			'NOTNULL' => 337,
			'SESSION' => 338,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'NONE' => 344,
			'TABLES' => 347,
			'VALID' => 346,
			'INT' => 345,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'UNENCRYPTED' => 351,
			'OVERLAY' => 352,
			'FIRST' => 354,
			'COALESCE' => 353,
			'VERSION' => 355
		},
		GOTOS => {
			'base_type' => 216,
			'time_type' => 151,
			'expr_simple' => 280,
			'keywords_reserved_ok_for_functions_or_types' => 74,
			'base_interval_type' => 348,
			'keywords_notreserved_not_ok_for_functions_or_types' => 251,
			'normal_type' => 28,
			'interval_type' => 293,
			'literal_value' => 275,
			'identifier' => 67,
			'expr' => 420,
			'timestamp_type' => 239,
			'operator_expression' => 199,
			'cast_expression' => 107,
			'simple_type' => 213,
			'keywords_notreserved' => 255
		}
	},
	{#State 377
		ACTIONS => {
			'INPUT' => 10,
			'SYSID' => 9,
			'JOIN' => 8,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'NCHAR' => 16,
			'STRING_CONSTANT' => 17,
			'INVOKER' => 18,
			'WORK' => 19,
			'PASSING' => 20,
			'MODE' => 21,
			'INTEGER' => 22,
			'INHERITS' => 23,
			'ESCAPE' => 25,
			'VALUE' => 24,
			'DROP' => 26,
			'MONTH' => 27,
			'ENCODING' => 29,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'FULL' => 37,
			'TREAT' => 38,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'DATA' => 45,
			'DAY' => 44,
			'PARTITION' => 43,
			'RANGE' => 42,
			'REF' => 48,
			'SHARE' => 47,
			'REAL' => 46,
			'OVER' => 49,
			'LARGE' => 51,
			'CURRENT_SCHEMA' => 50,
			'DELETE' => 52,
			'NULLIF' => 53,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'REPLICA' => 58,
			'PRIVILEGES' => 59,
			'ZONE' => 60,
			'LEAST' => 61,
			'STATISTICS' => 62,
			'ISNULL' => 63,
			'CALLED' => 64,
			'USTRING_CONSTANT' => 65,
			'SECURITY' => 66,
			'INCREMENT' => 68,
			'BINARY' => 69,
			'LEVEL' => 70,
			'FORCE' => 71,
			'CONCURRENTLY' => 72,
			'XBITSTRING_CONSTANT' => 73,
			'UPDATE' => 75,
			'PRESERVE' => 76,
			'CHARACTERISTICS' => 78,
			'XMLPI' => 77,
			'VALIDATE' => 79,
			"(" => 80,
			'ESTRING_CONSTANT' => 82,
			'STRICT' => 81,
			'VARYING' => 83,
			'AUTHORIZATION' => 84,
			'REASSIGN' => 85,
			'LABEL' => 87,
			'ROLLBACK' => 86,
			'OBJECT' => 88,
			'TIMESTAMP' => 91,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 92,
			'OPERATOR_NAME' => 94,
			'NUMERIC_CONSTANT' => 93,
			'INSERT' => 95,
			'HANDLER' => 96,
			'LOCATION' => 98,
			'EXISTS' => 97,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'BOOLEAN' => 100,
			'NULLS' => 102,
			'TYPE' => 103,
			'RESET' => 104,
			'NOWAIT' => 105,
			'PRIOR' => 106,
			'OFF' => 110,
			'BIGINT' => 109,
			'XMLSERIALIZE' => 108,
			'VERBOSE' => 111,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'SETOF' => 116,
			'INNER' => 117,
			'EXTRACT' => 118,
			'REINDEX' => 119,
			'PRECISION' => 120,
			'ACCESS' => 121,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'INOUT' => 124,
			'DEALLOCATE' => 125,
			'CATALOG' => 126,
			'OUT' => 127,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'XMLEXISTS' => 133,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'LEFT' => 136,
			'PRECEDING' => 137,
			'INTEGER_CONSTANT' => 138,
			'STABLE' => 139,
			'DEC' => 140,
			'XML' => 142,
			'XMLELEMENT' => 141,
			'SCROLL' => 143,
			'TEXT' => 144,
			'ALSO' => 145,
			'FUNCTION' => 146,
			'AGGREGATE' => 148,
			'SYSTEM' => 147,
			'FLOAT' => 149,
			'ATTRIBUTE' => 150,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'OVERLAPS' => 155,
			'DEFERRED' => 157,
			'VIEW' => 156,
			'REPEATABLE' => 158,
			'ALWAYS' => 159,
			'CONSTRAINTS' => 160,
			'FORWARD' => 161,
			'NOTHING' => 162,
			'EXCLUDING' => 163,
			'DECIMAL' => 164,
			'CHECKPOINT' => 166,
			'INDEXES' => 165,
			'CACHE' => 167,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'UNLISTEN' => 170,
			'LOAD' => 171,
			'FAMILY' => 172,
			'SMALLINT' => 173,
			'ASSERTION' => 174,
			'ILIKE' => 175,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'SIMILAR' => 178,
			'STDOUT' => 180,
			'BITSTRING_CONSTANT' => 182,
			'REVOKE' => 181,
			'INHERIT' => 183,
			'OUTER' => 184,
			'EXPLAIN' => 185,
			'VARCHAR' => 187,
			'OIDS' => 186,
			'AFTER' => 188,
			'CSV' => 189,
			'DISABLE' => 190,
			'VACUUM' => 191,
			'SCHEMA' => 192,
			'ROW' => 193,
			'LC_COLLATE' => 194,
			'FREEZE' => 195,
			'INDEX' => 196,
			'DEFINER' => 197,
			'XMLPARSE' => 198,
			'OWNED' => 202,
			'INCLUDING' => 201,
			'ADMIN' => 200,
			'CROSS' => 203,
			'INSTEAD' => 204,
			'NATIONAL' => 205,
			'EACH' => 206,
			'TRUSTED' => 207,
			'OWNER' => 209,
			'EXCLUSIVE' => 208,
			'CHARACTER' => 210,
			'STATEMENT' => 212,
			'CASCADE' => 211,
			'ASSIGNMENT' => 214,
			'MATCH' => 215,
			'MOVE' => 219,
			'CLASS' => 218,
			'DOUBLE' => 217,
			'TIME' => 220,
			'NUMERIC' => 221,
			'INLINE' => 223,
			'CURSOR' => 222,
			'EXTENSION' => 225,
			'ENCRYPTED' => 224,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'VALIDATOR' => 228,
			'XMLROOT' => 230,
			'UQUOTED_IDENTIFIER' => 231,
			'SUBSTRING' => 232,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'BETWEEN' => 235,
			'ABORT' => 236,
			'XMLATTRIBUTES' => 237,
			'VALUES' => 238,
			'TRUNCATE' => 240,
			'BEFORE' => 241,
			'SHOW' => 244,
			'ABSOLUTE' => 242,
			'IDENTIFIER' => 243,
			'GREATEST' => 245,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'WHITESPACE' => 250,
			'SECOND' => 252,
			'HOUR' => 253,
			'XMLFOREST' => 254,
			'FOLLOWING' => 256,
			'WRAPPER' => 257,
			'LISTEN' => 258,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'YEAR' => 261,
			'TEMP' => 263,
			'STANDALONE' => 262,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OPTIONS' => 266,
			'CAST' => 267,
			'YES' => 268,
			'PROCEDURAL' => 269,
			'SEQUENCE' => 270,
			'LIKE' => 271,
			'SIMPLE' => 272,
			'QUOTE' => 274,
			'IDENTITY' => 273,
			'POSITION' => 276,
			'EXECUTE' => 278,
			'DOMAIN' => 277,
			'UNKNOWN' => 279,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'SERVER' => 283,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'CONFIGURATION' => 286,
			'NAMES' => 287,
			'PARSER' => 288,
			'RENAME' => 289,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RIGHT' => 290,
			'IMPLICIT' => 294,
			'CLUSTER' => 295,
			'NATURAL' => 296,
			'XMLCONCAT' => 297,
			'PASSWORD' => 298,
			'CHAR' => 299,
			'RECHECK' => 300,
			'NEXT' => 301,
			'PREPARED' => 302,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'GRANTED' => 306,
			'BIT' => 305,
			'BEGIN' => 307,
			'NOTIFY' => 308,
			'HEADER' => 309,
			'INTERVAL' => 310,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'FUNCTIONS' => 313,
			'ISOLATION' => 314,
			'STORAGE' => 315,
			'STDIN' => 316,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'IS' => 319,
			'TRIM' => 318,
			'MAXVALUE' => 322,
			'START' => 323,
			'DOCUMENT' => 324,
			'IF' => 325,
			'SAVEPOINT' => 326,
			'ROWS' => 327,
			'LAST' => 328,
			'MINVALUE' => 329,
			'KEY' => 330,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'ACTION' => 334,
			'WRITE' => 335,
			'ROLE' => 336,
			'NOTNULL' => 337,
			'SESSION' => 338,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'NONE' => 344,
			'TABLES' => 347,
			'VALID' => 346,
			'INT' => 345,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'UNENCRYPTED' => 351,
			'OVERLAY' => 352,
			'FIRST' => 354,
			'COALESCE' => 353,
			'VERSION' => 355
		},
		GOTOS => {
			'base_type' => 216,
			'time_type' => 151,
			'expr_simple' => 280,
			'keywords_reserved_ok_for_functions_or_types' => 74,
			'base_interval_type' => 348,
			'keywords_notreserved_not_ok_for_functions_or_types' => 251,
			'normal_type' => 28,
			'interval_type' => 293,
			'literal_value' => 275,
			'identifier' => 67,
			'expr' => 421,
			'timestamp_type' => 239,
			'operator_expression' => 199,
			'cast_expression' => 107,
			'simple_type' => 213,
			'keywords_notreserved' => 255
		}
	},
	{#State 378
		ACTIONS => {
			'INPUT' => 10,
			'SYSID' => 9,
			'JOIN' => 8,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'NCHAR' => 16,
			'STRING_CONSTANT' => 17,
			'INVOKER' => 18,
			'WORK' => 19,
			'PASSING' => 20,
			'MODE' => 21,
			'INTEGER' => 22,
			'INHERITS' => 23,
			'ESCAPE' => 25,
			'VALUE' => 24,
			'DROP' => 26,
			'MONTH' => 27,
			'ENCODING' => 29,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'FULL' => 37,
			'TREAT' => 38,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'DATA' => 45,
			'DAY' => 44,
			'PARTITION' => 43,
			'RANGE' => 42,
			'REF' => 48,
			'SHARE' => 47,
			'REAL' => 46,
			'OVER' => 49,
			'LARGE' => 51,
			'CURRENT_SCHEMA' => 50,
			'DELETE' => 52,
			'NULLIF' => 53,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'REPLICA' => 58,
			'PRIVILEGES' => 59,
			'ZONE' => 60,
			'LEAST' => 61,
			'STATISTICS' => 62,
			'ISNULL' => 63,
			'CALLED' => 64,
			'USTRING_CONSTANT' => 65,
			'SECURITY' => 66,
			'INCREMENT' => 68,
			'BINARY' => 69,
			'LEVEL' => 70,
			'FORCE' => 71,
			'CONCURRENTLY' => 72,
			'XBITSTRING_CONSTANT' => 73,
			'UPDATE' => 75,
			'PRESERVE' => 76,
			'CHARACTERISTICS' => 78,
			'XMLPI' => 77,
			'VALIDATE' => 79,
			"(" => 80,
			'ESTRING_CONSTANT' => 82,
			'STRICT' => 81,
			'VARYING' => 83,
			'AUTHORIZATION' => 84,
			'REASSIGN' => 85,
			'LABEL' => 87,
			'ROLLBACK' => 86,
			'OBJECT' => 88,
			'TIMESTAMP' => 91,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 92,
			'OPERATOR_NAME' => 94,
			'NUMERIC_CONSTANT' => 93,
			'INSERT' => 95,
			'HANDLER' => 96,
			'LOCATION' => 98,
			'EXISTS' => 97,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'BOOLEAN' => 100,
			'NULLS' => 102,
			'TYPE' => 103,
			'RESET' => 104,
			'NOWAIT' => 105,
			'PRIOR' => 106,
			'OFF' => 110,
			'BIGINT' => 109,
			'XMLSERIALIZE' => 108,
			'VERBOSE' => 111,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'SETOF' => 116,
			'INNER' => 117,
			'EXTRACT' => 118,
			'REINDEX' => 119,
			'PRECISION' => 120,
			'ACCESS' => 121,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'INOUT' => 124,
			'DEALLOCATE' => 125,
			'CATALOG' => 126,
			'OUT' => 127,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'XMLEXISTS' => 133,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'LEFT' => 136,
			'PRECEDING' => 137,
			'INTEGER_CONSTANT' => 138,
			'STABLE' => 139,
			'DEC' => 140,
			'XML' => 142,
			'XMLELEMENT' => 141,
			'SCROLL' => 143,
			'TEXT' => 144,
			'ALSO' => 145,
			'FUNCTION' => 146,
			'AGGREGATE' => 148,
			'SYSTEM' => 147,
			'FLOAT' => 149,
			'ATTRIBUTE' => 150,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'OVERLAPS' => 155,
			'DEFERRED' => 157,
			'VIEW' => 156,
			'REPEATABLE' => 158,
			'ALWAYS' => 159,
			'CONSTRAINTS' => 160,
			'FORWARD' => 161,
			'NOTHING' => 162,
			'EXCLUDING' => 163,
			'DECIMAL' => 164,
			'CHECKPOINT' => 166,
			'INDEXES' => 165,
			'CACHE' => 167,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'UNLISTEN' => 170,
			'LOAD' => 171,
			'FAMILY' => 172,
			'SMALLINT' => 173,
			'ASSERTION' => 174,
			'ILIKE' => 175,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'SIMILAR' => 178,
			'STDOUT' => 180,
			'BITSTRING_CONSTANT' => 182,
			'REVOKE' => 181,
			'INHERIT' => 183,
			'OUTER' => 184,
			'EXPLAIN' => 185,
			'VARCHAR' => 187,
			'OIDS' => 186,
			'AFTER' => 188,
			'CSV' => 189,
			'DISABLE' => 190,
			'VACUUM' => 191,
			'SCHEMA' => 192,
			'ROW' => 193,
			'LC_COLLATE' => 194,
			'FREEZE' => 195,
			'INDEX' => 196,
			'DEFINER' => 197,
			'XMLPARSE' => 198,
			'OWNED' => 202,
			'INCLUDING' => 201,
			'ADMIN' => 200,
			'CROSS' => 203,
			'INSTEAD' => 204,
			'NATIONAL' => 205,
			'EACH' => 206,
			'TRUSTED' => 207,
			'OWNER' => 209,
			'EXCLUSIVE' => 208,
			'CHARACTER' => 210,
			'STATEMENT' => 212,
			'CASCADE' => 211,
			'ASSIGNMENT' => 214,
			'MATCH' => 215,
			'MOVE' => 219,
			'CLASS' => 218,
			'DOUBLE' => 217,
			'TIME' => 220,
			'NUMERIC' => 221,
			'INLINE' => 223,
			'CURSOR' => 222,
			'EXTENSION' => 225,
			'ENCRYPTED' => 224,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'VALIDATOR' => 228,
			'XMLROOT' => 230,
			'UQUOTED_IDENTIFIER' => 231,
			'SUBSTRING' => 232,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'BETWEEN' => 235,
			'ABORT' => 236,
			'XMLATTRIBUTES' => 237,
			'VALUES' => 238,
			'TRUNCATE' => 240,
			'BEFORE' => 241,
			'SHOW' => 244,
			'ABSOLUTE' => 242,
			'IDENTIFIER' => 243,
			'GREATEST' => 245,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'WHITESPACE' => 250,
			'SECOND' => 252,
			'HOUR' => 253,
			'XMLFOREST' => 254,
			'FOLLOWING' => 256,
			'WRAPPER' => 257,
			'LISTEN' => 258,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'YEAR' => 261,
			'TEMP' => 263,
			'STANDALONE' => 262,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OPTIONS' => 266,
			'CAST' => 267,
			'YES' => 268,
			'PROCEDURAL' => 269,
			'SEQUENCE' => 270,
			'LIKE' => 271,
			'SIMPLE' => 272,
			'QUOTE' => 274,
			'IDENTITY' => 273,
			'POSITION' => 276,
			'EXECUTE' => 278,
			'DOMAIN' => 277,
			'UNKNOWN' => 279,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'SERVER' => 283,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'CONFIGURATION' => 286,
			'NAMES' => 287,
			'PARSER' => 288,
			'RENAME' => 289,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RIGHT' => 290,
			'IMPLICIT' => 294,
			'CLUSTER' => 295,
			'NATURAL' => 296,
			'XMLCONCAT' => 297,
			'PASSWORD' => 298,
			'CHAR' => 299,
			'RECHECK' => 300,
			'NEXT' => 301,
			'PREPARED' => 302,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'GRANTED' => 306,
			'BIT' => 305,
			'BEGIN' => 307,
			'NOTIFY' => 308,
			'HEADER' => 309,
			'INTERVAL' => 310,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'FUNCTIONS' => 313,
			'ISOLATION' => 314,
			'STORAGE' => 315,
			'STDIN' => 316,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'IS' => 319,
			'TRIM' => 318,
			'MAXVALUE' => 322,
			'START' => 323,
			'DOCUMENT' => 324,
			'IF' => 325,
			'SAVEPOINT' => 326,
			'ROWS' => 327,
			'LAST' => 328,
			'MINVALUE' => 329,
			'KEY' => 330,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'ACTION' => 334,
			'WRITE' => 335,
			'ROLE' => 336,
			'NOTNULL' => 337,
			'SESSION' => 338,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'NONE' => 344,
			'TABLES' => 347,
			'VALID' => 346,
			'INT' => 345,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'UNENCRYPTED' => 351,
			'OVERLAY' => 352,
			'FIRST' => 354,
			'COALESCE' => 353,
			'VERSION' => 355
		},
		GOTOS => {
			'base_type' => 216,
			'time_type' => 151,
			'expr_simple' => 280,
			'keywords_reserved_ok_for_functions_or_types' => 74,
			'base_interval_type' => 348,
			'keywords_notreserved_not_ok_for_functions_or_types' => 251,
			'normal_type' => 28,
			'interval_type' => 293,
			'literal_value' => 275,
			'identifier' => 67,
			'expr' => 422,
			'timestamp_type' => 239,
			'operator_expression' => 199,
			'cast_expression' => 107,
			'simple_type' => 213,
			'keywords_notreserved' => 255
		}
	},
	{#State 379
		ACTIONS => {
			'INPUT' => 10,
			'SYSID' => 9,
			'JOIN' => 8,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'NCHAR' => 16,
			'STRING_CONSTANT' => 17,
			'INVOKER' => 18,
			'WORK' => 19,
			'PASSING' => 20,
			'MODE' => 21,
			'INTEGER' => 22,
			'INHERITS' => 23,
			'ESCAPE' => 25,
			'VALUE' => 24,
			'DROP' => 26,
			'MONTH' => 27,
			'ENCODING' => 29,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'FULL' => 37,
			'TREAT' => 38,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'DATA' => 45,
			'DAY' => 44,
			'PARTITION' => 43,
			'RANGE' => 42,
			'REF' => 48,
			'SHARE' => 47,
			'REAL' => 46,
			'OVER' => 49,
			'LARGE' => 51,
			'CURRENT_SCHEMA' => 50,
			'DELETE' => 52,
			'NULLIF' => 53,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'REPLICA' => 58,
			'PRIVILEGES' => 59,
			'ZONE' => 60,
			'LEAST' => 61,
			'STATISTICS' => 62,
			'ISNULL' => 63,
			'CALLED' => 64,
			'USTRING_CONSTANT' => 65,
			'SECURITY' => 66,
			'INCREMENT' => 68,
			'BINARY' => 69,
			'LEVEL' => 70,
			'FORCE' => 71,
			'CONCURRENTLY' => 72,
			'XBITSTRING_CONSTANT' => 73,
			'UPDATE' => 75,
			'PRESERVE' => 76,
			'CHARACTERISTICS' => 78,
			'XMLPI' => 77,
			'VALIDATE' => 79,
			"(" => 80,
			'ESTRING_CONSTANT' => 82,
			'STRICT' => 81,
			'VARYING' => 83,
			'AUTHORIZATION' => 84,
			'REASSIGN' => 85,
			'LABEL' => 87,
			'ROLLBACK' => 86,
			'OBJECT' => 88,
			'TIMESTAMP' => 91,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 92,
			'OPERATOR_NAME' => 94,
			'NUMERIC_CONSTANT' => 93,
			'INSERT' => 95,
			'HANDLER' => 96,
			'LOCATION' => 98,
			'EXISTS' => 97,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'BOOLEAN' => 100,
			'NULLS' => 102,
			'TYPE' => 103,
			'RESET' => 104,
			'NOWAIT' => 105,
			'PRIOR' => 106,
			'OFF' => 110,
			'BIGINT' => 109,
			'XMLSERIALIZE' => 108,
			'VERBOSE' => 111,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'SETOF' => 116,
			'INNER' => 117,
			'EXTRACT' => 118,
			'REINDEX' => 119,
			'PRECISION' => 120,
			'ACCESS' => 121,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'INOUT' => 124,
			'DEALLOCATE' => 125,
			'CATALOG' => 126,
			'OUT' => 127,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'XMLEXISTS' => 133,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'LEFT' => 136,
			'PRECEDING' => 137,
			'INTEGER_CONSTANT' => 138,
			'STABLE' => 139,
			'DEC' => 140,
			'XML' => 142,
			'XMLELEMENT' => 141,
			'SCROLL' => 143,
			'TEXT' => 144,
			'ALSO' => 145,
			'FUNCTION' => 146,
			'AGGREGATE' => 148,
			'SYSTEM' => 147,
			'FLOAT' => 149,
			'ATTRIBUTE' => 150,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'OVERLAPS' => 155,
			'DEFERRED' => 157,
			'VIEW' => 156,
			'REPEATABLE' => 158,
			'ALWAYS' => 159,
			'CONSTRAINTS' => 160,
			'FORWARD' => 161,
			'NOTHING' => 162,
			'EXCLUDING' => 163,
			'DECIMAL' => 164,
			'CHECKPOINT' => 166,
			'INDEXES' => 165,
			'CACHE' => 167,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'UNLISTEN' => 170,
			'LOAD' => 171,
			'FAMILY' => 172,
			'SMALLINT' => 173,
			'ASSERTION' => 174,
			'ILIKE' => 175,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'SIMILAR' => 178,
			'STDOUT' => 180,
			'BITSTRING_CONSTANT' => 182,
			'REVOKE' => 181,
			'INHERIT' => 183,
			'OUTER' => 184,
			'EXPLAIN' => 185,
			'VARCHAR' => 187,
			'OIDS' => 186,
			'AFTER' => 188,
			'CSV' => 189,
			'DISABLE' => 190,
			'VACUUM' => 191,
			'SCHEMA' => 192,
			'ROW' => 193,
			'LC_COLLATE' => 194,
			'FREEZE' => 195,
			'INDEX' => 196,
			'DEFINER' => 197,
			'XMLPARSE' => 198,
			'OWNED' => 202,
			'INCLUDING' => 201,
			'ADMIN' => 200,
			'CROSS' => 203,
			'INSTEAD' => 204,
			'NATIONAL' => 205,
			'EACH' => 206,
			'TRUSTED' => 207,
			'OWNER' => 209,
			'EXCLUSIVE' => 208,
			'CHARACTER' => 210,
			'STATEMENT' => 212,
			'CASCADE' => 211,
			'ASSIGNMENT' => 214,
			'MATCH' => 215,
			'MOVE' => 219,
			'CLASS' => 218,
			'DOUBLE' => 217,
			'TIME' => 220,
			'NUMERIC' => 221,
			'INLINE' => 223,
			'CURSOR' => 222,
			'EXTENSION' => 225,
			'ENCRYPTED' => 224,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'VALIDATOR' => 228,
			'XMLROOT' => 230,
			'UQUOTED_IDENTIFIER' => 231,
			'SUBSTRING' => 232,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'BETWEEN' => 235,
			'ABORT' => 236,
			'XMLATTRIBUTES' => 237,
			'VALUES' => 238,
			'TRUNCATE' => 240,
			'BEFORE' => 241,
			'SHOW' => 244,
			'ABSOLUTE' => 242,
			'IDENTIFIER' => 243,
			'GREATEST' => 245,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'WHITESPACE' => 250,
			'SECOND' => 252,
			'HOUR' => 253,
			'XMLFOREST' => 254,
			'FOLLOWING' => 256,
			'WRAPPER' => 257,
			'LISTEN' => 258,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'YEAR' => 261,
			'TEMP' => 263,
			'STANDALONE' => 262,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OPTIONS' => 266,
			'CAST' => 267,
			'YES' => 268,
			'PROCEDURAL' => 269,
			'SEQUENCE' => 270,
			'LIKE' => 271,
			'SIMPLE' => 272,
			'QUOTE' => 274,
			'IDENTITY' => 273,
			'POSITION' => 276,
			'EXECUTE' => 278,
			'DOMAIN' => 277,
			'UNKNOWN' => 279,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'SERVER' => 283,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'CONFIGURATION' => 286,
			'NAMES' => 287,
			'PARSER' => 288,
			'RENAME' => 289,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RIGHT' => 290,
			'IMPLICIT' => 294,
			'CLUSTER' => 295,
			'NATURAL' => 296,
			'XMLCONCAT' => 297,
			'PASSWORD' => 298,
			'CHAR' => 299,
			'RECHECK' => 300,
			'NEXT' => 301,
			'PREPARED' => 302,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'GRANTED' => 306,
			'BIT' => 305,
			'BEGIN' => 307,
			'NOTIFY' => 308,
			'HEADER' => 309,
			'INTERVAL' => 310,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'FUNCTIONS' => 313,
			'ISOLATION' => 314,
			'STORAGE' => 315,
			'STDIN' => 316,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'IS' => 319,
			'TRIM' => 318,
			'MAXVALUE' => 322,
			'START' => 323,
			'DOCUMENT' => 324,
			'IF' => 325,
			'SAVEPOINT' => 326,
			'ROWS' => 327,
			'LAST' => 328,
			'MINVALUE' => 329,
			'KEY' => 330,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'ACTION' => 334,
			'WRITE' => 335,
			'ROLE' => 336,
			'NOTNULL' => 337,
			'SESSION' => 338,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'NONE' => 344,
			'TABLES' => 347,
			'VALID' => 346,
			'INT' => 345,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'UNENCRYPTED' => 351,
			'OVERLAY' => 352,
			'FIRST' => 354,
			'COALESCE' => 353,
			'VERSION' => 355
		},
		GOTOS => {
			'base_type' => 216,
			'time_type' => 151,
			'expr_simple' => 280,
			'keywords_reserved_ok_for_functions_or_types' => 74,
			'base_interval_type' => 348,
			'keywords_notreserved_not_ok_for_functions_or_types' => 251,
			'normal_type' => 28,
			'interval_type' => 293,
			'literal_value' => 275,
			'identifier' => 67,
			'expr' => 423,
			'timestamp_type' => 239,
			'operator_expression' => 199,
			'cast_expression' => 107,
			'simple_type' => 213,
			'keywords_notreserved' => 255
		}
	},
	{#State 380
		ACTIONS => {
			'INPUT' => 10,
			'SYSID' => 9,
			'JOIN' => 8,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'NCHAR' => 16,
			'STRING_CONSTANT' => 17,
			'INVOKER' => 18,
			'WORK' => 19,
			'PASSING' => 20,
			'MODE' => 21,
			'INTEGER' => 22,
			'INHERITS' => 23,
			'ESCAPE' => 25,
			'VALUE' => 24,
			'DROP' => 26,
			'MONTH' => 27,
			'ENCODING' => 29,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'FULL' => 37,
			'TREAT' => 38,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'DATA' => 45,
			'DAY' => 44,
			'PARTITION' => 43,
			'RANGE' => 42,
			'REF' => 48,
			'SHARE' => 47,
			'REAL' => 46,
			'OVER' => 49,
			'LARGE' => 51,
			'CURRENT_SCHEMA' => 50,
			'DELETE' => 52,
			'NULLIF' => 53,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'REPLICA' => 58,
			'PRIVILEGES' => 59,
			'ZONE' => 60,
			'LEAST' => 61,
			'STATISTICS' => 62,
			'ISNULL' => 63,
			'CALLED' => 64,
			'USTRING_CONSTANT' => 65,
			'SECURITY' => 66,
			'INCREMENT' => 68,
			'BINARY' => 69,
			'LEVEL' => 70,
			'FORCE' => 71,
			'CONCURRENTLY' => 72,
			'XBITSTRING_CONSTANT' => 73,
			'UPDATE' => 75,
			'PRESERVE' => 76,
			'CHARACTERISTICS' => 78,
			'XMLPI' => 77,
			'VALIDATE' => 79,
			"(" => 80,
			'ESTRING_CONSTANT' => 82,
			'STRICT' => 81,
			'VARYING' => 83,
			'AUTHORIZATION' => 84,
			'REASSIGN' => 85,
			'LABEL' => 87,
			'ROLLBACK' => 86,
			'OBJECT' => 88,
			'TIMESTAMP' => 91,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 92,
			'OPERATOR_NAME' => 94,
			'NUMERIC_CONSTANT' => 93,
			'INSERT' => 95,
			'HANDLER' => 96,
			'LOCATION' => 98,
			'EXISTS' => 97,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'BOOLEAN' => 100,
			'NULLS' => 102,
			'TYPE' => 103,
			'RESET' => 104,
			'NOWAIT' => 105,
			'PRIOR' => 106,
			'OFF' => 110,
			'BIGINT' => 109,
			'XMLSERIALIZE' => 108,
			'VERBOSE' => 111,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'SETOF' => 116,
			'INNER' => 117,
			'EXTRACT' => 118,
			'REINDEX' => 119,
			'PRECISION' => 120,
			'ACCESS' => 121,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'INOUT' => 124,
			'DEALLOCATE' => 125,
			'CATALOG' => 126,
			'OUT' => 127,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'XMLEXISTS' => 133,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'LEFT' => 136,
			'PRECEDING' => 137,
			'INTEGER_CONSTANT' => 138,
			'STABLE' => 139,
			'DEC' => 140,
			'XML' => 142,
			'XMLELEMENT' => 141,
			'SCROLL' => 143,
			'TEXT' => 144,
			'ALSO' => 145,
			'FUNCTION' => 146,
			'AGGREGATE' => 148,
			'SYSTEM' => 147,
			'FLOAT' => 149,
			'ATTRIBUTE' => 150,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'OVERLAPS' => 155,
			'DEFERRED' => 157,
			'VIEW' => 156,
			'REPEATABLE' => 158,
			'ALWAYS' => 159,
			'CONSTRAINTS' => 160,
			'FORWARD' => 161,
			'NOTHING' => 162,
			'EXCLUDING' => 163,
			'DECIMAL' => 164,
			'CHECKPOINT' => 166,
			'INDEXES' => 165,
			'CACHE' => 167,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'UNLISTEN' => 170,
			'LOAD' => 171,
			'FAMILY' => 172,
			'SMALLINT' => 173,
			'ASSERTION' => 174,
			'ILIKE' => 175,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'SIMILAR' => 178,
			'STDOUT' => 180,
			'BITSTRING_CONSTANT' => 182,
			'REVOKE' => 181,
			'INHERIT' => 183,
			'OUTER' => 184,
			'EXPLAIN' => 185,
			'VARCHAR' => 187,
			'OIDS' => 186,
			'AFTER' => 188,
			'CSV' => 189,
			'DISABLE' => 190,
			'VACUUM' => 191,
			'SCHEMA' => 192,
			'ROW' => 193,
			'LC_COLLATE' => 194,
			'FREEZE' => 195,
			'INDEX' => 196,
			'DEFINER' => 197,
			'XMLPARSE' => 198,
			'OWNED' => 202,
			'INCLUDING' => 201,
			'ADMIN' => 200,
			'CROSS' => 203,
			'INSTEAD' => 204,
			'NATIONAL' => 205,
			'EACH' => 206,
			'TRUSTED' => 207,
			'OWNER' => 209,
			'EXCLUSIVE' => 208,
			'CHARACTER' => 210,
			'STATEMENT' => 212,
			'CASCADE' => 211,
			'ASSIGNMENT' => 214,
			'MATCH' => 215,
			'MOVE' => 219,
			'CLASS' => 218,
			'DOUBLE' => 217,
			'TIME' => 220,
			'NUMERIC' => 221,
			'INLINE' => 223,
			'CURSOR' => 222,
			'EXTENSION' => 225,
			'ENCRYPTED' => 224,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'VALIDATOR' => 228,
			'XMLROOT' => 230,
			'UQUOTED_IDENTIFIER' => 231,
			'SUBSTRING' => 232,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'BETWEEN' => 235,
			'ABORT' => 236,
			'XMLATTRIBUTES' => 237,
			'VALUES' => 238,
			'TRUNCATE' => 240,
			'BEFORE' => 241,
			'SHOW' => 244,
			'ABSOLUTE' => 242,
			'IDENTIFIER' => 243,
			'GREATEST' => 245,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'WHITESPACE' => 250,
			'SECOND' => 252,
			'HOUR' => 253,
			'XMLFOREST' => 254,
			'FOLLOWING' => 256,
			'WRAPPER' => 257,
			'LISTEN' => 258,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'YEAR' => 261,
			'TEMP' => 263,
			'STANDALONE' => 262,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OPTIONS' => 266,
			'CAST' => 267,
			'YES' => 268,
			'PROCEDURAL' => 269,
			'SEQUENCE' => 270,
			'LIKE' => 271,
			'SIMPLE' => 272,
			'QUOTE' => 274,
			'IDENTITY' => 273,
			'POSITION' => 276,
			'EXECUTE' => 278,
			'DOMAIN' => 277,
			'UNKNOWN' => 279,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'SERVER' => 283,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'CONFIGURATION' => 286,
			'NAMES' => 287,
			'PARSER' => 288,
			'RENAME' => 289,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RIGHT' => 290,
			'IMPLICIT' => 294,
			'CLUSTER' => 295,
			'NATURAL' => 296,
			'XMLCONCAT' => 297,
			'PASSWORD' => 298,
			'CHAR' => 299,
			'RECHECK' => 300,
			'NEXT' => 301,
			'PREPARED' => 302,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'GRANTED' => 306,
			'BIT' => 305,
			'BEGIN' => 307,
			'NOTIFY' => 308,
			'HEADER' => 309,
			'INTERVAL' => 310,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'FUNCTIONS' => 313,
			'ISOLATION' => 314,
			'STORAGE' => 315,
			'STDIN' => 316,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'IS' => 319,
			'TRIM' => 318,
			'MAXVALUE' => 322,
			'START' => 323,
			'DOCUMENT' => 324,
			'IF' => 325,
			'SAVEPOINT' => 326,
			'ROWS' => 327,
			'LAST' => 328,
			'MINVALUE' => 329,
			'KEY' => 330,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'ACTION' => 334,
			'WRITE' => 335,
			'ROLE' => 336,
			'NOTNULL' => 337,
			'SESSION' => 338,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'NONE' => 344,
			'TABLES' => 347,
			'VALID' => 346,
			'INT' => 345,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'UNENCRYPTED' => 351,
			'OVERLAY' => 352,
			'FIRST' => 354,
			'COALESCE' => 353,
			'VERSION' => 355
		},
		GOTOS => {
			'base_type' => 216,
			'time_type' => 151,
			'expr_simple' => 280,
			'keywords_reserved_ok_for_functions_or_types' => 74,
			'base_interval_type' => 348,
			'keywords_notreserved_not_ok_for_functions_or_types' => 251,
			'normal_type' => 28,
			'interval_type' => 293,
			'literal_value' => 275,
			'identifier' => 67,
			'expr' => 424,
			'timestamp_type' => 239,
			'operator_expression' => 199,
			'cast_expression' => 107,
			'simple_type' => 213,
			'keywords_notreserved' => 255
		}
	},
	{#State 381
		ACTIONS => {
			'INTEGER_CONSTANT' => 425
		}
	},
	{#State 382
		DEFAULT => -59
	},
	{#State 383
		ACTIONS => {
			'INTEGER_CONSTANT' => 426
		}
	},
	{#State 384
		ACTIONS => {
			'TIME' => 427
		}
	},
	{#State 385
		ACTIONS => {
			'TIME' => 428
		}
	},
	{#State 386
		ACTIONS => {
			'INTEGER_CONSTANT' => 429
		}
	},
	{#State 387
		ACTIONS => {
			'INPUT' => 10,
			'SYSID' => 9,
			'JOIN' => 8,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'NCHAR' => 16,
			'STRING_CONSTANT' => 17,
			'INVOKER' => 18,
			'WORK' => 19,
			'PASSING' => 20,
			'MODE' => 21,
			'INTEGER' => 22,
			'INHERITS' => 23,
			'ESCAPE' => 25,
			'VALUE' => 24,
			'DROP' => 26,
			'MONTH' => 27,
			'ENCODING' => 29,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'FULL' => 37,
			'TREAT' => 38,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'DATA' => 45,
			'DAY' => 44,
			'PARTITION' => 43,
			'RANGE' => 42,
			'REF' => 48,
			'SHARE' => 47,
			'REAL' => 46,
			'OVER' => 49,
			'LARGE' => 51,
			'CURRENT_SCHEMA' => 50,
			'DELETE' => 52,
			'NULLIF' => 53,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'REPLICA' => 58,
			'PRIVILEGES' => 59,
			'ZONE' => 60,
			'LEAST' => 61,
			'STATISTICS' => 62,
			'ISNULL' => 63,
			'CALLED' => 64,
			'USTRING_CONSTANT' => 65,
			'SECURITY' => 66,
			'INCREMENT' => 68,
			'BINARY' => 69,
			'LEVEL' => 70,
			'FORCE' => 71,
			'CONCURRENTLY' => 72,
			'XBITSTRING_CONSTANT' => 73,
			'UPDATE' => 75,
			'PRESERVE' => 76,
			'CHARACTERISTICS' => 78,
			'XMLPI' => 77,
			'VALIDATE' => 79,
			"(" => 80,
			'ESTRING_CONSTANT' => 82,
			'STRICT' => 81,
			'VARYING' => 83,
			'AUTHORIZATION' => 84,
			'REASSIGN' => 85,
			'LABEL' => 87,
			'ROLLBACK' => 86,
			'OBJECT' => 88,
			'TIMESTAMP' => 91,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 92,
			'OPERATOR_NAME' => 94,
			'NUMERIC_CONSTANT' => 93,
			'INSERT' => 95,
			'HANDLER' => 96,
			'LOCATION' => 98,
			'EXISTS' => 97,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'BOOLEAN' => 100,
			'NULLS' => 102,
			'TYPE' => 103,
			'RESET' => 104,
			'NOWAIT' => 105,
			'PRIOR' => 106,
			'OFF' => 110,
			'BIGINT' => 109,
			'XMLSERIALIZE' => 108,
			'VERBOSE' => 111,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'SETOF' => 116,
			'INNER' => 117,
			'EXTRACT' => 118,
			'REINDEX' => 119,
			'PRECISION' => 120,
			'ACCESS' => 121,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'INOUT' => 124,
			'DEALLOCATE' => 125,
			'CATALOG' => 126,
			'OUT' => 127,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'XMLEXISTS' => 133,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'LEFT' => 136,
			'PRECEDING' => 137,
			'INTEGER_CONSTANT' => 138,
			'STABLE' => 139,
			'DEC' => 140,
			'XML' => 142,
			'XMLELEMENT' => 141,
			'SCROLL' => 143,
			'TEXT' => 144,
			'ALSO' => 145,
			'FUNCTION' => 146,
			'AGGREGATE' => 148,
			'SYSTEM' => 147,
			'FLOAT' => 149,
			'ATTRIBUTE' => 150,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'OVERLAPS' => 155,
			'DEFERRED' => 157,
			'VIEW' => 156,
			'REPEATABLE' => 158,
			'ALWAYS' => 159,
			'CONSTRAINTS' => 160,
			'FORWARD' => 161,
			'NOTHING' => 162,
			'EXCLUDING' => 163,
			'DECIMAL' => 164,
			'CHECKPOINT' => 166,
			'INDEXES' => 165,
			'CACHE' => 167,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'UNLISTEN' => 170,
			'LOAD' => 171,
			'FAMILY' => 172,
			'SMALLINT' => 173,
			'ASSERTION' => 174,
			'ILIKE' => 175,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'SIMILAR' => 178,
			'STDOUT' => 180,
			'BITSTRING_CONSTANT' => 182,
			'REVOKE' => 181,
			'INHERIT' => 183,
			'OUTER' => 184,
			'EXPLAIN' => 185,
			'VARCHAR' => 187,
			'OIDS' => 186,
			'AFTER' => 188,
			'CSV' => 189,
			'DISABLE' => 190,
			'VACUUM' => 191,
			'SCHEMA' => 192,
			'ROW' => 193,
			'LC_COLLATE' => 194,
			'FREEZE' => 195,
			'INDEX' => 196,
			'DEFINER' => 197,
			'XMLPARSE' => 198,
			'OWNED' => 202,
			'INCLUDING' => 201,
			'ADMIN' => 200,
			'CROSS' => 203,
			'INSTEAD' => 204,
			'NATIONAL' => 205,
			'EACH' => 206,
			'TRUSTED' => 207,
			'OWNER' => 209,
			'EXCLUSIVE' => 208,
			'CHARACTER' => 210,
			'STATEMENT' => 212,
			'CASCADE' => 211,
			'ASSIGNMENT' => 214,
			'MATCH' => 215,
			'MOVE' => 219,
			'CLASS' => 218,
			'DOUBLE' => 217,
			'TIME' => 220,
			'NUMERIC' => 221,
			'INLINE' => 223,
			'CURSOR' => 222,
			'EXTENSION' => 225,
			'ENCRYPTED' => 224,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'VALIDATOR' => 228,
			'XMLROOT' => 230,
			'UQUOTED_IDENTIFIER' => 231,
			'SUBSTRING' => 232,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'BETWEEN' => 235,
			'ABORT' => 236,
			'XMLATTRIBUTES' => 237,
			'VALUES' => 238,
			'TRUNCATE' => 240,
			'BEFORE' => 241,
			'SHOW' => 244,
			'ABSOLUTE' => 242,
			'IDENTIFIER' => 243,
			'GREATEST' => 245,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'WHITESPACE' => 250,
			'SECOND' => 252,
			'HOUR' => 253,
			'XMLFOREST' => 254,
			'FOLLOWING' => 256,
			'WRAPPER' => 257,
			'LISTEN' => 258,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'YEAR' => 261,
			'TEMP' => 263,
			'STANDALONE' => 262,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OPTIONS' => 266,
			'CAST' => 267,
			'YES' => 268,
			'PROCEDURAL' => 269,
			'SEQUENCE' => 270,
			'LIKE' => 271,
			'SIMPLE' => 272,
			'QUOTE' => 274,
			'IDENTITY' => 273,
			'POSITION' => 276,
			'EXECUTE' => 278,
			'DOMAIN' => 277,
			'UNKNOWN' => 279,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'SERVER' => 283,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'CONFIGURATION' => 286,
			'NAMES' => 287,
			'PARSER' => 288,
			'RENAME' => 289,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RIGHT' => 290,
			'IMPLICIT' => 294,
			'CLUSTER' => 295,
			'NATURAL' => 296,
			'XMLCONCAT' => 297,
			'PASSWORD' => 298,
			'CHAR' => 299,
			'RECHECK' => 300,
			'NEXT' => 301,
			'PREPARED' => 302,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'GRANTED' => 306,
			'BIT' => 305,
			'BEGIN' => 307,
			'NOTIFY' => 308,
			'HEADER' => 309,
			'INTERVAL' => 310,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'FUNCTIONS' => 313,
			'ISOLATION' => 314,
			'STORAGE' => 315,
			'STDIN' => 316,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'IS' => 319,
			'TRIM' => 318,
			'MAXVALUE' => 322,
			'START' => 323,
			'DOCUMENT' => 324,
			'IF' => 325,
			'SAVEPOINT' => 326,
			'ROWS' => 327,
			'LAST' => 328,
			'MINVALUE' => 329,
			'KEY' => 330,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'ACTION' => 334,
			'WRITE' => 335,
			'ROLE' => 336,
			'NOTNULL' => 337,
			'SESSION' => 338,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'NONE' => 344,
			'TABLES' => 347,
			'VALID' => 346,
			'INT' => 345,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'UNENCRYPTED' => 351,
			'OVERLAY' => 352,
			'FIRST' => 354,
			'COALESCE' => 353,
			'VERSION' => 355
		},
		GOTOS => {
			'base_type' => 216,
			'time_type' => 151,
			'expr_simple' => 280,
			'keywords_reserved_ok_for_functions_or_types' => 74,
			'base_interval_type' => 348,
			'keywords_notreserved_not_ok_for_functions_or_types' => 251,
			'normal_type' => 28,
			'interval_type' => 293,
			'literal_value' => 275,
			'identifier' => 67,
			'expr' => 430,
			'timestamp_type' => 239,
			'operator_expression' => 199,
			'cast_expression' => 107,
			'simple_type' => 213,
			'keywords_notreserved' => 255
		}
	},
	{#State 388
		ACTIONS => {
			'INTEGER_CONSTANT' => 431
		}
	},
	{#State 389
		DEFAULT => -72
	},
	{#State 390
		ACTIONS => {
			'TO' => 432
		},
		DEFAULT => -75
	},
	{#State 391
		ACTIONS => {
			'TO' => 433
		},
		DEFAULT => -73
	},
	{#State 392
		ACTIONS => {
			"(" => 434
		},
		DEFAULT => -76
	},
	{#State 393
		ACTIONS => {
			'TO' => 435
		},
		DEFAULT => -74
	},
	{#State 394
		ACTIONS => {
			'TO' => 436
		},
		DEFAULT => -71
	},
	{#State 395
		DEFAULT => -8
	},
	{#State 396
		DEFAULT => -56
	},
	{#State 397
		DEFAULT => -393
	},
	{#State 398
		DEFAULT => -368
	},
	{#State 399
		DEFAULT => -397
	},
	{#State 400
		DEFAULT => -55
	},
	{#State 401
		DEFAULT => -392
	},
	{#State 402
		DEFAULT => -382
	},
	{#State 403
		DEFAULT => -376
	},
	{#State 404
		DEFAULT => -33
	},
	{#State 405
		ACTIONS => {
			")" => 437
		}
	},
	{#State 406
		ACTIONS => {
			'ZONE' => 438
		}
	},
	{#State 407
		ACTIONS => {
			'ZONE' => 439
		}
	},
	{#State 408
		ACTIONS => {
			"," => 440,
			")" => 441
		}
	},
	{#State 409
		ACTIONS => {
			"::" => 367,
			"%" => 378,
			"^" => 368,
			"*" => 379,
			"/" => 370
		},
		DEFAULT => -17
	},
	{#State 410
		DEFAULT => -29
	},
	{#State 411
		ACTIONS => {
			"::" => 367
		},
		DEFAULT => -25
	},
	{#State 412
		ACTIONS => {
			"-" => 373,
			"::" => 367,
			"+" => 366,
			"%" => 378,
			"^" => 368,
			"*" => 379,
			"/" => 370
		},
		DEFAULT => -28
	},
	{#State 413
		ACTIONS => {
			"::" => 367,
			"^" => 368
		},
		DEFAULT => -21
	},
	{#State 414
		ACTIONS => {
			"-" => 373,
			"::" => 367,
			"+" => 366,
			"%" => 378,
			'BETWEEN' => 375,
			"^" => 368,
			"*" => 379,
			'OPERATOR_NAME' => 369,
			"/" => 370
		},
		DEFAULT => -27
	},
	{#State 415
		DEFAULT => -10
	},
	{#State 416
		DEFAULT => -153
	},
	{#State 417
		ACTIONS => {
			"::" => 367,
			"%" => 378,
			"^" => 368,
			"*" => 379,
			"/" => 370
		},
		DEFAULT => -18
	},
	{#State 418
		ACTIONS => {
			"-" => 373,
			"::" => 367,
			"+" => 366,
			'ILIKE' => 371,
			"%" => 378,
			'BETWEEN' => 375,
			"^" => 368,
			"*" => 379,
			'OPERATOR_NAME' => 369,
			'LIKE' => 376,
			"/" => 370
		},
		DEFAULT => -22
	},
	{#State 419
		ACTIONS => {
			"-" => 373,
			'LIKE' => 376,
			"::" => 367,
			"<" => 374,
			"+" => 366,
			'ILIKE' => 371,
			"%" => 378,
			"/" => 370,
			"=" => 377,
			'AND' => 442,
			'BETWEEN' => 375,
			"^" => 368,
			"*" => 379,
			'OPERATOR_NAME' => 369,
			">" => 380
		}
	},
	{#State 420
		ACTIONS => {
			"-" => 373,
			"::" => 367,
			"+" => 366,
			"%" => 378,
			'BETWEEN' => 375,
			"^" => 368,
			"*" => 379,
			'OPERATOR_NAME' => 369,
			"/" => 370
		},
		DEFAULT => -26
	},
	{#State 421
		ACTIONS => {
			"-" => 373,
			"::" => 367,
			"<" => 374,
			"+" => 366,
			'ILIKE' => 371,
			"%" => 378,
			'BETWEEN' => 375,
			"^" => 368,
			"*" => 379,
			'OPERATOR_NAME' => 369,
			'LIKE' => 376,
			"/" => 370,
			"=" => 377,
			">" => 380
		},
		DEFAULT => -24
	},
	{#State 422
		ACTIONS => {
			"::" => 367,
			"^" => 368
		},
		DEFAULT => -20
	},
	{#State 423
		ACTIONS => {
			"::" => 367,
			"^" => 368
		},
		DEFAULT => -19
	},
	{#State 424
		ACTIONS => {
			"-" => 373,
			"::" => 367,
			"+" => 366,
			'ILIKE' => 371,
			"%" => 378,
			'BETWEEN' => 375,
			"^" => 368,
			"*" => 379,
			'OPERATOR_NAME' => 369,
			'LIKE' => 376,
			"/" => 370
		},
		DEFAULT => -23
	},
	{#State 425
		ACTIONS => {
			")" => 443
		}
	},
	{#State 426
		ACTIONS => {
			")" => 444
		}
	},
	{#State 427
		ACTIONS => {
			'ZONE' => 445
		}
	},
	{#State 428
		ACTIONS => {
			'ZONE' => 446
		}
	},
	{#State 429
		ACTIONS => {
			"," => 447,
			")" => 448
		}
	},
	{#State 430
		ACTIONS => {
			"-" => 373,
			'LIKE' => 376,
			"::" => 367,
			"<" => 374,
			"+" => 366,
			'ILIKE' => 371,
			"%" => 378,
			"/" => 370,
			"=" => 377,
			'BETWEEN' => 375,
			"^" => 368,
			"*" => 379,
			'OPERATOR_NAME' => 369,
			'AS' => 449,
			">" => 380
		}
	},
	{#State 431
		ACTIONS => {
			")" => 450
		}
	},
	{#State 432
		ACTIONS => {
			'SECOND' => 451
		}
	},
	{#State 433
		ACTIONS => {
			'MINUTE' => 452,
			'HOUR' => 454,
			'SECOND' => 453
		}
	},
	{#State 434
		ACTIONS => {
			'INTEGER_CONSTANT' => 455
		}
	},
	{#State 435
		ACTIONS => {
			'MINUTE' => 456,
			'SECOND' => 457
		}
	},
	{#State 436
		ACTIONS => {
			'MONTH' => 458
		}
	},
	{#State 437
		ACTIONS => {
			'WITHOUT' => 460,
			'WITH' => 459
		},
		DEFAULT => -62
	},
	{#State 438
		DEFAULT => -60
	},
	{#State 439
		DEFAULT => -61
	},
	{#State 440
		ACTIONS => {
			'INTEGER_CONSTANT' => 461
		}
	},
	{#State 441
		DEFAULT => -48
	},
	{#State 442
		ACTIONS => {
			'INPUT' => 10,
			'SYSID' => 9,
			'JOIN' => 8,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'NCHAR' => 16,
			'STRING_CONSTANT' => 17,
			'INVOKER' => 18,
			'WORK' => 19,
			'PASSING' => 20,
			'MODE' => 21,
			'INTEGER' => 22,
			'INHERITS' => 23,
			'ESCAPE' => 25,
			'VALUE' => 24,
			'DROP' => 26,
			'MONTH' => 27,
			'ENCODING' => 29,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'FULL' => 37,
			'TREAT' => 38,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'DATA' => 45,
			'DAY' => 44,
			'PARTITION' => 43,
			'RANGE' => 42,
			'REF' => 48,
			'SHARE' => 47,
			'REAL' => 46,
			'OVER' => 49,
			'LARGE' => 51,
			'CURRENT_SCHEMA' => 50,
			'DELETE' => 52,
			'NULLIF' => 53,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'REPLICA' => 58,
			'PRIVILEGES' => 59,
			'ZONE' => 60,
			'LEAST' => 61,
			'STATISTICS' => 62,
			'ISNULL' => 63,
			'CALLED' => 64,
			'USTRING_CONSTANT' => 65,
			'SECURITY' => 66,
			'INCREMENT' => 68,
			'BINARY' => 69,
			'LEVEL' => 70,
			'FORCE' => 71,
			'CONCURRENTLY' => 72,
			'XBITSTRING_CONSTANT' => 73,
			'UPDATE' => 75,
			'PRESERVE' => 76,
			'CHARACTERISTICS' => 78,
			'XMLPI' => 77,
			'VALIDATE' => 79,
			"(" => 80,
			'ESTRING_CONSTANT' => 82,
			'STRICT' => 81,
			'VARYING' => 83,
			'AUTHORIZATION' => 84,
			'REASSIGN' => 85,
			'LABEL' => 87,
			'ROLLBACK' => 86,
			'OBJECT' => 88,
			'TIMESTAMP' => 91,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 92,
			'OPERATOR_NAME' => 94,
			'NUMERIC_CONSTANT' => 93,
			'INSERT' => 95,
			'HANDLER' => 96,
			'LOCATION' => 98,
			'EXISTS' => 97,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'BOOLEAN' => 100,
			'NULLS' => 102,
			'TYPE' => 103,
			'RESET' => 104,
			'NOWAIT' => 105,
			'PRIOR' => 106,
			'OFF' => 110,
			'BIGINT' => 109,
			'XMLSERIALIZE' => 108,
			'VERBOSE' => 111,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'SETOF' => 116,
			'INNER' => 117,
			'EXTRACT' => 118,
			'REINDEX' => 119,
			'PRECISION' => 120,
			'ACCESS' => 121,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'INOUT' => 124,
			'DEALLOCATE' => 125,
			'CATALOG' => 126,
			'OUT' => 127,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'XMLEXISTS' => 133,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'LEFT' => 136,
			'PRECEDING' => 137,
			'INTEGER_CONSTANT' => 138,
			'STABLE' => 139,
			'DEC' => 140,
			'XML' => 142,
			'XMLELEMENT' => 141,
			'SCROLL' => 143,
			'TEXT' => 144,
			'ALSO' => 145,
			'FUNCTION' => 146,
			'AGGREGATE' => 148,
			'SYSTEM' => 147,
			'FLOAT' => 149,
			'ATTRIBUTE' => 150,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'OVERLAPS' => 155,
			'DEFERRED' => 157,
			'VIEW' => 156,
			'REPEATABLE' => 158,
			'ALWAYS' => 159,
			'CONSTRAINTS' => 160,
			'FORWARD' => 161,
			'NOTHING' => 162,
			'EXCLUDING' => 163,
			'DECIMAL' => 164,
			'CHECKPOINT' => 166,
			'INDEXES' => 165,
			'CACHE' => 167,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'UNLISTEN' => 170,
			'LOAD' => 171,
			'FAMILY' => 172,
			'SMALLINT' => 173,
			'ASSERTION' => 174,
			'ILIKE' => 175,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'SIMILAR' => 178,
			'STDOUT' => 180,
			'BITSTRING_CONSTANT' => 182,
			'REVOKE' => 181,
			'INHERIT' => 183,
			'OUTER' => 184,
			'EXPLAIN' => 185,
			'VARCHAR' => 187,
			'OIDS' => 186,
			'AFTER' => 188,
			'CSV' => 189,
			'DISABLE' => 190,
			'VACUUM' => 191,
			'SCHEMA' => 192,
			'ROW' => 193,
			'LC_COLLATE' => 194,
			'FREEZE' => 195,
			'INDEX' => 196,
			'DEFINER' => 197,
			'XMLPARSE' => 198,
			'OWNED' => 202,
			'INCLUDING' => 201,
			'ADMIN' => 200,
			'CROSS' => 203,
			'INSTEAD' => 204,
			'NATIONAL' => 205,
			'EACH' => 206,
			'TRUSTED' => 207,
			'OWNER' => 209,
			'EXCLUSIVE' => 208,
			'CHARACTER' => 210,
			'STATEMENT' => 212,
			'CASCADE' => 211,
			'ASSIGNMENT' => 214,
			'MATCH' => 215,
			'MOVE' => 219,
			'CLASS' => 218,
			'DOUBLE' => 217,
			'TIME' => 220,
			'NUMERIC' => 221,
			'INLINE' => 223,
			'CURSOR' => 222,
			'EXTENSION' => 225,
			'ENCRYPTED' => 224,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'VALIDATOR' => 228,
			'XMLROOT' => 230,
			'UQUOTED_IDENTIFIER' => 231,
			'SUBSTRING' => 232,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'BETWEEN' => 235,
			'ABORT' => 236,
			'XMLATTRIBUTES' => 237,
			'VALUES' => 238,
			'TRUNCATE' => 240,
			'BEFORE' => 241,
			'SHOW' => 244,
			'ABSOLUTE' => 242,
			'IDENTIFIER' => 243,
			'GREATEST' => 245,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'WHITESPACE' => 250,
			'SECOND' => 252,
			'HOUR' => 253,
			'XMLFOREST' => 254,
			'FOLLOWING' => 256,
			'WRAPPER' => 257,
			'LISTEN' => 258,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'YEAR' => 261,
			'TEMP' => 263,
			'STANDALONE' => 262,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OPTIONS' => 266,
			'CAST' => 267,
			'YES' => 268,
			'PROCEDURAL' => 269,
			'SEQUENCE' => 270,
			'LIKE' => 271,
			'SIMPLE' => 272,
			'QUOTE' => 274,
			'IDENTITY' => 273,
			'POSITION' => 276,
			'EXECUTE' => 278,
			'DOMAIN' => 277,
			'UNKNOWN' => 279,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'SERVER' => 283,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'CONFIGURATION' => 286,
			'NAMES' => 287,
			'PARSER' => 288,
			'RENAME' => 289,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RIGHT' => 290,
			'IMPLICIT' => 294,
			'CLUSTER' => 295,
			'NATURAL' => 296,
			'XMLCONCAT' => 297,
			'PASSWORD' => 298,
			'CHAR' => 299,
			'RECHECK' => 300,
			'NEXT' => 301,
			'PREPARED' => 302,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'GRANTED' => 306,
			'BIT' => 305,
			'BEGIN' => 307,
			'NOTIFY' => 308,
			'HEADER' => 309,
			'INTERVAL' => 310,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'FUNCTIONS' => 313,
			'ISOLATION' => 314,
			'STORAGE' => 315,
			'STDIN' => 316,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'IS' => 319,
			'TRIM' => 318,
			'MAXVALUE' => 322,
			'START' => 323,
			'DOCUMENT' => 324,
			'IF' => 325,
			'SAVEPOINT' => 326,
			'ROWS' => 327,
			'LAST' => 328,
			'MINVALUE' => 329,
			'KEY' => 330,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'ACTION' => 334,
			'WRITE' => 335,
			'ROLE' => 336,
			'NOTNULL' => 337,
			'SESSION' => 338,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'NONE' => 344,
			'TABLES' => 347,
			'VALID' => 346,
			'INT' => 345,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'UNENCRYPTED' => 351,
			'OVERLAY' => 352,
			'FIRST' => 354,
			'COALESCE' => 353,
			'VERSION' => 355
		},
		GOTOS => {
			'base_type' => 216,
			'time_type' => 151,
			'expr_simple' => 280,
			'keywords_reserved_ok_for_functions_or_types' => 74,
			'base_interval_type' => 348,
			'keywords_notreserved_not_ok_for_functions_or_types' => 251,
			'normal_type' => 28,
			'interval_type' => 293,
			'literal_value' => 275,
			'identifier' => 67,
			'expr' => 462,
			'timestamp_type' => 239,
			'operator_expression' => 199,
			'cast_expression' => 107,
			'simple_type' => 213,
			'keywords_notreserved' => 255
		}
	},
	{#State 443
		DEFAULT => -50
	},
	{#State 444
		ACTIONS => {
			'WITHOUT' => 464,
			'WITH' => 463
		},
		DEFAULT => -67
	},
	{#State 445
		DEFAULT => -65
	},
	{#State 446
		DEFAULT => -66
	},
	{#State 447
		ACTIONS => {
			'INTEGER_CONSTANT' => 465
		}
	},
	{#State 448
		DEFAULT => -46
	},
	{#State 449
		ACTIONS => {
			'INPUT' => 10,
			'SYSID' => 9,
			'JOIN' => 8,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'NCHAR' => 16,
			'INVOKER' => 18,
			'WORK' => 19,
			'PASSING' => 20,
			'MODE' => 21,
			'INTEGER' => 22,
			'INHERITS' => 23,
			'ESCAPE' => 25,
			'VALUE' => 24,
			'DROP' => 26,
			'MONTH' => 27,
			'ENCODING' => 29,
			'TEMPLATE' => 30,
			'DICTIONARY' => 31,
			'SEARCH' => 32,
			'PREPARE' => 33,
			'LOCK' => 34,
			'DEFAULTS' => 35,
			'FULL' => 37,
			'TREAT' => 38,
			'BY' => 39,
			'NO' => 40,
			'MINUTE' => 41,
			'DATA' => 45,
			'DAY' => 44,
			'PARTITION' => 43,
			'RANGE' => 42,
			'REF' => 48,
			'SHARE' => 47,
			'REAL' => 46,
			'OVER' => 49,
			'LARGE' => 51,
			'CURRENT_SCHEMA' => 50,
			'DELETE' => 52,
			'NULLIF' => 53,
			'CONNECTION' => 54,
			'BACKWARD' => 56,
			'CLOSE' => 55,
			'COST' => 57,
			'REPLICA' => 58,
			'PRIVILEGES' => 59,
			'ZONE' => 60,
			'LEAST' => 61,
			'STATISTICS' => 62,
			'ISNULL' => 63,
			'CALLED' => 64,
			'SECURITY' => 66,
			'INCREMENT' => 68,
			'BINARY' => 69,
			'LEVEL' => 70,
			'FORCE' => 71,
			'CONCURRENTLY' => 72,
			'UPDATE' => 75,
			'PRESERVE' => 76,
			'XMLPI' => 77,
			'CHARACTERISTICS' => 78,
			'VALIDATE' => 79,
			'STRICT' => 81,
			'VARYING' => 83,
			'AUTHORIZATION' => 84,
			'REASSIGN' => 85,
			'LABEL' => 87,
			'ROLLBACK' => 86,
			'OBJECT' => 88,
			'TIMESTAMP' => 91,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 92,
			'INSERT' => 95,
			'HANDLER' => 96,
			'LOCATION' => 98,
			'EXISTS' => 97,
			'IMMUTABLE' => 99,
			'RELEASE' => 101,
			'BOOLEAN' => 100,
			'NULLS' => 102,
			'TYPE' => 103,
			'RESET' => 104,
			'NOWAIT' => 105,
			'PRIOR' => 106,
			'OFF' => 110,
			'BIGINT' => 109,
			'XMLSERIALIZE' => 108,
			'VERBOSE' => 111,
			'SET' => 112,
			'IMMEDIATE' => 113,
			'COMMENT' => 114,
			'DELIMITER' => 115,
			'SETOF' => 116,
			'INNER' => 117,
			'EXTRACT' => 118,
			'REINDEX' => 119,
			'PRECISION' => 120,
			'ACCESS' => 121,
			'OPTION' => 122,
			'COMMENTS' => 123,
			'INOUT' => 124,
			'DEALLOCATE' => 125,
			'CATALOG' => 126,
			'OUT' => 127,
			'RESTART' => 128,
			'MAPPING' => 129,
			'OF' => 130,
			'UNLOGGED' => 131,
			'CONTINUE' => 132,
			'XMLEXISTS' => 133,
			'UNBOUNDED' => 134,
			'READ' => 135,
			'LEFT' => 136,
			'PRECEDING' => 137,
			'STABLE' => 139,
			'DEC' => 140,
			'XMLELEMENT' => 141,
			'XML' => 142,
			'SCROLL' => 143,
			'TEXT' => 144,
			'FUNCTION' => 146,
			'ALSO' => 145,
			'SYSTEM' => 147,
			'AGGREGATE' => 148,
			'FLOAT' => 149,
			'ATTRIBUTE' => 150,
			'ADD' => 152,
			'STRIP' => 153,
			'TABLESPACE' => 154,
			'OVERLAPS' => 155,
			'DEFERRED' => 157,
			'VIEW' => 156,
			'REPEATABLE' => 158,
			'ALWAYS' => 159,
			'CONSTRAINTS' => 160,
			'FORWARD' => 161,
			'NOTHING' => 162,
			'EXCLUDING' => 163,
			'DECIMAL' => 164,
			'CHECKPOINT' => 166,
			'INDEXES' => 165,
			'CACHE' => 167,
			'COMMIT' => 168,
			'DECLARE' => 169,
			'UNLISTEN' => 170,
			'LOAD' => 171,
			'FAMILY' => 172,
			'SMALLINT' => 173,
			'ASSERTION' => 174,
			'ILIKE' => 175,
			'GLOBAL' => 176,
			'EXTERNAL' => 177,
			'SIMILAR' => 178,
			'STDOUT' => 180,
			'REVOKE' => 181,
			'INHERIT' => 183,
			'OUTER' => 184,
			'EXPLAIN' => 185,
			'VARCHAR' => 187,
			'OIDS' => 186,
			'AFTER' => 188,
			'CSV' => 189,
			'DISABLE' => 190,
			'VACUUM' => 191,
			'SCHEMA' => 192,
			'ROW' => 193,
			'LC_COLLATE' => 194,
			'FREEZE' => 195,
			'INDEX' => 196,
			'DEFINER' => 197,
			'XMLPARSE' => 198,
			'OWNED' => 202,
			'INCLUDING' => 201,
			'ADMIN' => 200,
			'CROSS' => 203,
			'INSTEAD' => 204,
			'NATIONAL' => 205,
			'EACH' => 206,
			'TRUSTED' => 207,
			'OWNER' => 209,
			'EXCLUSIVE' => 208,
			'CHARACTER' => 210,
			'STATEMENT' => 212,
			'CASCADE' => 211,
			'ASSIGNMENT' => 214,
			'MATCH' => 215,
			'MOVE' => 219,
			'CLASS' => 218,
			'DOUBLE' => 217,
			'TIME' => 220,
			'NUMERIC' => 221,
			'INLINE' => 223,
			'CURSOR' => 222,
			'EXTENSION' => 225,
			'ENCRYPTED' => 224,
			'CHAIN' => 226,
			'RECURSIVE' => 227,
			'VALIDATOR' => 228,
			'XMLROOT' => 230,
			'UQUOTED_IDENTIFIER' => 231,
			'SUBSTRING' => 232,
			'CASCADED' => 233,
			'DISCARD' => 234,
			'BETWEEN' => 235,
			'ABORT' => 236,
			'XMLATTRIBUTES' => 237,
			'VALUES' => 238,
			'TRUNCATE' => 240,
			'BEFORE' => 241,
			'SHOW' => 244,
			'ABSOLUTE' => 242,
			'IDENTIFIER' => 243,
			'GREATEST' => 245,
			'PLANS' => 246,
			'PARTIAL' => 247,
			'SEQUENCES' => 248,
			'EXCLUDE' => 249,
			'WHITESPACE' => 250,
			'SECOND' => 252,
			'HOUR' => 253,
			'XMLFOREST' => 254,
			'FOLLOWING' => 256,
			'WRAPPER' => 257,
			'LISTEN' => 258,
			'VOLATILE' => 259,
			'LANGUAGE' => 260,
			'YEAR' => 261,
			'TEMP' => 263,
			'STANDALONE' => 262,
			'COPY' => 264,
			'WITHOUT' => 265,
			'OPTIONS' => 266,
			'YES' => 268,
			'PROCEDURAL' => 269,
			'SEQUENCE' => 270,
			'LIKE' => 271,
			'SIMPLE' => 272,
			'QUOTE' => 274,
			'IDENTITY' => 273,
			'POSITION' => 276,
			'EXECUTE' => 278,
			'DOMAIN' => 277,
			'UNKNOWN' => 279,
			'CONTENT' => 281,
			'QUOTED_IDENTIFIER' => 282,
			'SERVER' => 283,
			'RELATIVE' => 284,
			'TRANSACTION' => 285,
			'NAMES' => 287,
			'CONFIGURATION' => 286,
			'RENAME' => 289,
			'PARSER' => 288,
			'ALTER' => 292,
			'CURRENT' => 291,
			'RIGHT' => 290,
			'IMPLICIT' => 294,
			'CLUSTER' => 295,
			'NATURAL' => 296,
			'XMLCONCAT' => 297,
			'PASSWORD' => 298,
			'CHAR' => 299,
			'RECHECK' => 300,
			'NEXT' => 301,
			'PREPARED' => 302,
			'TEMPORARY' => 303,
			'COMMITTED' => 304,
			'GRANTED' => 306,
			'BIT' => 305,
			'BEGIN' => 307,
			'NOTIFY' => 308,
			'HEADER' => 309,
			'INTERVAL' => 310,
			'LC_CTYPE' => 311,
			'NAME' => 312,
			'FUNCTIONS' => 313,
			'ISOLATION' => 314,
			'STORAGE' => 315,
			'STDIN' => 316,
			'RESTRICT' => 317,
			'CYCLE' => 321,
			'UNCOMMITTED' => 320,
			'IS' => 319,
			'TRIM' => 318,
			'MAXVALUE' => 322,
			'START' => 323,
			'DOCUMENT' => 324,
			'IF' => 325,
			'SAVEPOINT' => 326,
			'ROWS' => 327,
			'LAST' => 328,
			'MINVALUE' => 329,
			'KEY' => 330,
			'OPERATOR' => 332,
			'UNTIL' => 331,
			'HOLD' => 333,
			'ACTION' => 334,
			'WRITE' => 335,
			'ROLE' => 336,
			'NOTNULL' => 337,
			'SESSION' => 338,
			'CONVERSION' => 339,
			'DATABASE' => 341,
			'ENUM' => 340,
			'ENABLE' => 342,
			'LOCAL' => 343,
			'NONE' => 344,
			'TABLES' => 347,
			'VALID' => 346,
			'INT' => 345,
			'TRIGGER' => 349,
			'COLLATION' => 350,
			'UNENCRYPTED' => 351,
			'OVERLAY' => 352,
			'FIRST' => 354,
			'COALESCE' => 353,
			'VERSION' => 355
		},
		GOTOS => {
			'base_type' => 216,
			'time_type' => 151,
			'keywords_reserved_ok_for_functions_or_types' => 74,
			'base_interval_type' => 348,
			'keywords_notreserved_not_ok_for_functions_or_types' => 251,
			'normal_type' => 466,
			'interval_type' => 293,
			'identifier' => 67,
			'timestamp_type' => 239,
			'simple_type' => 213,
			'keywords_notreserved' => 255
		}
	},
	{#State 450
		ACTIONS => {
			'MONTH' => -89,
			'SECOND' => -89,
			'HOUR' => -89,
			'YEAR' => -89,
			'MINUTE' => -89,
			'DAY' => -89
		},
		DEFAULT => -70
	},
	{#State 451
		ACTIONS => {
			"(" => 467
		},
		DEFAULT => -83
	},
	{#State 452
		DEFAULT => -79
	},
	{#State 453
		ACTIONS => {
			"(" => 468
		},
		DEFAULT => -80
	},
	{#State 454
		DEFAULT => -78
	},
	{#State 455
		ACTIONS => {
			")" => 469
		}
	},
	{#State 456
		DEFAULT => -81
	},
	{#State 457
		ACTIONS => {
			"(" => 470
		},
		DEFAULT => -82
	},
	{#State 458
		DEFAULT => -77
	},
	{#State 459
		ACTIONS => {
			'TIME' => 471
		}
	},
	{#State 460
		ACTIONS => {
			'TIME' => 472
		}
	},
	{#State 461
		ACTIONS => {
			")" => 473
		}
	},
	{#State 462
		ACTIONS => {
			"-" => 373,
			"::" => 367,
			"<" => 374,
			"+" => 366,
			'ILIKE' => 371,
			"%" => 378,
			'BETWEEN' => 375,
			"^" => 368,
			"*" => 379,
			'OPERATOR_NAME' => 369,
			'LIKE' => 376,
			"/" => 370,
			"=" => 377,
			">" => 380
		},
		DEFAULT => -14
	},
	{#State 463
		ACTIONS => {
			'TIME' => 474
		}
	},
	{#State 464
		ACTIONS => {
			'TIME' => 475
		}
	},
	{#State 465
		ACTIONS => {
			")" => 476
		}
	},
	{#State 466
		ACTIONS => {
			")" => 477
		}
	},
	{#State 467
		ACTIONS => {
			'INTEGER_CONSTANT' => 478
		}
	},
	{#State 468
		ACTIONS => {
			'INTEGER_CONSTANT' => 479
		}
	},
	{#State 469
		DEFAULT => -84
	},
	{#State 470
		ACTIONS => {
			'INTEGER_CONSTANT' => 480
		}
	},
	{#State 471
		ACTIONS => {
			'ZONE' => 481
		}
	},
	{#State 472
		ACTIONS => {
			'ZONE' => 482
		}
	},
	{#State 473
		DEFAULT => -49
	},
	{#State 474
		ACTIONS => {
			'ZONE' => 483
		}
	},
	{#State 475
		ACTIONS => {
			'ZONE' => 484
		}
	},
	{#State 476
		DEFAULT => -47
	},
	{#State 477
		DEFAULT => -30
	},
	{#State 478
		ACTIONS => {
			")" => 485
		}
	},
	{#State 479
		ACTIONS => {
			")" => 486
		}
	},
	{#State 480
		ACTIONS => {
			")" => 487
		}
	},
	{#State 481
		DEFAULT => -63
	},
	{#State 482
		DEFAULT => -64
	},
	{#State 483
		DEFAULT => -68
	},
	{#State 484
		DEFAULT => -69
	},
	{#State 485
		DEFAULT => -87
	},
	{#State 486
		DEFAULT => -85
	},
	{#State 487
		DEFAULT => -86
	}
],
    yyrules  =>
[
	[#Rule _SUPERSTART
		 '$start', 2, undef
#line 11010 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule top_1
		 'top', 1,
sub {
#line 22 "SQL.eyp"
 $_[1] }
#line 11017 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_2
		 'statements', 1,
sub {
#line 25 "SQL.eyp"
 [ $_[1] ] }
#line 11024 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_3
		 'statements', 3,
sub {
#line 26 "SQL.eyp"
 push @{ $_[1] }, $_[3]; $_[1] }
#line 11031 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_4
		 'statements', 2,
sub {
#line 27 "SQL.eyp"
 $_[1] }
#line 11038 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statement_5
		 'statement', 1,
sub {
#line 30 "SQL.eyp"
 $_[1] }
#line 11045 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule select_stmt_6
		 'select_stmt', 2,
sub {
#line 33 "SQL.eyp"

                                        my $select = $factory->make( 'Select' );
                                        for my $rc ( @{ $_[2] } ) {
                                            my $res = $factory->make('Result_Column');
                                            $res->value( $rc->[0] );
                                            $res->alias( $rc->[1] ) if defined $rc->[1];
                                            $select->add_result( $res )
                                        }
                                        $select
                                    }
#line 11061 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_columns_7
		 'result_columns', 1,
sub {
#line 45 "SQL.eyp"
 [ $_[1] ] }
#line 11068 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_columns_8
		 'result_columns', 3,
sub {
#line 46 "SQL.eyp"
 push @{ $_[1] }, $_[3]; $_[1] }
#line 11075 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_column_9
		 'result_column', 1,
sub {
#line 49 "SQL.eyp"
 [ $_[1], undef ] }
#line 11082 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_column_10
		 'result_column', 3,
sub {
#line 50 "SQL.eyp"
 [ $_[1], $_[3] ] }
#line 11089 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_11
		 'expr', 1,
sub {
#line 53 "SQL.eyp"
 $_[1] }
#line 11096 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_12
		 'expr', 1,
sub {
#line 54 "SQL.eyp"
 $_[1] }
#line 11103 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_13
		 'expr', 1,
sub {
#line 55 "SQL.eyp"
 $_[1] }
#line 11110 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_14
		 'operator_expression', 5,
sub {
#line 58 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => [ $_[3], $_[5] ] ) }
#line 11117 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_15
		 'operator_expression', 2,
sub {
#line 59 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1] ) }
#line 11124 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_16
		 'operator_expression', 2,
sub {
#line 60 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[1], 'right' => $_[2] ) }
#line 11131 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_17
		 'operator_expression', 3,
sub {
#line 61 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11138 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_18
		 'operator_expression', 3,
sub {
#line 62 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11145 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_19
		 'operator_expression', 3,
sub {
#line 63 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11152 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_20
		 'operator_expression', 3,
sub {
#line 64 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11159 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_21
		 'operator_expression', 3,
sub {
#line 65 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11166 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_22
		 'operator_expression', 3,
sub {
#line 66 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11173 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_23
		 'operator_expression', 3,
sub {
#line 67 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11180 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_24
		 'operator_expression', 3,
sub {
#line 68 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11187 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_25
		 'operator_expression', 3,
sub {
#line 69 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11194 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_26
		 'operator_expression', 3,
sub {
#line 70 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11201 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_27
		 'operator_expression', 3,
sub {
#line 71 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11208 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_28
		 'operator_expression', 3,
sub {
#line 72 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11215 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule cast_expression_29
		 'cast_expression', 3,
sub {
#line 75 "SQL.eyp"
 $factory->make( 'Cast', 'method' => '::', 'value' => $_[1], 'final_type' => $_[3] ) }
#line 11222 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule cast_expression_30
		 'cast_expression', 6,
sub {
#line 76 "SQL.eyp"
 $factory->make( 'Cast', 'method' => 'sql', 'value' => $_[3], 'final_type' => $_[5] ) }
#line 11229 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule cast_expression_31
		 'cast_expression', 2,
sub {
#line 77 "SQL.eyp"
 $factory->make( 'Cast', 'method' => 'function', 'value' => $_[2], 'final_type' => $_[1] ) }
#line 11236 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_simple_32
		 'expr_simple', 1,
sub {
#line 80 "SQL.eyp"
 $_[1] }
#line 11243 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_simple_33
		 'expr_simple', 3,
sub {
#line 81 "SQL.eyp"
 $_[2] }
#line 11250 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_34
		 'literal_value', 1,
sub {
#line 84 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'STRING_CONSTANT',     'value' => $_[1] ) }
#line 11257 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_35
		 'literal_value', 1,
sub {
#line 85 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'USTRING_CONSTANT',    'value' => $_[1] ) }
#line 11264 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_36
		 'literal_value', 1,
sub {
#line 86 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'ESTRING_CONSTANT',    'value' => $_[1] ) }
#line 11271 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_37
		 'literal_value', 1,
sub {
#line 87 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'BITSTRING_CONSTANT',  'value' => $_[1] ) }
#line 11278 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_38
		 'literal_value', 1,
sub {
#line 88 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'XBITSTRING_CONSTANT', 'value' => $_[1] ) }
#line 11285 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_39
		 'literal_value', 1,
sub {
#line 89 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'NUMERIC_CONSTANT',    'value' => $_[1] ) }
#line 11292 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_40
		 'literal_value', 1,
sub {
#line 90 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'INTEGER_CONSTANT',    'value' => $_[1] ) }
#line 11299 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_41
		 'identifier', 1,
sub {
#line 93 "SQL.eyp"
 $_[1] }
#line 11306 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_42
		 'identifier', 1,
sub {
#line 94 "SQL.eyp"
 $_[1] }
#line 11313 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_43
		 'identifier', 1,
sub {
#line 95 "SQL.eyp"
 $_[1] }
#line 11320 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_44
		 'identifier', 1,
sub {
#line 96 "SQL.eyp"
 $_[1] }
#line 11327 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule normal_type_45
		 'normal_type', 1,
sub {
#line 99 "SQL.eyp"
 $_[1] }
#line 11334 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule normal_type_46
		 'normal_type', 4,
sub {
#line 100 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1], 'limits' => [ $_[3] ] ) }
#line 11341 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule normal_type_47
		 'normal_type', 6,
sub {
#line 101 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1], 'limits' => [ $_[3], $_[5] ] ) }
#line 11348 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule normal_type_48
		 'normal_type', 4,
sub {
#line 102 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1], 'limits' => [ $_[3] ] ) }
#line 11355 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule normal_type_49
		 'normal_type', 6,
sub {
#line 103 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1], 'limits' => [ $_[3], $_[5] ] ) }
#line 11362 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule normal_type_50
		 'normal_type', 4,
sub {
#line 104 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1], 'limits' => [ $_[3] ] ) }
#line 11369 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule normal_type_51
		 'normal_type', 1,
sub {
#line 105 "SQL.eyp"
 $_[1] }
#line 11376 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule normal_type_52
		 'normal_type', 1,
sub {
#line 106 "SQL.eyp"
 $_[1] }
#line 11383 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule normal_type_53
		 'normal_type', 1,
sub {
#line 107 "SQL.eyp"
 $_[1] }
#line 11390 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_54
		 'simple_type', 1,
sub {
#line 110 "SQL.eyp"
 $_[1] }
#line 11397 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_55
		 'simple_type', 3,
sub {
#line 111 "SQL.eyp"
 $_[3]->schema( $_[1] ); $_[3] }
#line 11404 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule base_type_56
		 'base_type', 1,
sub {
#line 114 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1] ) }
#line 11411 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule base_type_57
		 'base_type', 1,
sub {
#line 115 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1] ) }
#line 11418 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule base_type_58
		 'base_type', 1,
sub {
#line 116 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1] ) }
#line 11425 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule base_type_59
		 'base_type', 2,
sub {
#line 117 "SQL.eyp"
 $factory->make( 'Type', 'name' => 'double precision' ) }
#line 11432 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule timestamp_type_60
		 'timestamp_type', 4,
sub {
#line 120 "SQL.eyp"
 $factory->make( 'Type', 'name' => 'timestamp with time zone' ) }
#line 11439 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule timestamp_type_61
		 'timestamp_type', 4,
sub {
#line 121 "SQL.eyp"
 $factory->make( 'Type', 'name' => 'timestamp without time zone' ) }
#line 11446 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule timestamp_type_62
		 'timestamp_type', 4,
sub {
#line 122 "SQL.eyp"
 $factory->make( 'Type', 'limits' => [ $_[3] ], 'name' => 'timestamp' ) }
#line 11453 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule timestamp_type_63
		 'timestamp_type', 7,
sub {
#line 123 "SQL.eyp"
 $factory->make( 'Type', 'limits' => [ $_[3] ], 'name' => 'timestamp with time zone' ) }
#line 11460 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule timestamp_type_64
		 'timestamp_type', 7,
sub {
#line 124 "SQL.eyp"
 $factory->make( 'Type', 'limits' => [ $_[3] ], 'name' => 'timestamp without time zone' ) }
#line 11467 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule time_type_65
		 'time_type', 4,
sub {
#line 127 "SQL.eyp"
 $factory->make( 'Type', 'name' => 'time with time zone' ) }
#line 11474 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule time_type_66
		 'time_type', 4,
sub {
#line 128 "SQL.eyp"
 $factory->make( 'Type', 'name' => 'time without time zone' ) }
#line 11481 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule time_type_67
		 'time_type', 4,
sub {
#line 129 "SQL.eyp"
 $factory->make( 'Type', 'limits' => [ $_[3] ], 'name' => 'time' ) }
#line 11488 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule time_type_68
		 'time_type', 7,
sub {
#line 130 "SQL.eyp"
 $factory->make( 'Type', 'limits' => [ $_[3] ], 'name' => 'time with time zone' ) }
#line 11495 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule time_type_69
		 'time_type', 7,
sub {
#line 131 "SQL.eyp"
 $factory->make( 'Type', 'limits' => [ $_[3] ], 'name' => 'time without time zone' ) }
#line 11502 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_70
		 'interval_type', 4,
sub {
#line 134 "SQL.eyp"
 $factory->make( 'Type', 'name' => 'interval', 'limits' => [ $_[3] ] ) }
#line 11509 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_71
		 'interval_type', 2,
sub {
#line 135 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' year' ); $_[1] }
#line 11516 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_72
		 'interval_type', 2,
sub {
#line 136 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' month' ); $_[1] }
#line 11523 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_73
		 'interval_type', 2,
sub {
#line 137 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' day' ); $_[1] }
#line 11530 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_74
		 'interval_type', 2,
sub {
#line 138 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' hour' ); $_[1] }
#line 11537 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_75
		 'interval_type', 2,
sub {
#line 139 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' minute' ); $_[1] }
#line 11544 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_76
		 'interval_type', 2,
sub {
#line 140 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' second' ); $_[1] }
#line 11551 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_77
		 'interval_type', 4,
sub {
#line 141 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' year to month' ); $_[1] }
#line 11558 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_78
		 'interval_type', 4,
sub {
#line 142 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' day to hour' ); $_[1] }
#line 11565 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_79
		 'interval_type', 4,
sub {
#line 143 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' day to minute' ); $_[1] }
#line 11572 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_80
		 'interval_type', 4,
sub {
#line 144 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' day to second' ); $_[1] }
#line 11579 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_81
		 'interval_type', 4,
sub {
#line 145 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' hour to minute' ); $_[1] }
#line 11586 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_82
		 'interval_type', 4,
sub {
#line 146 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' hour to second' ); $_[1] }
#line 11593 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_83
		 'interval_type', 4,
sub {
#line 147 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' minute to second' ); $_[1] }
#line 11600 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_84
		 'interval_type', 5,
sub {
#line 148 "SQL.eyp"

                                                                        my $l = $_[1]->limits() // [];
                                                                        $l->[1] = $_[4];
                                                                        $_[1]->limits( $l );
                                                                        $_[1]->name( $_[1]->name() . ' second' );
                                                                        $_[1]
                                                                    }
#line 11613 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_85
		 'interval_type', 7,
sub {
#line 155 "SQL.eyp"

                                                                        my $l = $_[1]->limits() // [];
                                                                        $l->[1] = $_[6];
                                                                        $_[1]->limits( $l );
                                                                        $_[1]->name( $_[1]->name() . ' day to second' );
                                                                        $_[1]
                                                                    }
#line 11626 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_86
		 'interval_type', 7,
sub {
#line 162 "SQL.eyp"

                                                                        my $l = $_[1]->limits() // [];
                                                                        $l->[1] = $_[6];
                                                                        $_[1]->limits( $l );
                                                                        $_[1]->name( $_[1]->name() . ' hour to second' );
                                                                        $_[1]
                                                                    }
#line 11639 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_87
		 'interval_type', 7,
sub {
#line 169 "SQL.eyp"

                                                                        my $l = $_[1]->limits() // [];
                                                                        $l->[1] = $_[6];
                                                                        $_[1]->limits( $l );
                                                                        $_[1]->name( $_[1]->name() . ' minute to second' );
                                                                        $_[1]
                                                                    }
#line 11652 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule base_interval_type_88
		 'base_interval_type', 1,
sub {
#line 178 "SQL.eyp"
 $factory->make( 'Type', 'name' => 'interval' ) }
#line 11659 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule base_interval_type_89
		 'base_interval_type', 4,
sub {
#line 179 "SQL.eyp"
 $factory->make( 'Type', 'name' => 'interval', 'limits' => [ $_[3] ] ) }
#line 11666 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_90
		 'keywords_notreserved', 1, undef
#line 11670 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_91
		 'keywords_notreserved', 1, undef
#line 11674 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_92
		 'keywords_notreserved', 1, undef
#line 11678 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_93
		 'keywords_notreserved', 1, undef
#line 11682 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_94
		 'keywords_notreserved', 1, undef
#line 11686 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_95
		 'keywords_notreserved', 1, undef
#line 11690 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_96
		 'keywords_notreserved', 1, undef
#line 11694 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_97
		 'keywords_notreserved', 1, undef
#line 11698 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_98
		 'keywords_notreserved', 1, undef
#line 11702 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_99
		 'keywords_notreserved', 1, undef
#line 11706 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_100
		 'keywords_notreserved', 1, undef
#line 11710 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_101
		 'keywords_notreserved', 1, undef
#line 11714 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_102
		 'keywords_notreserved', 1, undef
#line 11718 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_103
		 'keywords_notreserved', 1, undef
#line 11722 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_104
		 'keywords_notreserved', 1, undef
#line 11726 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_105
		 'keywords_notreserved', 1, undef
#line 11730 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_106
		 'keywords_notreserved', 1, undef
#line 11734 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_107
		 'keywords_notreserved', 1, undef
#line 11738 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_108
		 'keywords_notreserved', 1, undef
#line 11742 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_109
		 'keywords_notreserved', 1, undef
#line 11746 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_110
		 'keywords_notreserved', 1, undef
#line 11750 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_111
		 'keywords_notreserved', 1, undef
#line 11754 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_112
		 'keywords_notreserved', 1, undef
#line 11758 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_113
		 'keywords_notreserved', 1, undef
#line 11762 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_114
		 'keywords_notreserved', 1, undef
#line 11766 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_115
		 'keywords_notreserved', 1, undef
#line 11770 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_116
		 'keywords_notreserved', 1, undef
#line 11774 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_117
		 'keywords_notreserved', 1, undef
#line 11778 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_118
		 'keywords_notreserved', 1, undef
#line 11782 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_119
		 'keywords_notreserved', 1, undef
#line 11786 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_120
		 'keywords_notreserved', 1, undef
#line 11790 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_121
		 'keywords_notreserved', 1, undef
#line 11794 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_122
		 'keywords_notreserved', 1, undef
#line 11798 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_123
		 'keywords_notreserved', 1, undef
#line 11802 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_124
		 'keywords_notreserved', 1, undef
#line 11806 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_125
		 'keywords_notreserved', 1, undef
#line 11810 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_126
		 'keywords_notreserved', 1, undef
#line 11814 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_127
		 'keywords_notreserved', 1, undef
#line 11818 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_128
		 'keywords_notreserved', 1, undef
#line 11822 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_129
		 'keywords_notreserved', 1, undef
#line 11826 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_130
		 'keywords_notreserved', 1, undef
#line 11830 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_131
		 'keywords_notreserved', 1, undef
#line 11834 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_132
		 'keywords_notreserved', 1, undef
#line 11838 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_133
		 'keywords_notreserved', 1, undef
#line 11842 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_134
		 'keywords_notreserved', 1, undef
#line 11846 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_135
		 'keywords_notreserved', 1, undef
#line 11850 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_136
		 'keywords_notreserved', 1, undef
#line 11854 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_137
		 'keywords_notreserved', 1, undef
#line 11858 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_138
		 'keywords_notreserved', 1, undef
#line 11862 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_139
		 'keywords_notreserved', 1, undef
#line 11866 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_140
		 'keywords_notreserved', 1, undef
#line 11870 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_141
		 'keywords_notreserved', 1, undef
#line 11874 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_142
		 'keywords_notreserved', 1, undef
#line 11878 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_143
		 'keywords_notreserved', 1, undef
#line 11882 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_144
		 'keywords_notreserved', 1, undef
#line 11886 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_145
		 'keywords_notreserved', 1, undef
#line 11890 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_146
		 'keywords_notreserved', 1, undef
#line 11894 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_147
		 'keywords_notreserved', 1, undef
#line 11898 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_148
		 'keywords_notreserved', 1, undef
#line 11902 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_149
		 'keywords_notreserved', 1, undef
#line 11906 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_150
		 'keywords_notreserved', 1, undef
#line 11910 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_151
		 'keywords_notreserved', 1, undef
#line 11914 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_152
		 'keywords_notreserved', 1, undef
#line 11918 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_153
		 'keywords_notreserved', 1, undef
#line 11922 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_154
		 'keywords_notreserved', 1, undef
#line 11926 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_155
		 'keywords_notreserved', 1, undef
#line 11930 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_156
		 'keywords_notreserved', 1, undef
#line 11934 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_157
		 'keywords_notreserved', 1, undef
#line 11938 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_158
		 'keywords_notreserved', 1, undef
#line 11942 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_159
		 'keywords_notreserved', 1, undef
#line 11946 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_160
		 'keywords_notreserved', 1, undef
#line 11950 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_161
		 'keywords_notreserved', 1, undef
#line 11954 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_162
		 'keywords_notreserved', 1, undef
#line 11958 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_163
		 'keywords_notreserved', 1, undef
#line 11962 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_164
		 'keywords_notreserved', 1, undef
#line 11966 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_165
		 'keywords_notreserved', 1, undef
#line 11970 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_166
		 'keywords_notreserved', 1, undef
#line 11974 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_167
		 'keywords_notreserved', 1, undef
#line 11978 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_168
		 'keywords_notreserved', 1, undef
#line 11982 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_169
		 'keywords_notreserved', 1, undef
#line 11986 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_170
		 'keywords_notreserved', 1, undef
#line 11990 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_171
		 'keywords_notreserved', 1, undef
#line 11994 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_172
		 'keywords_notreserved', 1, undef
#line 11998 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_173
		 'keywords_notreserved', 1, undef
#line 12002 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_174
		 'keywords_notreserved', 1, undef
#line 12006 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_175
		 'keywords_notreserved', 1, undef
#line 12010 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_176
		 'keywords_notreserved', 1, undef
#line 12014 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_177
		 'keywords_notreserved', 1, undef
#line 12018 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_178
		 'keywords_notreserved', 1, undef
#line 12022 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_179
		 'keywords_notreserved', 1, undef
#line 12026 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_180
		 'keywords_notreserved', 1, undef
#line 12030 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_181
		 'keywords_notreserved', 1, undef
#line 12034 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_182
		 'keywords_notreserved', 1, undef
#line 12038 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_183
		 'keywords_notreserved', 1, undef
#line 12042 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_184
		 'keywords_notreserved', 1, undef
#line 12046 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_185
		 'keywords_notreserved', 1, undef
#line 12050 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_186
		 'keywords_notreserved', 1, undef
#line 12054 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_187
		 'keywords_notreserved', 1, undef
#line 12058 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_188
		 'keywords_notreserved', 1, undef
#line 12062 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_189
		 'keywords_notreserved', 1, undef
#line 12066 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_190
		 'keywords_notreserved', 1, undef
#line 12070 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_191
		 'keywords_notreserved', 1, undef
#line 12074 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_192
		 'keywords_notreserved', 1, undef
#line 12078 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_193
		 'keywords_notreserved', 1, undef
#line 12082 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_194
		 'keywords_notreserved', 1, undef
#line 12086 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_195
		 'keywords_notreserved', 1, undef
#line 12090 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_196
		 'keywords_notreserved', 1, undef
#line 12094 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_197
		 'keywords_notreserved', 1, undef
#line 12098 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_198
		 'keywords_notreserved', 1, undef
#line 12102 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_199
		 'keywords_notreserved', 1, undef
#line 12106 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_200
		 'keywords_notreserved', 1, undef
#line 12110 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_201
		 'keywords_notreserved', 1, undef
#line 12114 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_202
		 'keywords_notreserved', 1, undef
#line 12118 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_203
		 'keywords_notreserved', 1, undef
#line 12122 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_204
		 'keywords_notreserved', 1, undef
#line 12126 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_205
		 'keywords_notreserved', 1, undef
#line 12130 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_206
		 'keywords_notreserved', 1, undef
#line 12134 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_207
		 'keywords_notreserved', 1, undef
#line 12138 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_208
		 'keywords_notreserved', 1, undef
#line 12142 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_209
		 'keywords_notreserved', 1, undef
#line 12146 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_210
		 'keywords_notreserved', 1, undef
#line 12150 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_211
		 'keywords_notreserved', 1, undef
#line 12154 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_212
		 'keywords_notreserved', 1, undef
#line 12158 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_213
		 'keywords_notreserved', 1, undef
#line 12162 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_214
		 'keywords_notreserved', 1, undef
#line 12166 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_215
		 'keywords_notreserved', 1, undef
#line 12170 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_216
		 'keywords_notreserved', 1, undef
#line 12174 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_217
		 'keywords_notreserved', 1, undef
#line 12178 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_218
		 'keywords_notreserved', 1, undef
#line 12182 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_219
		 'keywords_notreserved', 1, undef
#line 12186 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_220
		 'keywords_notreserved', 1, undef
#line 12190 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_221
		 'keywords_notreserved', 1, undef
#line 12194 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_222
		 'keywords_notreserved', 1, undef
#line 12198 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_223
		 'keywords_notreserved', 1, undef
#line 12202 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_224
		 'keywords_notreserved', 1, undef
#line 12206 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_225
		 'keywords_notreserved', 1, undef
#line 12210 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_226
		 'keywords_notreserved', 1, undef
#line 12214 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_227
		 'keywords_notreserved', 1, undef
#line 12218 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_228
		 'keywords_notreserved', 1, undef
#line 12222 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_229
		 'keywords_notreserved', 1, undef
#line 12226 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_230
		 'keywords_notreserved', 1, undef
#line 12230 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_231
		 'keywords_notreserved', 1, undef
#line 12234 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_232
		 'keywords_notreserved', 1, undef
#line 12238 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_233
		 'keywords_notreserved', 1, undef
#line 12242 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_234
		 'keywords_notreserved', 1, undef
#line 12246 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_235
		 'keywords_notreserved', 1, undef
#line 12250 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_236
		 'keywords_notreserved', 1, undef
#line 12254 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_237
		 'keywords_notreserved', 1, undef
#line 12258 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_238
		 'keywords_notreserved', 1, undef
#line 12262 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_239
		 'keywords_notreserved', 1, undef
#line 12266 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_240
		 'keywords_notreserved', 1, undef
#line 12270 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_241
		 'keywords_notreserved', 1, undef
#line 12274 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_242
		 'keywords_notreserved', 1, undef
#line 12278 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_243
		 'keywords_notreserved', 1, undef
#line 12282 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_244
		 'keywords_notreserved', 1, undef
#line 12286 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_245
		 'keywords_notreserved', 1, undef
#line 12290 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_246
		 'keywords_notreserved', 1, undef
#line 12294 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_247
		 'keywords_notreserved', 1, undef
#line 12298 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_248
		 'keywords_notreserved', 1, undef
#line 12302 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_249
		 'keywords_notreserved', 1, undef
#line 12306 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_250
		 'keywords_notreserved', 1, undef
#line 12310 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_251
		 'keywords_notreserved', 1, undef
#line 12314 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_252
		 'keywords_notreserved', 1, undef
#line 12318 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_253
		 'keywords_notreserved', 1, undef
#line 12322 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_254
		 'keywords_notreserved', 1, undef
#line 12326 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_255
		 'keywords_notreserved', 1, undef
#line 12330 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_256
		 'keywords_notreserved', 1, undef
#line 12334 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_257
		 'keywords_notreserved', 1, undef
#line 12338 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_258
		 'keywords_notreserved', 1, undef
#line 12342 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_259
		 'keywords_notreserved', 1, undef
#line 12346 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_260
		 'keywords_notreserved', 1, undef
#line 12350 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_261
		 'keywords_notreserved', 1, undef
#line 12354 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_262
		 'keywords_notreserved', 1, undef
#line 12358 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_263
		 'keywords_notreserved', 1, undef
#line 12362 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_264
		 'keywords_notreserved', 1, undef
#line 12366 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_265
		 'keywords_notreserved', 1, undef
#line 12370 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_266
		 'keywords_notreserved', 1, undef
#line 12374 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_267
		 'keywords_notreserved', 1, undef
#line 12378 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_268
		 'keywords_notreserved', 1, undef
#line 12382 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_269
		 'keywords_notreserved', 1, undef
#line 12386 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_270
		 'keywords_notreserved', 1, undef
#line 12390 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_271
		 'keywords_notreserved', 1, undef
#line 12394 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_272
		 'keywords_notreserved', 1, undef
#line 12398 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_273
		 'keywords_notreserved', 1, undef
#line 12402 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_274
		 'keywords_notreserved', 1, undef
#line 12406 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_275
		 'keywords_notreserved', 1, undef
#line 12410 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_276
		 'keywords_notreserved', 1, undef
#line 12414 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_277
		 'keywords_notreserved', 1, undef
#line 12418 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_278
		 'keywords_notreserved', 1, undef
#line 12422 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_279
		 'keywords_notreserved', 1, undef
#line 12426 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_280
		 'keywords_notreserved', 1, undef
#line 12430 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_281
		 'keywords_notreserved', 1, undef
#line 12434 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_282
		 'keywords_notreserved', 1, undef
#line 12438 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_283
		 'keywords_notreserved', 1, undef
#line 12442 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_284
		 'keywords_notreserved', 1, undef
#line 12446 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_285
		 'keywords_notreserved', 1, undef
#line 12450 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_286
		 'keywords_notreserved', 1, undef
#line 12454 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_287
		 'keywords_notreserved', 1, undef
#line 12458 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_288
		 'keywords_notreserved', 1, undef
#line 12462 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_289
		 'keywords_notreserved', 1, undef
#line 12466 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_290
		 'keywords_notreserved', 1, undef
#line 12470 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_291
		 'keywords_notreserved', 1, undef
#line 12474 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_292
		 'keywords_notreserved', 1, undef
#line 12478 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_293
		 'keywords_notreserved', 1, undef
#line 12482 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_294
		 'keywords_notreserved', 1, undef
#line 12486 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_295
		 'keywords_notreserved', 1, undef
#line 12490 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_296
		 'keywords_notreserved', 1, undef
#line 12494 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_297
		 'keywords_notreserved', 1, undef
#line 12498 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_298
		 'keywords_notreserved', 1, undef
#line 12502 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_299
		 'keywords_notreserved', 1, undef
#line 12506 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_300
		 'keywords_notreserved', 1, undef
#line 12510 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_301
		 'keywords_notreserved', 1, undef
#line 12514 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_302
		 'keywords_notreserved', 1, undef
#line 12518 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_303
		 'keywords_notreserved', 1, undef
#line 12522 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_304
		 'keywords_notreserved', 1, undef
#line 12526 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_305
		 'keywords_notreserved', 1, undef
#line 12530 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_306
		 'keywords_notreserved', 1, undef
#line 12534 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_307
		 'keywords_notreserved', 1, undef
#line 12538 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_308
		 'keywords_notreserved', 1, undef
#line 12542 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_309
		 'keywords_notreserved', 1, undef
#line 12546 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_310
		 'keywords_notreserved', 1, undef
#line 12550 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_311
		 'keywords_notreserved', 1, undef
#line 12554 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_312
		 'keywords_notreserved', 1, undef
#line 12558 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_313
		 'keywords_notreserved', 1, undef
#line 12562 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_314
		 'keywords_notreserved', 1, undef
#line 12566 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_315
		 'keywords_notreserved', 1, undef
#line 12570 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_316
		 'keywords_notreserved', 1, undef
#line 12574 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_317
		 'keywords_notreserved', 1, undef
#line 12578 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_318
		 'keywords_notreserved', 1, undef
#line 12582 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_319
		 'keywords_notreserved', 1, undef
#line 12586 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_320
		 'keywords_notreserved', 1, undef
#line 12590 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_321
		 'keywords_notreserved', 1, undef
#line 12594 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_322
		 'keywords_notreserved', 1, undef
#line 12598 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_323
		 'keywords_notreserved', 1, undef
#line 12602 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_324
		 'keywords_notreserved', 1, undef
#line 12606 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_325
		 'keywords_notreserved', 1, undef
#line 12610 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_326
		 'keywords_notreserved', 1, undef
#line 12614 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_327
		 'keywords_notreserved', 1, undef
#line 12618 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_328
		 'keywords_notreserved', 1, undef
#line 12622 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_329
		 'keywords_notreserved', 1, undef
#line 12626 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_330
		 'keywords_notreserved', 1, undef
#line 12630 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_331
		 'keywords_notreserved', 1, undef
#line 12634 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_332
		 'keywords_notreserved', 1, undef
#line 12638 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_333
		 'keywords_notreserved', 1, undef
#line 12642 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_334
		 'keywords_notreserved', 1, undef
#line 12646 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_335
		 'keywords_notreserved', 1, undef
#line 12650 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_336
		 'keywords_notreserved', 1, undef
#line 12654 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_337
		 'keywords_notreserved', 1, undef
#line 12658 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_338
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12662 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_339
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12666 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_340
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12670 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_341
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12674 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_342
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12678 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_343
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12682 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_344
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12686 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_345
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12690 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_346
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12694 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_347
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12698 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_348
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12702 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_349
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12706 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_350
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12710 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_351
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12714 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_352
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12718 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_353
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12722 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_354
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12726 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_355
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12730 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_356
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12734 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_357
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12738 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_358
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12742 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_359
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12746 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_360
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12750 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_361
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12754 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_362
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12758 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_363
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12762 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_364
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12766 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_365
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12770 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_366
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12774 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_367
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12778 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_368
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12782 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_369
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12786 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_370
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12790 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_371
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12794 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_372
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12798 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_373
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12802 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_374
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12806 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_375
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12810 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_376
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12814 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_377
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12818 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_378
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12822 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_379
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12826 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_380
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12830 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_381
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12834 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_382
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12838 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_383
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12842 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_384
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12846 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_385
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12850 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_386
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12854 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_387
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12858 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_388
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12862 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_389
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12866 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_390
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12870 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_391
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12874 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_392
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12878 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_393
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12882 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_394
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12886 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_395
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12890 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_396
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12894 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_397
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12898 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_398
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12902 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_399
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12906 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_400
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12910 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_401
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12914 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_402
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12918 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_403
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12922 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_404
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12926 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_405
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12930 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_406
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12934 ../lib/Pg/SQL/Parser/SQL.pm
	]
],
#line 12937 ../lib/Pg/SQL/Parser/SQL.pm
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
         'operator_expression_14', 
         'operator_expression_15', 
         'operator_expression_16', 
         'operator_expression_17', 
         'operator_expression_18', 
         'operator_expression_19', 
         'operator_expression_20', 
         'operator_expression_21', 
         'operator_expression_22', 
         'operator_expression_23', 
         'operator_expression_24', 
         'operator_expression_25', 
         'operator_expression_26', 
         'operator_expression_27', 
         'operator_expression_28', 
         'cast_expression_29', 
         'cast_expression_30', 
         'cast_expression_31', 
         'expr_simple_32', 
         'expr_simple_33', 
         'literal_value_34', 
         'literal_value_35', 
         'literal_value_36', 
         'literal_value_37', 
         'literal_value_38', 
         'literal_value_39', 
         'literal_value_40', 
         'identifier_41', 
         'identifier_42', 
         'identifier_43', 
         'identifier_44', 
         'normal_type_45', 
         'normal_type_46', 
         'normal_type_47', 
         'normal_type_48', 
         'normal_type_49', 
         'normal_type_50', 
         'normal_type_51', 
         'normal_type_52', 
         'normal_type_53', 
         'simple_type_54', 
         'simple_type_55', 
         'base_type_56', 
         'base_type_57', 
         'base_type_58', 
         'base_type_59', 
         'timestamp_type_60', 
         'timestamp_type_61', 
         'timestamp_type_62', 
         'timestamp_type_63', 
         'timestamp_type_64', 
         'time_type_65', 
         'time_type_66', 
         'time_type_67', 
         'time_type_68', 
         'time_type_69', 
         'interval_type_70', 
         'interval_type_71', 
         'interval_type_72', 
         'interval_type_73', 
         'interval_type_74', 
         'interval_type_75', 
         'interval_type_76', 
         'interval_type_77', 
         'interval_type_78', 
         'interval_type_79', 
         'interval_type_80', 
         'interval_type_81', 
         'interval_type_82', 
         'interval_type_83', 
         'interval_type_84', 
         'interval_type_85', 
         'interval_type_86', 
         'interval_type_87', 
         'base_interval_type_88', 
         'base_interval_type_89', 
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
         'keywords_notreserved_287', 
         'keywords_notreserved_288', 
         'keywords_notreserved_289', 
         'keywords_notreserved_290', 
         'keywords_notreserved_291', 
         'keywords_notreserved_292', 
         'keywords_notreserved_293', 
         'keywords_notreserved_294', 
         'keywords_notreserved_295', 
         'keywords_notreserved_296', 
         'keywords_notreserved_297', 
         'keywords_notreserved_298', 
         'keywords_notreserved_299', 
         'keywords_notreserved_300', 
         'keywords_notreserved_301', 
         'keywords_notreserved_302', 
         'keywords_notreserved_303', 
         'keywords_notreserved_304', 
         'keywords_notreserved_305', 
         'keywords_notreserved_306', 
         'keywords_notreserved_307', 
         'keywords_notreserved_308', 
         'keywords_notreserved_309', 
         'keywords_notreserved_310', 
         'keywords_notreserved_311', 
         'keywords_notreserved_312', 
         'keywords_notreserved_313', 
         'keywords_notreserved_314', 
         'keywords_notreserved_315', 
         'keywords_notreserved_316', 
         'keywords_notreserved_317', 
         'keywords_notreserved_318', 
         'keywords_notreserved_319', 
         'keywords_notreserved_320', 
         'keywords_notreserved_321', 
         'keywords_notreserved_322', 
         'keywords_notreserved_323', 
         'keywords_notreserved_324', 
         'keywords_notreserved_325', 
         'keywords_notreserved_326', 
         'keywords_notreserved_327', 
         'keywords_notreserved_328', 
         'keywords_notreserved_329', 
         'keywords_notreserved_330', 
         'keywords_notreserved_331', 
         'keywords_notreserved_332', 
         'keywords_notreserved_333', 
         'keywords_notreserved_334', 
         'keywords_notreserved_335', 
         'keywords_notreserved_336', 
         'keywords_notreserved_337', 
         'keywords_reserved_ok_for_functions_or_types_338', 
         'keywords_reserved_ok_for_functions_or_types_339', 
         'keywords_reserved_ok_for_functions_or_types_340', 
         'keywords_reserved_ok_for_functions_or_types_341', 
         'keywords_reserved_ok_for_functions_or_types_342', 
         'keywords_reserved_ok_for_functions_or_types_343', 
         'keywords_reserved_ok_for_functions_or_types_344', 
         'keywords_reserved_ok_for_functions_or_types_345', 
         'keywords_reserved_ok_for_functions_or_types_346', 
         'keywords_reserved_ok_for_functions_or_types_347', 
         'keywords_reserved_ok_for_functions_or_types_348', 
         'keywords_reserved_ok_for_functions_or_types_349', 
         'keywords_reserved_ok_for_functions_or_types_350', 
         'keywords_reserved_ok_for_functions_or_types_351', 
         'keywords_reserved_ok_for_functions_or_types_352', 
         'keywords_reserved_ok_for_functions_or_types_353', 
         'keywords_reserved_ok_for_functions_or_types_354', 
         'keywords_reserved_ok_for_functions_or_types_355', 
         'keywords_reserved_ok_for_functions_or_types_356', 
         'keywords_reserved_ok_for_functions_or_types_357', 
         'keywords_reserved_ok_for_functions_or_types_358', 
         'keywords_reserved_ok_for_functions_or_types_359', 
         'keywords_notreserved_not_ok_for_functions_or_types_360', 
         'keywords_notreserved_not_ok_for_functions_or_types_361', 
         'keywords_notreserved_not_ok_for_functions_or_types_362', 
         'keywords_notreserved_not_ok_for_functions_or_types_363', 
         'keywords_notreserved_not_ok_for_functions_or_types_364', 
         'keywords_notreserved_not_ok_for_functions_or_types_365', 
         'keywords_notreserved_not_ok_for_functions_or_types_366', 
         'keywords_notreserved_not_ok_for_functions_or_types_367', 
         'keywords_notreserved_not_ok_for_functions_or_types_368', 
         'keywords_notreserved_not_ok_for_functions_or_types_369', 
         'keywords_notreserved_not_ok_for_functions_or_types_370', 
         'keywords_notreserved_not_ok_for_functions_or_types_371', 
         'keywords_notreserved_not_ok_for_functions_or_types_372', 
         'keywords_notreserved_not_ok_for_functions_or_types_373', 
         'keywords_notreserved_not_ok_for_functions_or_types_374', 
         'keywords_notreserved_not_ok_for_functions_or_types_375', 
         'keywords_notreserved_not_ok_for_functions_or_types_376', 
         'keywords_notreserved_not_ok_for_functions_or_types_377', 
         'keywords_notreserved_not_ok_for_functions_or_types_378', 
         'keywords_notreserved_not_ok_for_functions_or_types_379', 
         'keywords_notreserved_not_ok_for_functions_or_types_380', 
         'keywords_notreserved_not_ok_for_functions_or_types_381', 
         'keywords_notreserved_not_ok_for_functions_or_types_382', 
         'keywords_notreserved_not_ok_for_functions_or_types_383', 
         'keywords_notreserved_not_ok_for_functions_or_types_384', 
         'keywords_notreserved_not_ok_for_functions_or_types_385', 
         'keywords_notreserved_not_ok_for_functions_or_types_386', 
         'keywords_notreserved_not_ok_for_functions_or_types_387', 
         'keywords_notreserved_not_ok_for_functions_or_types_388', 
         'keywords_notreserved_not_ok_for_functions_or_types_389', 
         'keywords_notreserved_not_ok_for_functions_or_types_390', 
         'keywords_notreserved_not_ok_for_functions_or_types_391', 
         'keywords_notreserved_not_ok_for_functions_or_types_392', 
         'keywords_notreserved_not_ok_for_functions_or_types_393', 
         'keywords_notreserved_not_ok_for_functions_or_types_394', 
         'keywords_notreserved_not_ok_for_functions_or_types_395', 
         'keywords_notreserved_not_ok_for_functions_or_types_396', 
         'keywords_notreserved_not_ok_for_functions_or_types_397', 
         'keywords_notreserved_not_ok_for_functions_or_types_398', 
         'keywords_notreserved_not_ok_for_functions_or_types_399', 
         'keywords_notreserved_not_ok_for_functions_or_types_400', 
         'keywords_notreserved_not_ok_for_functions_or_types_401', 
         'keywords_notreserved_not_ok_for_functions_or_types_402', 
         'keywords_notreserved_not_ok_for_functions_or_types_403', 
         'keywords_notreserved_not_ok_for_functions_or_types_404', 
         'keywords_notreserved_not_ok_for_functions_or_types_405', 
         'keywords_notreserved_not_ok_for_functions_or_types_406', );
  $self;
}

#line 505 "SQL.eyp"


# vim: set ft=lex:


=for None

=cut


#line 13372 ../lib/Pg/SQL/Parser/SQL.pm



1;
