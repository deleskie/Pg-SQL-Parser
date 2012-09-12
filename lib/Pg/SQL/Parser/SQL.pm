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
  [ 'cast_expression_31' => 'cast_expression', [ 'simple_type', 'literal_value' ], 0 ],
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
  [ 'timestamp_type_59' => 'timestamp_type', [ 'TIMESTAMP', 'WITH', 'TIME', 'ZONE' ], 0 ],
  [ 'timestamp_type_60' => 'timestamp_type', [ 'TIMESTAMP', 'WITHOUT', 'TIME', 'ZONE' ], 0 ],
  [ 'timestamp_type_61' => 'timestamp_type', [ 'TIMESTAMP', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'timestamp_type_62' => 'timestamp_type', [ 'TIMESTAMP', '(', 'INTEGER_CONSTANT', ')', 'WITH', 'TIME', 'ZONE' ], 0 ],
  [ 'timestamp_type_63' => 'timestamp_type', [ 'TIMESTAMP', '(', 'INTEGER_CONSTANT', ')', 'WITHOUT', 'TIME', 'ZONE' ], 0 ],
  [ 'time_type_64' => 'time_type', [ 'TIME', 'WITH', 'TIME', 'ZONE' ], 0 ],
  [ 'time_type_65' => 'time_type', [ 'TIME', 'WITHOUT', 'TIME', 'ZONE' ], 0 ],
  [ 'time_type_66' => 'time_type', [ 'TIME', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'time_type_67' => 'time_type', [ 'TIME', '(', 'INTEGER_CONSTANT', ')', 'WITH', 'TIME', 'ZONE' ], 0 ],
  [ 'time_type_68' => 'time_type', [ 'TIME', '(', 'INTEGER_CONSTANT', ')', 'WITHOUT', 'TIME', 'ZONE' ], 0 ],
  [ 'interval_type_69' => 'interval_type', [ 'INTERVAL', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'interval_type_70' => 'interval_type', [ 'base_interval_type', 'YEAR' ], 0 ],
  [ 'interval_type_71' => 'interval_type', [ 'base_interval_type', 'MONTH' ], 0 ],
  [ 'interval_type_72' => 'interval_type', [ 'base_interval_type', 'DAY' ], 0 ],
  [ 'interval_type_73' => 'interval_type', [ 'base_interval_type', 'HOUR' ], 0 ],
  [ 'interval_type_74' => 'interval_type', [ 'base_interval_type', 'MINUTE' ], 0 ],
  [ 'interval_type_75' => 'interval_type', [ 'base_interval_type', 'SECOND' ], 0 ],
  [ 'interval_type_76' => 'interval_type', [ 'base_interval_type', 'YEAR', 'TO', 'MONTH' ], 0 ],
  [ 'interval_type_77' => 'interval_type', [ 'base_interval_type', 'DAY', 'TO', 'HOUR' ], 0 ],
  [ 'interval_type_78' => 'interval_type', [ 'base_interval_type', 'DAY', 'TO', 'MINUTE' ], 0 ],
  [ 'interval_type_79' => 'interval_type', [ 'base_interval_type', 'DAY', 'TO', 'SECOND' ], 0 ],
  [ 'interval_type_80' => 'interval_type', [ 'base_interval_type', 'HOUR', 'TO', 'MINUTE' ], 0 ],
  [ 'interval_type_81' => 'interval_type', [ 'base_interval_type', 'HOUR', 'TO', 'SECOND' ], 0 ],
  [ 'interval_type_82' => 'interval_type', [ 'base_interval_type', 'MINUTE', 'TO', 'SECOND' ], 0 ],
  [ 'interval_type_83' => 'interval_type', [ 'base_interval_type', 'SECOND', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'interval_type_84' => 'interval_type', [ 'base_interval_type', 'DAY', 'TO', 'SECOND', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'interval_type_85' => 'interval_type', [ 'base_interval_type', 'HOUR', 'TO', 'SECOND', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'interval_type_86' => 'interval_type', [ 'base_interval_type', 'MINUTE', 'TO', 'SECOND', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'base_interval_type_87' => 'base_interval_type', [ 'INTERVAL' ], 0 ],
  [ 'base_interval_type_88' => 'base_interval_type', [ 'INTERVAL', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'keywords_notreserved_89' => 'keywords_notreserved', [ 'ABORT' ], 0 ],
  [ 'keywords_notreserved_90' => 'keywords_notreserved', [ 'ABSOLUTE' ], 0 ],
  [ 'keywords_notreserved_91' => 'keywords_notreserved', [ 'ACCESS' ], 0 ],
  [ 'keywords_notreserved_92' => 'keywords_notreserved', [ 'ACTION' ], 0 ],
  [ 'keywords_notreserved_93' => 'keywords_notreserved', [ 'ADD' ], 0 ],
  [ 'keywords_notreserved_94' => 'keywords_notreserved', [ 'ADMIN' ], 0 ],
  [ 'keywords_notreserved_95' => 'keywords_notreserved', [ 'AFTER' ], 0 ],
  [ 'keywords_notreserved_96' => 'keywords_notreserved', [ 'AGGREGATE' ], 0 ],
  [ 'keywords_notreserved_97' => 'keywords_notreserved', [ 'ALSO' ], 0 ],
  [ 'keywords_notreserved_98' => 'keywords_notreserved', [ 'ALTER' ], 0 ],
  [ 'keywords_notreserved_99' => 'keywords_notreserved', [ 'ALWAYS' ], 0 ],
  [ 'keywords_notreserved_100' => 'keywords_notreserved', [ 'ASSERTION' ], 0 ],
  [ 'keywords_notreserved_101' => 'keywords_notreserved', [ 'ASSIGNMENT' ], 0 ],
  [ 'keywords_notreserved_102' => 'keywords_notreserved', [ 'AT' ], 0 ],
  [ 'keywords_notreserved_103' => 'keywords_notreserved', [ 'ATTRIBUTE' ], 0 ],
  [ 'keywords_notreserved_104' => 'keywords_notreserved', [ 'BACKWARD' ], 0 ],
  [ 'keywords_notreserved_105' => 'keywords_notreserved', [ 'BEFORE' ], 0 ],
  [ 'keywords_notreserved_106' => 'keywords_notreserved', [ 'BEGIN' ], 0 ],
  [ 'keywords_notreserved_107' => 'keywords_notreserved', [ 'BY' ], 0 ],
  [ 'keywords_notreserved_108' => 'keywords_notreserved', [ 'CACHE' ], 0 ],
  [ 'keywords_notreserved_109' => 'keywords_notreserved', [ 'CALLED' ], 0 ],
  [ 'keywords_notreserved_110' => 'keywords_notreserved', [ 'CASCADE' ], 0 ],
  [ 'keywords_notreserved_111' => 'keywords_notreserved', [ 'CASCADED' ], 0 ],
  [ 'keywords_notreserved_112' => 'keywords_notreserved', [ 'CATALOG' ], 0 ],
  [ 'keywords_notreserved_113' => 'keywords_notreserved', [ 'CHAIN' ], 0 ],
  [ 'keywords_notreserved_114' => 'keywords_notreserved', [ 'CHARACTERISTICS' ], 0 ],
  [ 'keywords_notreserved_115' => 'keywords_notreserved', [ 'CHECKPOINT' ], 0 ],
  [ 'keywords_notreserved_116' => 'keywords_notreserved', [ 'CLASS' ], 0 ],
  [ 'keywords_notreserved_117' => 'keywords_notreserved', [ 'CLOSE' ], 0 ],
  [ 'keywords_notreserved_118' => 'keywords_notreserved', [ 'CLUSTER' ], 0 ],
  [ 'keywords_notreserved_119' => 'keywords_notreserved', [ 'COLLATION' ], 0 ],
  [ 'keywords_notreserved_120' => 'keywords_notreserved', [ 'COMMENT' ], 0 ],
  [ 'keywords_notreserved_121' => 'keywords_notreserved', [ 'COMMENTS' ], 0 ],
  [ 'keywords_notreserved_122' => 'keywords_notreserved', [ 'COMMIT' ], 0 ],
  [ 'keywords_notreserved_123' => 'keywords_notreserved', [ 'COMMITTED' ], 0 ],
  [ 'keywords_notreserved_124' => 'keywords_notreserved', [ 'CONFIGURATION' ], 0 ],
  [ 'keywords_notreserved_125' => 'keywords_notreserved', [ 'CONNECTION' ], 0 ],
  [ 'keywords_notreserved_126' => 'keywords_notreserved', [ 'CONSTRAINTS' ], 0 ],
  [ 'keywords_notreserved_127' => 'keywords_notreserved', [ 'CONTENT' ], 0 ],
  [ 'keywords_notreserved_128' => 'keywords_notreserved', [ 'CONTINUE' ], 0 ],
  [ 'keywords_notreserved_129' => 'keywords_notreserved', [ 'CONVERSION' ], 0 ],
  [ 'keywords_notreserved_130' => 'keywords_notreserved', [ 'COPY' ], 0 ],
  [ 'keywords_notreserved_131' => 'keywords_notreserved', [ 'COST' ], 0 ],
  [ 'keywords_notreserved_132' => 'keywords_notreserved', [ 'CSV' ], 0 ],
  [ 'keywords_notreserved_133' => 'keywords_notreserved', [ 'CURRENT' ], 0 ],
  [ 'keywords_notreserved_134' => 'keywords_notreserved', [ 'CURSOR' ], 0 ],
  [ 'keywords_notreserved_135' => 'keywords_notreserved', [ 'CYCLE' ], 0 ],
  [ 'keywords_notreserved_136' => 'keywords_notreserved', [ 'DATA' ], 0 ],
  [ 'keywords_notreserved_137' => 'keywords_notreserved', [ 'DATABASE' ], 0 ],
  [ 'keywords_notreserved_138' => 'keywords_notreserved', [ 'DAY' ], 0 ],
  [ 'keywords_notreserved_139' => 'keywords_notreserved', [ 'DEALLOCATE' ], 0 ],
  [ 'keywords_notreserved_140' => 'keywords_notreserved', [ 'DECLARE' ], 0 ],
  [ 'keywords_notreserved_141' => 'keywords_notreserved', [ 'DEFAULTS' ], 0 ],
  [ 'keywords_notreserved_142' => 'keywords_notreserved', [ 'DEFERRED' ], 0 ],
  [ 'keywords_notreserved_143' => 'keywords_notreserved', [ 'DEFINER' ], 0 ],
  [ 'keywords_notreserved_144' => 'keywords_notreserved', [ 'DELETE' ], 0 ],
  [ 'keywords_notreserved_145' => 'keywords_notreserved', [ 'DELIMITER' ], 0 ],
  [ 'keywords_notreserved_146' => 'keywords_notreserved', [ 'DELIMITERS' ], 0 ],
  [ 'keywords_notreserved_147' => 'keywords_notreserved', [ 'DICTIONARY' ], 0 ],
  [ 'keywords_notreserved_148' => 'keywords_notreserved', [ 'DISABLE' ], 0 ],
  [ 'keywords_notreserved_149' => 'keywords_notreserved', [ 'DISCARD' ], 0 ],
  [ 'keywords_notreserved_150' => 'keywords_notreserved', [ 'DOCUMENT' ], 0 ],
  [ 'keywords_notreserved_151' => 'keywords_notreserved', [ 'DOMAIN' ], 0 ],
  [ 'keywords_notreserved_152' => 'keywords_notreserved', [ 'DOUBLE' ], 0 ],
  [ 'keywords_notreserved_153' => 'keywords_notreserved', [ 'DROP' ], 0 ],
  [ 'keywords_notreserved_154' => 'keywords_notreserved', [ 'EACH' ], 0 ],
  [ 'keywords_notreserved_155' => 'keywords_notreserved', [ 'ENABLE' ], 0 ],
  [ 'keywords_notreserved_156' => 'keywords_notreserved', [ 'ENCODING' ], 0 ],
  [ 'keywords_notreserved_157' => 'keywords_notreserved', [ 'ENCRYPTED' ], 0 ],
  [ 'keywords_notreserved_158' => 'keywords_notreserved', [ 'ENUM' ], 0 ],
  [ 'keywords_notreserved_159' => 'keywords_notreserved', [ 'ESCAPE' ], 0 ],
  [ 'keywords_notreserved_160' => 'keywords_notreserved', [ 'EXCLUDE' ], 0 ],
  [ 'keywords_notreserved_161' => 'keywords_notreserved', [ 'EXCLUDING' ], 0 ],
  [ 'keywords_notreserved_162' => 'keywords_notreserved', [ 'EXCLUSIVE' ], 0 ],
  [ 'keywords_notreserved_163' => 'keywords_notreserved', [ 'EXECUTE' ], 0 ],
  [ 'keywords_notreserved_164' => 'keywords_notreserved', [ 'EXPLAIN' ], 0 ],
  [ 'keywords_notreserved_165' => 'keywords_notreserved', [ 'EXTENSION' ], 0 ],
  [ 'keywords_notreserved_166' => 'keywords_notreserved', [ 'EXTERNAL' ], 0 ],
  [ 'keywords_notreserved_167' => 'keywords_notreserved', [ 'FAMILY' ], 0 ],
  [ 'keywords_notreserved_168' => 'keywords_notreserved', [ 'FIRST' ], 0 ],
  [ 'keywords_notreserved_169' => 'keywords_notreserved', [ 'FOLLOWING' ], 0 ],
  [ 'keywords_notreserved_170' => 'keywords_notreserved', [ 'FORCE' ], 0 ],
  [ 'keywords_notreserved_171' => 'keywords_notreserved', [ 'FORWARD' ], 0 ],
  [ 'keywords_notreserved_172' => 'keywords_notreserved', [ 'FUNCTION' ], 0 ],
  [ 'keywords_notreserved_173' => 'keywords_notreserved', [ 'FUNCTIONS' ], 0 ],
  [ 'keywords_notreserved_174' => 'keywords_notreserved', [ 'GLOBAL' ], 0 ],
  [ 'keywords_notreserved_175' => 'keywords_notreserved', [ 'GRANTED' ], 0 ],
  [ 'keywords_notreserved_176' => 'keywords_notreserved', [ 'HANDLER' ], 0 ],
  [ 'keywords_notreserved_177' => 'keywords_notreserved', [ 'HEADER' ], 0 ],
  [ 'keywords_notreserved_178' => 'keywords_notreserved', [ 'HOLD' ], 0 ],
  [ 'keywords_notreserved_179' => 'keywords_notreserved', [ 'HOUR' ], 0 ],
  [ 'keywords_notreserved_180' => 'keywords_notreserved', [ 'IDENTITY' ], 0 ],
  [ 'keywords_notreserved_181' => 'keywords_notreserved', [ 'IF' ], 0 ],
  [ 'keywords_notreserved_182' => 'keywords_notreserved', [ 'IMMEDIATE' ], 0 ],
  [ 'keywords_notreserved_183' => 'keywords_notreserved', [ 'IMMUTABLE' ], 0 ],
  [ 'keywords_notreserved_184' => 'keywords_notreserved', [ 'IMPLICIT' ], 0 ],
  [ 'keywords_notreserved_185' => 'keywords_notreserved', [ 'INCLUDING' ], 0 ],
  [ 'keywords_notreserved_186' => 'keywords_notreserved', [ 'INCREMENT' ], 0 ],
  [ 'keywords_notreserved_187' => 'keywords_notreserved', [ 'INDEX' ], 0 ],
  [ 'keywords_notreserved_188' => 'keywords_notreserved', [ 'INDEXES' ], 0 ],
  [ 'keywords_notreserved_189' => 'keywords_notreserved', [ 'INHERIT' ], 0 ],
  [ 'keywords_notreserved_190' => 'keywords_notreserved', [ 'INHERITS' ], 0 ],
  [ 'keywords_notreserved_191' => 'keywords_notreserved', [ 'INLINE' ], 0 ],
  [ 'keywords_notreserved_192' => 'keywords_notreserved', [ 'INPUT' ], 0 ],
  [ 'keywords_notreserved_193' => 'keywords_notreserved', [ 'INSENSITIVE' ], 0 ],
  [ 'keywords_notreserved_194' => 'keywords_notreserved', [ 'INSERT' ], 0 ],
  [ 'keywords_notreserved_195' => 'keywords_notreserved', [ 'INSTEAD' ], 0 ],
  [ 'keywords_notreserved_196' => 'keywords_notreserved', [ 'INVOKER' ], 0 ],
  [ 'keywords_notreserved_197' => 'keywords_notreserved', [ 'ISOLATION' ], 0 ],
  [ 'keywords_notreserved_198' => 'keywords_notreserved', [ 'KEY' ], 0 ],
  [ 'keywords_notreserved_199' => 'keywords_notreserved', [ 'LABEL' ], 0 ],
  [ 'keywords_notreserved_200' => 'keywords_notreserved', [ 'LANGUAGE' ], 0 ],
  [ 'keywords_notreserved_201' => 'keywords_notreserved', [ 'LARGE' ], 0 ],
  [ 'keywords_notreserved_202' => 'keywords_notreserved', [ 'LAST' ], 0 ],
  [ 'keywords_notreserved_203' => 'keywords_notreserved', [ 'LC_COLLATE' ], 0 ],
  [ 'keywords_notreserved_204' => 'keywords_notreserved', [ 'LC_CTYPE' ], 0 ],
  [ 'keywords_notreserved_205' => 'keywords_notreserved', [ 'LEVEL' ], 0 ],
  [ 'keywords_notreserved_206' => 'keywords_notreserved', [ 'LISTEN' ], 0 ],
  [ 'keywords_notreserved_207' => 'keywords_notreserved', [ 'LOAD' ], 0 ],
  [ 'keywords_notreserved_208' => 'keywords_notreserved', [ 'LOCAL' ], 0 ],
  [ 'keywords_notreserved_209' => 'keywords_notreserved', [ 'LOCATION' ], 0 ],
  [ 'keywords_notreserved_210' => 'keywords_notreserved', [ 'LOCK' ], 0 ],
  [ 'keywords_notreserved_211' => 'keywords_notreserved', [ 'MAPPING' ], 0 ],
  [ 'keywords_notreserved_212' => 'keywords_notreserved', [ 'MATCH' ], 0 ],
  [ 'keywords_notreserved_213' => 'keywords_notreserved', [ 'MAXVALUE' ], 0 ],
  [ 'keywords_notreserved_214' => 'keywords_notreserved', [ 'MINUTE' ], 0 ],
  [ 'keywords_notreserved_215' => 'keywords_notreserved', [ 'MINVALUE' ], 0 ],
  [ 'keywords_notreserved_216' => 'keywords_notreserved', [ 'MODE' ], 0 ],
  [ 'keywords_notreserved_217' => 'keywords_notreserved', [ 'MONTH' ], 0 ],
  [ 'keywords_notreserved_218' => 'keywords_notreserved', [ 'MOVE' ], 0 ],
  [ 'keywords_notreserved_219' => 'keywords_notreserved', [ 'NAME' ], 0 ],
  [ 'keywords_notreserved_220' => 'keywords_notreserved', [ 'NAMES' ], 0 ],
  [ 'keywords_notreserved_221' => 'keywords_notreserved', [ 'NEXT' ], 0 ],
  [ 'keywords_notreserved_222' => 'keywords_notreserved', [ 'NO' ], 0 ],
  [ 'keywords_notreserved_223' => 'keywords_notreserved', [ 'NOTHING' ], 0 ],
  [ 'keywords_notreserved_224' => 'keywords_notreserved', [ 'NOTIFY' ], 0 ],
  [ 'keywords_notreserved_225' => 'keywords_notreserved', [ 'NOWAIT' ], 0 ],
  [ 'keywords_notreserved_226' => 'keywords_notreserved', [ 'NULLS' ], 0 ],
  [ 'keywords_notreserved_227' => 'keywords_notreserved', [ 'OBJECT' ], 0 ],
  [ 'keywords_notreserved_228' => 'keywords_notreserved', [ 'OF' ], 0 ],
  [ 'keywords_notreserved_229' => 'keywords_notreserved', [ 'OFF' ], 0 ],
  [ 'keywords_notreserved_230' => 'keywords_notreserved', [ 'OIDS' ], 0 ],
  [ 'keywords_notreserved_231' => 'keywords_notreserved', [ 'OPERATOR' ], 0 ],
  [ 'keywords_notreserved_232' => 'keywords_notreserved', [ 'OPTION' ], 0 ],
  [ 'keywords_notreserved_233' => 'keywords_notreserved', [ 'OPTIONS' ], 0 ],
  [ 'keywords_notreserved_234' => 'keywords_notreserved', [ 'OWNED' ], 0 ],
  [ 'keywords_notreserved_235' => 'keywords_notreserved', [ 'OWNER' ], 0 ],
  [ 'keywords_notreserved_236' => 'keywords_notreserved', [ 'PARSER' ], 0 ],
  [ 'keywords_notreserved_237' => 'keywords_notreserved', [ 'PARTIAL' ], 0 ],
  [ 'keywords_notreserved_238' => 'keywords_notreserved', [ 'PARTITION' ], 0 ],
  [ 'keywords_notreserved_239' => 'keywords_notreserved', [ 'PASSING' ], 0 ],
  [ 'keywords_notreserved_240' => 'keywords_notreserved', [ 'PASSWORD' ], 0 ],
  [ 'keywords_notreserved_241' => 'keywords_notreserved', [ 'PLANS' ], 0 ],
  [ 'keywords_notreserved_242' => 'keywords_notreserved', [ 'PRECEDING' ], 0 ],
  [ 'keywords_notreserved_243' => 'keywords_notreserved', [ 'PREPARE' ], 0 ],
  [ 'keywords_notreserved_244' => 'keywords_notreserved', [ 'PREPARED' ], 0 ],
  [ 'keywords_notreserved_245' => 'keywords_notreserved', [ 'PRESERVE' ], 0 ],
  [ 'keywords_notreserved_246' => 'keywords_notreserved', [ 'PRIOR' ], 0 ],
  [ 'keywords_notreserved_247' => 'keywords_notreserved', [ 'PRIVILEGES' ], 0 ],
  [ 'keywords_notreserved_248' => 'keywords_notreserved', [ 'PROCEDURAL' ], 0 ],
  [ 'keywords_notreserved_249' => 'keywords_notreserved', [ 'PROCEDURE' ], 0 ],
  [ 'keywords_notreserved_250' => 'keywords_notreserved', [ 'QUOTE' ], 0 ],
  [ 'keywords_notreserved_251' => 'keywords_notreserved', [ 'RANGE' ], 0 ],
  [ 'keywords_notreserved_252' => 'keywords_notreserved', [ 'READ' ], 0 ],
  [ 'keywords_notreserved_253' => 'keywords_notreserved', [ 'REASSIGN' ], 0 ],
  [ 'keywords_notreserved_254' => 'keywords_notreserved', [ 'RECHECK' ], 0 ],
  [ 'keywords_notreserved_255' => 'keywords_notreserved', [ 'RECURSIVE' ], 0 ],
  [ 'keywords_notreserved_256' => 'keywords_notreserved', [ 'REF' ], 0 ],
  [ 'keywords_notreserved_257' => 'keywords_notreserved', [ 'REINDEX' ], 0 ],
  [ 'keywords_notreserved_258' => 'keywords_notreserved', [ 'RELATIVE' ], 0 ],
  [ 'keywords_notreserved_259' => 'keywords_notreserved', [ 'RELEASE' ], 0 ],
  [ 'keywords_notreserved_260' => 'keywords_notreserved', [ 'RENAME' ], 0 ],
  [ 'keywords_notreserved_261' => 'keywords_notreserved', [ 'REPEATABLE' ], 0 ],
  [ 'keywords_notreserved_262' => 'keywords_notreserved', [ 'REPLACE' ], 0 ],
  [ 'keywords_notreserved_263' => 'keywords_notreserved', [ 'REPLICA' ], 0 ],
  [ 'keywords_notreserved_264' => 'keywords_notreserved', [ 'RESET' ], 0 ],
  [ 'keywords_notreserved_265' => 'keywords_notreserved', [ 'RESTART' ], 0 ],
  [ 'keywords_notreserved_266' => 'keywords_notreserved', [ 'RESTRICT' ], 0 ],
  [ 'keywords_notreserved_267' => 'keywords_notreserved', [ 'RETURNS' ], 0 ],
  [ 'keywords_notreserved_268' => 'keywords_notreserved', [ 'REVOKE' ], 0 ],
  [ 'keywords_notreserved_269' => 'keywords_notreserved', [ 'ROLE' ], 0 ],
  [ 'keywords_notreserved_270' => 'keywords_notreserved', [ 'ROLLBACK' ], 0 ],
  [ 'keywords_notreserved_271' => 'keywords_notreserved', [ 'ROWS' ], 0 ],
  [ 'keywords_notreserved_272' => 'keywords_notreserved', [ 'RULE' ], 0 ],
  [ 'keywords_notreserved_273' => 'keywords_notreserved', [ 'SAVEPOINT' ], 0 ],
  [ 'keywords_notreserved_274' => 'keywords_notreserved', [ 'SCHEMA' ], 0 ],
  [ 'keywords_notreserved_275' => 'keywords_notreserved', [ 'SCROLL' ], 0 ],
  [ 'keywords_notreserved_276' => 'keywords_notreserved', [ 'SEARCH' ], 0 ],
  [ 'keywords_notreserved_277' => 'keywords_notreserved', [ 'SECOND' ], 0 ],
  [ 'keywords_notreserved_278' => 'keywords_notreserved', [ 'SECURITY' ], 0 ],
  [ 'keywords_notreserved_279' => 'keywords_notreserved', [ 'SEQUENCE' ], 0 ],
  [ 'keywords_notreserved_280' => 'keywords_notreserved', [ 'SEQUENCES' ], 0 ],
  [ 'keywords_notreserved_281' => 'keywords_notreserved', [ 'SERIALIZABLE' ], 0 ],
  [ 'keywords_notreserved_282' => 'keywords_notreserved', [ 'SERVER' ], 0 ],
  [ 'keywords_notreserved_283' => 'keywords_notreserved', [ 'SESSION' ], 0 ],
  [ 'keywords_notreserved_284' => 'keywords_notreserved', [ 'SET' ], 0 ],
  [ 'keywords_notreserved_285' => 'keywords_notreserved', [ 'SHARE' ], 0 ],
  [ 'keywords_notreserved_286' => 'keywords_notreserved', [ 'SHOW' ], 0 ],
  [ 'keywords_notreserved_287' => 'keywords_notreserved', [ 'SIMPLE' ], 0 ],
  [ 'keywords_notreserved_288' => 'keywords_notreserved', [ 'STABLE' ], 0 ],
  [ 'keywords_notreserved_289' => 'keywords_notreserved', [ 'STANDALONE' ], 0 ],
  [ 'keywords_notreserved_290' => 'keywords_notreserved', [ 'START' ], 0 ],
  [ 'keywords_notreserved_291' => 'keywords_notreserved', [ 'STATEMENT' ], 0 ],
  [ 'keywords_notreserved_292' => 'keywords_notreserved', [ 'STATISTICS' ], 0 ],
  [ 'keywords_notreserved_293' => 'keywords_notreserved', [ 'STDIN' ], 0 ],
  [ 'keywords_notreserved_294' => 'keywords_notreserved', [ 'STDOUT' ], 0 ],
  [ 'keywords_notreserved_295' => 'keywords_notreserved', [ 'STORAGE' ], 0 ],
  [ 'keywords_notreserved_296' => 'keywords_notreserved', [ 'STRICT' ], 0 ],
  [ 'keywords_notreserved_297' => 'keywords_notreserved', [ 'STRIP' ], 0 ],
  [ 'keywords_notreserved_298' => 'keywords_notreserved', [ 'SYSID' ], 0 ],
  [ 'keywords_notreserved_299' => 'keywords_notreserved', [ 'SYSTEM' ], 0 ],
  [ 'keywords_notreserved_300' => 'keywords_notreserved', [ 'TABLES' ], 0 ],
  [ 'keywords_notreserved_301' => 'keywords_notreserved', [ 'TABLESPACE' ], 0 ],
  [ 'keywords_notreserved_302' => 'keywords_notreserved', [ 'TEMP' ], 0 ],
  [ 'keywords_notreserved_303' => 'keywords_notreserved', [ 'TEMPLATE' ], 0 ],
  [ 'keywords_notreserved_304' => 'keywords_notreserved', [ 'TEMPORARY' ], 0 ],
  [ 'keywords_notreserved_305' => 'keywords_notreserved', [ 'TEXT' ], 0 ],
  [ 'keywords_notreserved_306' => 'keywords_notreserved', [ 'TRANSACTION' ], 0 ],
  [ 'keywords_notreserved_307' => 'keywords_notreserved', [ 'TRIGGER' ], 0 ],
  [ 'keywords_notreserved_308' => 'keywords_notreserved', [ 'TRUNCATE' ], 0 ],
  [ 'keywords_notreserved_309' => 'keywords_notreserved', [ 'TRUSTED' ], 0 ],
  [ 'keywords_notreserved_310' => 'keywords_notreserved', [ 'TYPE' ], 0 ],
  [ 'keywords_notreserved_311' => 'keywords_notreserved', [ 'UNBOUNDED' ], 0 ],
  [ 'keywords_notreserved_312' => 'keywords_notreserved', [ 'UNCOMMITTED' ], 0 ],
  [ 'keywords_notreserved_313' => 'keywords_notreserved', [ 'UNENCRYPTED' ], 0 ],
  [ 'keywords_notreserved_314' => 'keywords_notreserved', [ 'UNKNOWN' ], 0 ],
  [ 'keywords_notreserved_315' => 'keywords_notreserved', [ 'UNLISTEN' ], 0 ],
  [ 'keywords_notreserved_316' => 'keywords_notreserved', [ 'UNLOGGED' ], 0 ],
  [ 'keywords_notreserved_317' => 'keywords_notreserved', [ 'UNTIL' ], 0 ],
  [ 'keywords_notreserved_318' => 'keywords_notreserved', [ 'UPDATE' ], 0 ],
  [ 'keywords_notreserved_319' => 'keywords_notreserved', [ 'VACUUM' ], 0 ],
  [ 'keywords_notreserved_320' => 'keywords_notreserved', [ 'VALID' ], 0 ],
  [ 'keywords_notreserved_321' => 'keywords_notreserved', [ 'VALIDATE' ], 0 ],
  [ 'keywords_notreserved_322' => 'keywords_notreserved', [ 'VALIDATOR' ], 0 ],
  [ 'keywords_notreserved_323' => 'keywords_notreserved', [ 'VALUE' ], 0 ],
  [ 'keywords_notreserved_324' => 'keywords_notreserved', [ 'VARYING' ], 0 ],
  [ 'keywords_notreserved_325' => 'keywords_notreserved', [ 'VERSION' ], 0 ],
  [ 'keywords_notreserved_326' => 'keywords_notreserved', [ 'VIEW' ], 0 ],
  [ 'keywords_notreserved_327' => 'keywords_notreserved', [ 'VOLATILE' ], 0 ],
  [ 'keywords_notreserved_328' => 'keywords_notreserved', [ 'WHITESPACE' ], 0 ],
  [ 'keywords_notreserved_329' => 'keywords_notreserved', [ 'WITHOUT' ], 0 ],
  [ 'keywords_notreserved_330' => 'keywords_notreserved', [ 'WORK' ], 0 ],
  [ 'keywords_notreserved_331' => 'keywords_notreserved', [ 'WRAPPER' ], 0 ],
  [ 'keywords_notreserved_332' => 'keywords_notreserved', [ 'WRITE' ], 0 ],
  [ 'keywords_notreserved_333' => 'keywords_notreserved', [ 'XML' ], 0 ],
  [ 'keywords_notreserved_334' => 'keywords_notreserved', [ 'YEAR' ], 0 ],
  [ 'keywords_notreserved_335' => 'keywords_notreserved', [ 'YES' ], 0 ],
  [ 'keywords_notreserved_336' => 'keywords_notreserved', [ 'ZONE' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_337' => 'keywords_reserved_ok_for_functions_or_types', [ 'AUTHORIZATION' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_338' => 'keywords_reserved_ok_for_functions_or_types', [ 'BINARY' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_339' => 'keywords_reserved_ok_for_functions_or_types', [ 'CONCURRENTLY' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_340' => 'keywords_reserved_ok_for_functions_or_types', [ 'CROSS' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_341' => 'keywords_reserved_ok_for_functions_or_types', [ 'CURRENT_SCHEMA' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_342' => 'keywords_reserved_ok_for_functions_or_types', [ 'FREEZE' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_343' => 'keywords_reserved_ok_for_functions_or_types', [ 'FULL' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_344' => 'keywords_reserved_ok_for_functions_or_types', [ 'ILIKE' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_345' => 'keywords_reserved_ok_for_functions_or_types', [ 'INNER' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_346' => 'keywords_reserved_ok_for_functions_or_types', [ 'IS' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_347' => 'keywords_reserved_ok_for_functions_or_types', [ 'ISNULL' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_348' => 'keywords_reserved_ok_for_functions_or_types', [ 'JOIN' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_349' => 'keywords_reserved_ok_for_functions_or_types', [ 'LEFT' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_350' => 'keywords_reserved_ok_for_functions_or_types', [ 'LIKE' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_351' => 'keywords_reserved_ok_for_functions_or_types', [ 'NATURAL' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_352' => 'keywords_reserved_ok_for_functions_or_types', [ 'NOTNULL' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_353' => 'keywords_reserved_ok_for_functions_or_types', [ 'OUTER' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_354' => 'keywords_reserved_ok_for_functions_or_types', [ 'OVER' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_355' => 'keywords_reserved_ok_for_functions_or_types', [ 'OVERLAPS' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_356' => 'keywords_reserved_ok_for_functions_or_types', [ 'RIGHT' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_357' => 'keywords_reserved_ok_for_functions_or_types', [ 'SIMILAR' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_358' => 'keywords_reserved_ok_for_functions_or_types', [ 'VERBOSE' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_359' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'BETWEEN' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_360' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'BIGINT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_361' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'BIT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_362' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'BOOLEAN' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_363' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'CHAR' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_364' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'CHARACTER' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_365' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'COALESCE' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_366' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'DEC' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_367' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'DECIMAL' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_368' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'EXISTS' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_369' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'EXTRACT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_370' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'FLOAT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_371' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'GREATEST' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_372' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'INOUT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_373' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'INT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_374' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'INTEGER' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_375' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'INTERVAL' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_376' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'LEAST' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_377' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'NATIONAL' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_378' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'NCHAR' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_379' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'NONE' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_380' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'NULLIF' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_381' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'NUMERIC' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_382' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'OUT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_383' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'OVERLAY' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_384' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'POSITION' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_385' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'PRECISION' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_386' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'REAL' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_387' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'ROW' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_388' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'SETOF' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_389' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'SMALLINT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_390' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'SUBSTRING' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_391' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'TIME' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_392' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'TIMESTAMP' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_393' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'TREAT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_394' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'TRIM' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_395' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'VALUES' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_396' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'VARCHAR' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_397' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLATTRIBUTES' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_398' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLCONCAT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_399' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLELEMENT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_400' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLEXISTS' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_401' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLFOREST' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_402' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLPARSE' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_403' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLPI' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_404' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLROOT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_405' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLSERIALIZE' ], 0 ],
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
  'timestamp_type_59' => 59,
  'timestamp_type_60' => 60,
  'timestamp_type_61' => 61,
  'timestamp_type_62' => 62,
  'timestamp_type_63' => 63,
  'time_type_64' => 64,
  'time_type_65' => 65,
  'time_type_66' => 66,
  'time_type_67' => 67,
  'time_type_68' => 68,
  'interval_type_69' => 69,
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
  'base_interval_type_87' => 87,
  'base_interval_type_88' => 88,
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
  'keywords_reserved_ok_for_functions_or_types_337' => 337,
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
  'keywords_notreserved_not_ok_for_functions_or_types_359' => 359,
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
			'ENCODING' => 28,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'FULL' => 36,
			'TREAT' => 37,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'DATA' => 44,
			'DAY' => 43,
			'PARTITION' => 42,
			'RANGE' => 41,
			'REF' => 47,
			'SHARE' => 46,
			'REAL' => 45,
			'OVER' => 48,
			'LARGE' => 50,
			'CURRENT_SCHEMA' => 49,
			'DELETE' => 51,
			'NULLIF' => 52,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'REPLICA' => 57,
			'PRIVILEGES' => 58,
			'ZONE' => 59,
			'LEAST' => 60,
			'STATISTICS' => 61,
			'ISNULL' => 62,
			'CALLED' => 63,
			'USTRING_CONSTANT' => 64,
			'SECURITY' => 65,
			'INCREMENT' => 67,
			'BINARY' => 68,
			'LEVEL' => 69,
			'FORCE' => 70,
			'CONCURRENTLY' => 71,
			'XBITSTRING_CONSTANT' => 72,
			'UPDATE' => 74,
			'PRESERVE' => 75,
			'CHARACTERISTICS' => 77,
			'XMLPI' => 76,
			'VALIDATE' => 78,
			"(" => 79,
			'ESTRING_CONSTANT' => 81,
			'STRICT' => 80,
			'VARYING' => 82,
			'AUTHORIZATION' => 83,
			'REASSIGN' => 84,
			'LABEL' => 86,
			'ROLLBACK' => 85,
			'OBJECT' => 87,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'TIMESTAMP' => 88,
			'RULE' => 91,
			'OPERATOR_NAME' => 93,
			'NUMERIC_CONSTANT' => 92,
			'INSERT' => 94,
			'HANDLER' => 95,
			'LOCATION' => 97,
			'EXISTS' => 96,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'BOOLEAN' => 99,
			'NULLS' => 101,
			'TYPE' => 102,
			'RESET' => 103,
			'NOWAIT' => 104,
			'PRIOR' => 105,
			'OFF' => 109,
			'BIGINT' => 108,
			'XMLSERIALIZE' => 107,
			'VERBOSE' => 110,
			'SET' => 111,
			'COMMENT' => 112,
			'IMMEDIATE' => 113,
			'DELIMITER' => 114,
			'SETOF' => 115,
			'INNER' => 116,
			'EXTRACT' => 117,
			'REINDEX' => 118,
			'PRECISION' => 119,
			'ACCESS' => 120,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'INOUT' => 123,
			'DEALLOCATE' => 124,
			'CATALOG' => 125,
			'OUT' => 126,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'XMLEXISTS' => 132,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'LEFT' => 135,
			'PRECEDING' => 136,
			'INTEGER_CONSTANT' => 137,
			'STABLE' => 138,
			'DEC' => 139,
			'XML' => 141,
			'XMLELEMENT' => 140,
			'SCROLL' => 142,
			'TEXT' => 143,
			'FUNCTION' => 145,
			'ALSO' => 144,
			'AGGREGATE' => 147,
			'SYSTEM' => 146,
			'FLOAT' => 148,
			'ATTRIBUTE' => 149,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'OVERLAPS' => 153,
			'DEFERRED' => 155,
			'VIEW' => 154,
			'REPEATABLE' => 156,
			'ALWAYS' => 157,
			'FORWARD' => 159,
			'CONSTRAINTS' => 158,
			'NOTHING' => 160,
			'EXCLUDING' => 161,
			'DECIMAL' => 162,
			'INDEXES' => 164,
			'CHECKPOINT' => 163,
			'CACHE' => 165,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'UNLISTEN' => 168,
			'LOAD' => 169,
			'FAMILY' => 170,
			'SMALLINT' => 171,
			'ASSERTION' => 172,
			'ILIKE' => 173,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'SIMILAR' => 176,
			'STDOUT' => 178,
			'BITSTRING_CONSTANT' => 180,
			'REVOKE' => 179,
			'INHERIT' => 181,
			'OUTER' => 182,
			'EXPLAIN' => 183,
			'OIDS' => 185,
			'VARCHAR' => 184,
			'AFTER' => 186,
			'DISABLE' => 188,
			'CSV' => 187,
			'VACUUM' => 189,
			'SCHEMA' => 190,
			'ROW' => 191,
			'LC_COLLATE' => 192,
			'FREEZE' => 193,
			'INDEX' => 194,
			'DEFINER' => 195,
			'XMLPARSE' => 196,
			'ADMIN' => 198,
			'INCLUDING' => 199,
			'OWNED' => 200,
			'CROSS' => 201,
			'INSTEAD' => 202,
			'NATIONAL' => 203,
			'EACH' => 204,
			'TRUSTED' => 205,
			'EXCLUSIVE' => 206,
			'OWNER' => 207,
			'CHARACTER' => 208,
			'CASCADE' => 209,
			'STATEMENT' => 210,
			'ASSIGNMENT' => 212,
			'MATCH' => 213,
			'CLASS' => 215,
			'DOUBLE' => 216,
			'MOVE' => 217,
			'TIME' => 218,
			'NUMERIC' => 219,
			'CURSOR' => 220,
			'INLINE' => 221,
			'ENCRYPTED' => 222,
			'EXTENSION' => 223,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'VALIDATOR' => 226,
			'XMLROOT' => 228,
			'UQUOTED_IDENTIFIER' => 229,
			'SUBSTRING' => 230,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'BETWEEN' => 233,
			'ABORT' => 234,
			'XMLATTRIBUTES' => 235,
			'VALUES' => 236,
			'BEFORE' => 237,
			'TRUNCATE' => 238,
			'ABSOLUTE' => 239,
			'IDENTIFIER' => 240,
			'SHOW' => 241,
			'GREATEST' => 242,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'WHITESPACE' => 247,
			'SECOND' => 249,
			'HOUR' => 250,
			'XMLFOREST' => 251,
			'FOLLOWING' => 253,
			'WRAPPER' => 254,
			'LISTEN' => 255,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'YEAR' => 258,
			'STANDALONE' => 259,
			'TEMP' => 260,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OPTIONS' => 263,
			'CAST' => 264,
			'YES' => 265,
			'PROCEDURAL' => 266,
			'SEQUENCE' => 267,
			'LIKE' => 268,
			'SIMPLE' => 269,
			'IDENTITY' => 270,
			'QUOTE' => 271,
			'POSITION' => 273,
			'DOMAIN' => 274,
			'EXECUTE' => 275,
			'UNKNOWN' => 276,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'SERVER' => 280,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'NAMES' => 284,
			'CONFIGURATION' => 283,
			'RENAME' => 286,
			'PARSER' => 285,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RIGHT' => 287,
			'IMPLICIT' => 290,
			'CLUSTER' => 291,
			'NATURAL' => 292,
			'XMLCONCAT' => 293,
			'PASSWORD' => 294,
			'CHAR' => 295,
			'RECHECK' => 296,
			'PREPARED' => 298,
			'NEXT' => 297,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'GRANTED' => 302,
			'BIT' => 301,
			'NOTIFY' => 304,
			'BEGIN' => 303,
			'HEADER' => 305,
			'INTERVAL' => 306,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'STORAGE' => 311,
			'ISOLATION' => 310,
			'FUNCTIONS' => 309,
			'STDIN' => 312,
			'RESTRICT' => 313,
			'UNCOMMITTED' => 317,
			'CYCLE' => 316,
			'IS' => 315,
			'TRIM' => 314,
			'MAXVALUE' => 318,
			'START' => 319,
			'SAVEPOINT' => 322,
			'DOCUMENT' => 321,
			'IF' => 320,
			'ROWS' => 323,
			'MINVALUE' => 325,
			'LAST' => 324,
			'KEY' => 326,
			'UNTIL' => 328,
			'OPERATOR' => 327,
			'HOLD' => 329,
			'ACTION' => 330,
			'WRITE' => 331,
			'ROLE' => 332,
			'NOTNULL' => 333,
			'SESSION' => 334,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'NONE' => 340,
			'TABLES' => 343,
			'VALID' => 342,
			'INT' => 341,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'UNENCRYPTED' => 346,
			'OVERLAY' => 347,
			'FIRST' => 349,
			'COALESCE' => 348,
			'VERSION' => 350
		},
		GOTOS => {
			'base_type' => 214,
			'expr_simple' => 277,
			'keywords_reserved_ok_for_functions_or_types' => 73,
			'result_columns' => 35,
			'keywords_notreserved_not_ok_for_functions_or_types' => 248,
			'literal_value' => 272,
			'identifier' => 66,
			'expr' => 177,
			'result_column' => 227,
			'operator_expression' => 197,
			'cast_expression' => 106,
			'simple_type' => 211,
			'keywords_notreserved' => 252
		}
	},
	{#State 6
		ACTIONS => {
			'SELECT' => 5
		},
		DEFAULT => -4,
		GOTOS => {
			'select_stmt' => 1,
			'statement' => 351
		}
	},
	{#State 7
		DEFAULT => 0
	},
	{#State 8
		DEFAULT => -348
	},
	{#State 9
		DEFAULT => -298
	},
	{#State 10
		DEFAULT => -192
	},
	{#State 11
		DEFAULT => -281
	},
	{#State 12
		DEFAULT => -262
	},
	{#State 13
		DEFAULT => -193
	},
	{#State 14
		DEFAULT => -102
	},
	{#State 15
		DEFAULT => -267
	},
	{#State 16
		DEFAULT => -378
	},
	{#State 17
		DEFAULT => -34
	},
	{#State 18
		DEFAULT => -196
	},
	{#State 19
		DEFAULT => -330
	},
	{#State 20
		DEFAULT => -239
	},
	{#State 21
		DEFAULT => -216
	},
	{#State 22
		DEFAULT => -374
	},
	{#State 23
		DEFAULT => -190
	},
	{#State 24
		DEFAULT => -323
	},
	{#State 25
		DEFAULT => -159
	},
	{#State 26
		DEFAULT => -153
	},
	{#State 27
		DEFAULT => -217
	},
	{#State 28
		DEFAULT => -156
	},
	{#State 29
		DEFAULT => -303
	},
	{#State 30
		DEFAULT => -147
	},
	{#State 31
		DEFAULT => -276
	},
	{#State 32
		DEFAULT => -243
	},
	{#State 33
		DEFAULT => -210
	},
	{#State 34
		DEFAULT => -141
	},
	{#State 35
		ACTIONS => {
			"," => 352
		},
		DEFAULT => -6
	},
	{#State 36
		DEFAULT => -343
	},
	{#State 37
		DEFAULT => -393
	},
	{#State 38
		DEFAULT => -107
	},
	{#State 39
		DEFAULT => -222
	},
	{#State 40
		DEFAULT => -214
	},
	{#State 41
		DEFAULT => -251
	},
	{#State 42
		DEFAULT => -238
	},
	{#State 43
		DEFAULT => -138
	},
	{#State 44
		DEFAULT => -136
	},
	{#State 45
		DEFAULT => -386
	},
	{#State 46
		DEFAULT => -285
	},
	{#State 47
		DEFAULT => -256
	},
	{#State 48
		DEFAULT => -354
	},
	{#State 49
		DEFAULT => -341
	},
	{#State 50
		DEFAULT => -201
	},
	{#State 51
		DEFAULT => -144
	},
	{#State 52
		DEFAULT => -380
	},
	{#State 53
		DEFAULT => -125
	},
	{#State 54
		DEFAULT => -117
	},
	{#State 55
		DEFAULT => -104
	},
	{#State 56
		DEFAULT => -131
	},
	{#State 57
		DEFAULT => -263
	},
	{#State 58
		DEFAULT => -247
	},
	{#State 59
		DEFAULT => -336
	},
	{#State 60
		DEFAULT => -376
	},
	{#State 61
		DEFAULT => -292
	},
	{#State 62
		DEFAULT => -347
	},
	{#State 63
		DEFAULT => -109
	},
	{#State 64
		DEFAULT => -35
	},
	{#State 65
		DEFAULT => -278
	},
	{#State 66
		ACTIONS => {
			"." => 353
		},
		DEFAULT => -56
	},
	{#State 67
		DEFAULT => -186
	},
	{#State 68
		DEFAULT => -338
	},
	{#State 69
		DEFAULT => -205
	},
	{#State 70
		DEFAULT => -170
	},
	{#State 71
		DEFAULT => -339
	},
	{#State 72
		DEFAULT => -38
	},
	{#State 73
		DEFAULT => -57
	},
	{#State 74
		DEFAULT => -318
	},
	{#State 75
		DEFAULT => -245
	},
	{#State 76
		DEFAULT => -403
	},
	{#State 77
		DEFAULT => -114
	},
	{#State 78
		DEFAULT => -321
	},
	{#State 79
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
			'ENCODING' => 28,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'FULL' => 36,
			'TREAT' => 37,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'DATA' => 44,
			'DAY' => 43,
			'PARTITION' => 42,
			'RANGE' => 41,
			'REF' => 47,
			'SHARE' => 46,
			'REAL' => 45,
			'OVER' => 48,
			'LARGE' => 50,
			'CURRENT_SCHEMA' => 49,
			'DELETE' => 51,
			'NULLIF' => 52,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'REPLICA' => 57,
			'PRIVILEGES' => 58,
			'ZONE' => 59,
			'LEAST' => 60,
			'STATISTICS' => 61,
			'ISNULL' => 62,
			'CALLED' => 63,
			'USTRING_CONSTANT' => 64,
			'SECURITY' => 65,
			'INCREMENT' => 67,
			'BINARY' => 68,
			'LEVEL' => 69,
			'FORCE' => 70,
			'CONCURRENTLY' => 71,
			'XBITSTRING_CONSTANT' => 72,
			'UPDATE' => 74,
			'PRESERVE' => 75,
			'CHARACTERISTICS' => 77,
			'XMLPI' => 76,
			'VALIDATE' => 78,
			"(" => 79,
			'ESTRING_CONSTANT' => 81,
			'STRICT' => 80,
			'VARYING' => 82,
			'AUTHORIZATION' => 83,
			'REASSIGN' => 84,
			'LABEL' => 86,
			'ROLLBACK' => 85,
			'OBJECT' => 87,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'TIMESTAMP' => 88,
			'RULE' => 91,
			'OPERATOR_NAME' => 93,
			'NUMERIC_CONSTANT' => 92,
			'INSERT' => 94,
			'HANDLER' => 95,
			'LOCATION' => 97,
			'EXISTS' => 96,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'BOOLEAN' => 99,
			'NULLS' => 101,
			'TYPE' => 102,
			'RESET' => 103,
			'NOWAIT' => 104,
			'PRIOR' => 105,
			'OFF' => 109,
			'BIGINT' => 108,
			'XMLSERIALIZE' => 107,
			'VERBOSE' => 110,
			'SET' => 111,
			'IMMEDIATE' => 113,
			'COMMENT' => 112,
			'DELIMITER' => 114,
			'SETOF' => 115,
			'INNER' => 116,
			'EXTRACT' => 117,
			'REINDEX' => 118,
			'PRECISION' => 119,
			'ACCESS' => 120,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'INOUT' => 123,
			'DEALLOCATE' => 124,
			'CATALOG' => 125,
			'OUT' => 126,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'XMLEXISTS' => 132,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'LEFT' => 135,
			'PRECEDING' => 136,
			'INTEGER_CONSTANT' => 137,
			'STABLE' => 138,
			'DEC' => 139,
			'XML' => 141,
			'XMLELEMENT' => 140,
			'SCROLL' => 142,
			'TEXT' => 143,
			'ALSO' => 144,
			'FUNCTION' => 145,
			'AGGREGATE' => 147,
			'SYSTEM' => 146,
			'FLOAT' => 148,
			'ATTRIBUTE' => 149,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'OVERLAPS' => 153,
			'DEFERRED' => 155,
			'VIEW' => 154,
			'REPEATABLE' => 156,
			'ALWAYS' => 157,
			'CONSTRAINTS' => 158,
			'FORWARD' => 159,
			'NOTHING' => 160,
			'EXCLUDING' => 161,
			'DECIMAL' => 162,
			'CHECKPOINT' => 163,
			'INDEXES' => 164,
			'CACHE' => 165,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'UNLISTEN' => 168,
			'LOAD' => 169,
			'FAMILY' => 170,
			'SMALLINT' => 171,
			'ASSERTION' => 172,
			'ILIKE' => 173,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'SIMILAR' => 176,
			'STDOUT' => 178,
			'BITSTRING_CONSTANT' => 180,
			'REVOKE' => 179,
			'INHERIT' => 181,
			'OUTER' => 182,
			'EXPLAIN' => 183,
			'OIDS' => 185,
			'VARCHAR' => 184,
			'AFTER' => 186,
			'CSV' => 187,
			'DISABLE' => 188,
			'VACUUM' => 189,
			'SCHEMA' => 190,
			'ROW' => 191,
			'LC_COLLATE' => 192,
			'FREEZE' => 193,
			'INDEX' => 194,
			'DEFINER' => 195,
			'XMLPARSE' => 196,
			'OWNED' => 200,
			'INCLUDING' => 199,
			'ADMIN' => 198,
			'CROSS' => 201,
			'INSTEAD' => 202,
			'NATIONAL' => 203,
			'EACH' => 204,
			'TRUSTED' => 205,
			'OWNER' => 207,
			'EXCLUSIVE' => 206,
			'CHARACTER' => 208,
			'STATEMENT' => 210,
			'CASCADE' => 209,
			'ASSIGNMENT' => 212,
			'MATCH' => 213,
			'MOVE' => 217,
			'DOUBLE' => 216,
			'CLASS' => 215,
			'TIME' => 218,
			'NUMERIC' => 219,
			'INLINE' => 221,
			'CURSOR' => 220,
			'EXTENSION' => 223,
			'ENCRYPTED' => 222,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'VALIDATOR' => 226,
			'XMLROOT' => 228,
			'UQUOTED_IDENTIFIER' => 229,
			'SUBSTRING' => 230,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'BETWEEN' => 233,
			'ABORT' => 234,
			'XMLATTRIBUTES' => 235,
			'VALUES' => 236,
			'TRUNCATE' => 238,
			'BEFORE' => 237,
			'SHOW' => 241,
			'ABSOLUTE' => 239,
			'IDENTIFIER' => 240,
			'GREATEST' => 242,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'WHITESPACE' => 247,
			'SECOND' => 249,
			'HOUR' => 250,
			'XMLFOREST' => 251,
			'FOLLOWING' => 253,
			'WRAPPER' => 254,
			'LISTEN' => 255,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'YEAR' => 258,
			'TEMP' => 260,
			'STANDALONE' => 259,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OPTIONS' => 263,
			'CAST' => 264,
			'YES' => 265,
			'PROCEDURAL' => 266,
			'SEQUENCE' => 267,
			'LIKE' => 268,
			'SIMPLE' => 269,
			'QUOTE' => 271,
			'IDENTITY' => 270,
			'POSITION' => 273,
			'EXECUTE' => 275,
			'DOMAIN' => 274,
			'UNKNOWN' => 276,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'SERVER' => 280,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'CONFIGURATION' => 283,
			'NAMES' => 284,
			'PARSER' => 285,
			'RENAME' => 286,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RIGHT' => 287,
			'IMPLICIT' => 290,
			'CLUSTER' => 291,
			'NATURAL' => 292,
			'XMLCONCAT' => 293,
			'PASSWORD' => 294,
			'CHAR' => 295,
			'RECHECK' => 296,
			'NEXT' => 297,
			'PREPARED' => 298,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'GRANTED' => 302,
			'BIT' => 301,
			'BEGIN' => 303,
			'NOTIFY' => 304,
			'HEADER' => 305,
			'INTERVAL' => 306,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'FUNCTIONS' => 309,
			'ISOLATION' => 310,
			'STORAGE' => 311,
			'STDIN' => 312,
			'RESTRICT' => 313,
			'CYCLE' => 316,
			'UNCOMMITTED' => 317,
			'IS' => 315,
			'TRIM' => 314,
			'MAXVALUE' => 318,
			'START' => 319,
			'DOCUMENT' => 321,
			'IF' => 320,
			'SAVEPOINT' => 322,
			'ROWS' => 323,
			'LAST' => 324,
			'MINVALUE' => 325,
			'KEY' => 326,
			'OPERATOR' => 327,
			'UNTIL' => 328,
			'HOLD' => 329,
			'ACTION' => 330,
			'WRITE' => 331,
			'ROLE' => 332,
			'NOTNULL' => 333,
			'SESSION' => 334,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'NONE' => 340,
			'TABLES' => 343,
			'VALID' => 342,
			'INT' => 341,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'UNENCRYPTED' => 346,
			'OVERLAY' => 347,
			'FIRST' => 349,
			'COALESCE' => 348,
			'VERSION' => 350
		},
		GOTOS => {
			'base_type' => 214,
			'expr_simple' => 277,
			'keywords_reserved_ok_for_functions_or_types' => 73,
			'keywords_notreserved_not_ok_for_functions_or_types' => 248,
			'literal_value' => 272,
			'identifier' => 66,
			'expr' => 354,
			'operator_expression' => 197,
			'cast_expression' => 106,
			'simple_type' => 211,
			'keywords_notreserved' => 252
		}
	},
	{#State 80
		DEFAULT => -296
	},
	{#State 81
		DEFAULT => -36
	},
	{#State 82
		DEFAULT => -324
	},
	{#State 83
		DEFAULT => -337
	},
	{#State 84
		DEFAULT => -253
	},
	{#State 85
		DEFAULT => -270
	},
	{#State 86
		DEFAULT => -199
	},
	{#State 87
		DEFAULT => -227
	},
	{#State 88
		DEFAULT => -392
	},
	{#State 89
		DEFAULT => -249
	},
	{#State 90
		DEFAULT => -146
	},
	{#State 91
		DEFAULT => -272
	},
	{#State 92
		DEFAULT => -39
	},
	{#State 93
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
			'ENCODING' => 28,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'FULL' => 36,
			'TREAT' => 37,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'DATA' => 44,
			'DAY' => 43,
			'PARTITION' => 42,
			'RANGE' => 41,
			'REF' => 47,
			'SHARE' => 46,
			'REAL' => 45,
			'OVER' => 48,
			'LARGE' => 50,
			'CURRENT_SCHEMA' => 49,
			'DELETE' => 51,
			'NULLIF' => 52,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'REPLICA' => 57,
			'PRIVILEGES' => 58,
			'ZONE' => 59,
			'LEAST' => 60,
			'STATISTICS' => 61,
			'ISNULL' => 62,
			'CALLED' => 63,
			'USTRING_CONSTANT' => 64,
			'SECURITY' => 65,
			'INCREMENT' => 67,
			'BINARY' => 68,
			'LEVEL' => 69,
			'FORCE' => 70,
			'CONCURRENTLY' => 71,
			'XBITSTRING_CONSTANT' => 72,
			'UPDATE' => 74,
			'PRESERVE' => 75,
			'CHARACTERISTICS' => 77,
			'XMLPI' => 76,
			'VALIDATE' => 78,
			"(" => 79,
			'ESTRING_CONSTANT' => 81,
			'STRICT' => 80,
			'VARYING' => 82,
			'AUTHORIZATION' => 83,
			'REASSIGN' => 84,
			'LABEL' => 86,
			'ROLLBACK' => 85,
			'OBJECT' => 87,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'TIMESTAMP' => 88,
			'RULE' => 91,
			'OPERATOR_NAME' => 93,
			'NUMERIC_CONSTANT' => 92,
			'INSERT' => 94,
			'HANDLER' => 95,
			'LOCATION' => 97,
			'EXISTS' => 96,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'BOOLEAN' => 99,
			'NULLS' => 101,
			'TYPE' => 102,
			'RESET' => 103,
			'NOWAIT' => 104,
			'PRIOR' => 105,
			'OFF' => 109,
			'BIGINT' => 108,
			'XMLSERIALIZE' => 107,
			'VERBOSE' => 110,
			'SET' => 111,
			'IMMEDIATE' => 113,
			'COMMENT' => 112,
			'DELIMITER' => 114,
			'SETOF' => 115,
			'INNER' => 116,
			'EXTRACT' => 117,
			'REINDEX' => 118,
			'PRECISION' => 119,
			'ACCESS' => 120,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'INOUT' => 123,
			'DEALLOCATE' => 124,
			'CATALOG' => 125,
			'OUT' => 126,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'XMLEXISTS' => 132,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'LEFT' => 135,
			'PRECEDING' => 136,
			'INTEGER_CONSTANT' => 137,
			'STABLE' => 138,
			'DEC' => 139,
			'XML' => 141,
			'XMLELEMENT' => 140,
			'SCROLL' => 142,
			'TEXT' => 143,
			'ALSO' => 144,
			'FUNCTION' => 145,
			'AGGREGATE' => 147,
			'SYSTEM' => 146,
			'FLOAT' => 148,
			'ATTRIBUTE' => 149,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'OVERLAPS' => 153,
			'DEFERRED' => 155,
			'VIEW' => 154,
			'REPEATABLE' => 156,
			'ALWAYS' => 157,
			'CONSTRAINTS' => 158,
			'FORWARD' => 159,
			'NOTHING' => 160,
			'EXCLUDING' => 161,
			'DECIMAL' => 162,
			'CHECKPOINT' => 163,
			'INDEXES' => 164,
			'CACHE' => 165,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'UNLISTEN' => 168,
			'LOAD' => 169,
			'FAMILY' => 170,
			'SMALLINT' => 171,
			'ASSERTION' => 172,
			'ILIKE' => 173,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'SIMILAR' => 176,
			'STDOUT' => 178,
			'BITSTRING_CONSTANT' => 180,
			'REVOKE' => 179,
			'INHERIT' => 181,
			'OUTER' => 182,
			'EXPLAIN' => 183,
			'OIDS' => 185,
			'VARCHAR' => 184,
			'AFTER' => 186,
			'CSV' => 187,
			'DISABLE' => 188,
			'VACUUM' => 189,
			'SCHEMA' => 190,
			'ROW' => 191,
			'LC_COLLATE' => 192,
			'FREEZE' => 193,
			'INDEX' => 194,
			'DEFINER' => 195,
			'XMLPARSE' => 196,
			'OWNED' => 200,
			'INCLUDING' => 199,
			'ADMIN' => 198,
			'CROSS' => 201,
			'INSTEAD' => 202,
			'NATIONAL' => 203,
			'EACH' => 204,
			'TRUSTED' => 205,
			'OWNER' => 207,
			'EXCLUSIVE' => 206,
			'CHARACTER' => 208,
			'STATEMENT' => 210,
			'CASCADE' => 209,
			'ASSIGNMENT' => 212,
			'MATCH' => 213,
			'MOVE' => 217,
			'DOUBLE' => 216,
			'CLASS' => 215,
			'TIME' => 218,
			'NUMERIC' => 219,
			'INLINE' => 221,
			'CURSOR' => 220,
			'EXTENSION' => 223,
			'ENCRYPTED' => 222,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'VALIDATOR' => 226,
			'XMLROOT' => 228,
			'UQUOTED_IDENTIFIER' => 229,
			'SUBSTRING' => 230,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'BETWEEN' => 233,
			'ABORT' => 234,
			'XMLATTRIBUTES' => 235,
			'VALUES' => 236,
			'TRUNCATE' => 238,
			'BEFORE' => 237,
			'SHOW' => 241,
			'ABSOLUTE' => 239,
			'IDENTIFIER' => 240,
			'GREATEST' => 242,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'WHITESPACE' => 247,
			'SECOND' => 249,
			'HOUR' => 250,
			'XMLFOREST' => 251,
			'FOLLOWING' => 253,
			'WRAPPER' => 254,
			'LISTEN' => 255,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'YEAR' => 258,
			'TEMP' => 260,
			'STANDALONE' => 259,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OPTIONS' => 263,
			'CAST' => 264,
			'YES' => 265,
			'PROCEDURAL' => 266,
			'SEQUENCE' => 267,
			'LIKE' => 268,
			'SIMPLE' => 269,
			'QUOTE' => 271,
			'IDENTITY' => 270,
			'POSITION' => 273,
			'EXECUTE' => 275,
			'DOMAIN' => 274,
			'UNKNOWN' => 276,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'SERVER' => 280,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'CONFIGURATION' => 283,
			'NAMES' => 284,
			'PARSER' => 285,
			'RENAME' => 286,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RIGHT' => 287,
			'IMPLICIT' => 290,
			'CLUSTER' => 291,
			'NATURAL' => 292,
			'XMLCONCAT' => 293,
			'PASSWORD' => 294,
			'CHAR' => 295,
			'RECHECK' => 296,
			'NEXT' => 297,
			'PREPARED' => 298,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'GRANTED' => 302,
			'BIT' => 301,
			'BEGIN' => 303,
			'NOTIFY' => 304,
			'HEADER' => 305,
			'INTERVAL' => 306,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'FUNCTIONS' => 309,
			'ISOLATION' => 310,
			'STORAGE' => 311,
			'STDIN' => 312,
			'RESTRICT' => 313,
			'CYCLE' => 316,
			'UNCOMMITTED' => 317,
			'IS' => 315,
			'TRIM' => 314,
			'MAXVALUE' => 318,
			'START' => 319,
			'DOCUMENT' => 321,
			'IF' => 320,
			'SAVEPOINT' => 322,
			'ROWS' => 323,
			'LAST' => 324,
			'MINVALUE' => 325,
			'KEY' => 326,
			'OPERATOR' => 327,
			'UNTIL' => 328,
			'HOLD' => 329,
			'ACTION' => 330,
			'WRITE' => 331,
			'ROLE' => 332,
			'NOTNULL' => 333,
			'SESSION' => 334,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'NONE' => 340,
			'TABLES' => 343,
			'VALID' => 342,
			'INT' => 341,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'UNENCRYPTED' => 346,
			'OVERLAY' => 347,
			'FIRST' => 349,
			'COALESCE' => 348,
			'VERSION' => 350
		},
		GOTOS => {
			'base_type' => 214,
			'expr_simple' => 277,
			'keywords_reserved_ok_for_functions_or_types' => 73,
			'keywords_notreserved_not_ok_for_functions_or_types' => 248,
			'literal_value' => 272,
			'identifier' => 66,
			'expr' => 355,
			'operator_expression' => 197,
			'cast_expression' => 106,
			'simple_type' => 211,
			'keywords_notreserved' => 252
		}
	},
	{#State 94
		DEFAULT => -194
	},
	{#State 95
		DEFAULT => -176
	},
	{#State 96
		DEFAULT => -368
	},
	{#State 97
		DEFAULT => -209
	},
	{#State 98
		DEFAULT => -183
	},
	{#State 99
		DEFAULT => -362
	},
	{#State 100
		DEFAULT => -259
	},
	{#State 101
		DEFAULT => -226
	},
	{#State 102
		DEFAULT => -310
	},
	{#State 103
		DEFAULT => -264
	},
	{#State 104
		DEFAULT => -225
	},
	{#State 105
		DEFAULT => -246
	},
	{#State 106
		DEFAULT => -13
	},
	{#State 107
		DEFAULT => -405
	},
	{#State 108
		DEFAULT => -360
	},
	{#State 109
		DEFAULT => -229
	},
	{#State 110
		DEFAULT => -358
	},
	{#State 111
		DEFAULT => -284
	},
	{#State 112
		DEFAULT => -120
	},
	{#State 113
		DEFAULT => -182
	},
	{#State 114
		DEFAULT => -145
	},
	{#State 115
		DEFAULT => -388
	},
	{#State 116
		DEFAULT => -345
	},
	{#State 117
		DEFAULT => -369
	},
	{#State 118
		DEFAULT => -257
	},
	{#State 119
		DEFAULT => -385
	},
	{#State 120
		DEFAULT => -91
	},
	{#State 121
		DEFAULT => -232
	},
	{#State 122
		DEFAULT => -121
	},
	{#State 123
		DEFAULT => -372
	},
	{#State 124
		DEFAULT => -139
	},
	{#State 125
		DEFAULT => -112
	},
	{#State 126
		DEFAULT => -382
	},
	{#State 127
		DEFAULT => -265
	},
	{#State 128
		DEFAULT => -211
	},
	{#State 129
		DEFAULT => -228
	},
	{#State 130
		DEFAULT => -316
	},
	{#State 131
		DEFAULT => -128
	},
	{#State 132
		DEFAULT => -400
	},
	{#State 133
		DEFAULT => -311
	},
	{#State 134
		DEFAULT => -252
	},
	{#State 135
		DEFAULT => -349
	},
	{#State 136
		DEFAULT => -242
	},
	{#State 137
		DEFAULT => -40
	},
	{#State 138
		DEFAULT => -288
	},
	{#State 139
		DEFAULT => -366
	},
	{#State 140
		DEFAULT => -399
	},
	{#State 141
		DEFAULT => -333
	},
	{#State 142
		DEFAULT => -275
	},
	{#State 143
		DEFAULT => -305
	},
	{#State 144
		DEFAULT => -97
	},
	{#State 145
		DEFAULT => -172
	},
	{#State 146
		DEFAULT => -299
	},
	{#State 147
		DEFAULT => -96
	},
	{#State 148
		DEFAULT => -370
	},
	{#State 149
		DEFAULT => -103
	},
	{#State 150
		DEFAULT => -93
	},
	{#State 151
		DEFAULT => -297
	},
	{#State 152
		DEFAULT => -301
	},
	{#State 153
		DEFAULT => -355
	},
	{#State 154
		DEFAULT => -326
	},
	{#State 155
		DEFAULT => -142
	},
	{#State 156
		DEFAULT => -261
	},
	{#State 157
		DEFAULT => -99
	},
	{#State 158
		DEFAULT => -126
	},
	{#State 159
		DEFAULT => -171
	},
	{#State 160
		DEFAULT => -223
	},
	{#State 161
		DEFAULT => -161
	},
	{#State 162
		DEFAULT => -367
	},
	{#State 163
		DEFAULT => -115
	},
	{#State 164
		DEFAULT => -188
	},
	{#State 165
		DEFAULT => -108
	},
	{#State 166
		DEFAULT => -122
	},
	{#State 167
		DEFAULT => -140
	},
	{#State 168
		DEFAULT => -315
	},
	{#State 169
		DEFAULT => -207
	},
	{#State 170
		DEFAULT => -167
	},
	{#State 171
		DEFAULT => -389
	},
	{#State 172
		DEFAULT => -100
	},
	{#State 173
		DEFAULT => -344
	},
	{#State 174
		DEFAULT => -174
	},
	{#State 175
		DEFAULT => -166
	},
	{#State 176
		DEFAULT => -357
	},
	{#State 177
		ACTIONS => {
			"-" => 363,
			"::" => 357,
			"<" => 364,
			"+" => 356,
			'ILIKE' => 361,
			"%" => 368,
			'BETWEEN' => 365,
			"^" => 358,
			"*" => 369,
			'OPERATOR_NAME' => 359,
			'AS' => 362,
			'LIKE' => 366,
			"/" => 360,
			"=" => 367,
			">" => 370
		},
		DEFAULT => -9
	},
	{#State 178
		DEFAULT => -294
	},
	{#State 179
		DEFAULT => -268
	},
	{#State 180
		DEFAULT => -37
	},
	{#State 181
		DEFAULT => -189
	},
	{#State 182
		DEFAULT => -353
	},
	{#State 183
		DEFAULT => -164
	},
	{#State 184
		DEFAULT => -396
	},
	{#State 185
		DEFAULT => -230
	},
	{#State 186
		DEFAULT => -95
	},
	{#State 187
		DEFAULT => -132
	},
	{#State 188
		DEFAULT => -148
	},
	{#State 189
		DEFAULT => -319
	},
	{#State 190
		DEFAULT => -274
	},
	{#State 191
		DEFAULT => -387
	},
	{#State 192
		DEFAULT => -203
	},
	{#State 193
		DEFAULT => -342
	},
	{#State 194
		DEFAULT => -187
	},
	{#State 195
		DEFAULT => -143
	},
	{#State 196
		DEFAULT => -402
	},
	{#State 197
		DEFAULT => -12
	},
	{#State 198
		DEFAULT => -94
	},
	{#State 199
		DEFAULT => -185
	},
	{#State 200
		DEFAULT => -234
	},
	{#State 201
		DEFAULT => -340
	},
	{#State 202
		DEFAULT => -195
	},
	{#State 203
		DEFAULT => -377
	},
	{#State 204
		DEFAULT => -154
	},
	{#State 205
		DEFAULT => -309
	},
	{#State 206
		DEFAULT => -162
	},
	{#State 207
		DEFAULT => -235
	},
	{#State 208
		DEFAULT => -364
	},
	{#State 209
		DEFAULT => -110
	},
	{#State 210
		DEFAULT => -291
	},
	{#State 211
		ACTIONS => {
			'USTRING_CONSTANT' => 64,
			'STRING_CONSTANT' => 17,
			'BITSTRING_CONSTANT' => 180,
			'NUMERIC_CONSTANT' => 92,
			'ESTRING_CONSTANT' => 81,
			'XBITSTRING_CONSTANT' => 72,
			'INTEGER_CONSTANT' => 137
		},
		GOTOS => {
			'literal_value' => 371
		}
	},
	{#State 212
		DEFAULT => -101
	},
	{#State 213
		DEFAULT => -212
	},
	{#State 214
		DEFAULT => -54
	},
	{#State 215
		DEFAULT => -116
	},
	{#State 216
		DEFAULT => -152
	},
	{#State 217
		DEFAULT => -218
	},
	{#State 218
		DEFAULT => -391
	},
	{#State 219
		DEFAULT => -381
	},
	{#State 220
		DEFAULT => -134
	},
	{#State 221
		DEFAULT => -191
	},
	{#State 222
		DEFAULT => -157
	},
	{#State 223
		DEFAULT => -165
	},
	{#State 224
		DEFAULT => -113
	},
	{#State 225
		DEFAULT => -255
	},
	{#State 226
		DEFAULT => -322
	},
	{#State 227
		DEFAULT => -7
	},
	{#State 228
		DEFAULT => -404
	},
	{#State 229
		DEFAULT => -42
	},
	{#State 230
		DEFAULT => -390
	},
	{#State 231
		DEFAULT => -111
	},
	{#State 232
		DEFAULT => -149
	},
	{#State 233
		DEFAULT => -359
	},
	{#State 234
		DEFAULT => -89
	},
	{#State 235
		DEFAULT => -397
	},
	{#State 236
		DEFAULT => -395
	},
	{#State 237
		DEFAULT => -105
	},
	{#State 238
		DEFAULT => -308
	},
	{#State 239
		DEFAULT => -90
	},
	{#State 240
		DEFAULT => -43
	},
	{#State 241
		DEFAULT => -286
	},
	{#State 242
		DEFAULT => -371
	},
	{#State 243
		DEFAULT => -241
	},
	{#State 244
		DEFAULT => -237
	},
	{#State 245
		DEFAULT => -280
	},
	{#State 246
		DEFAULT => -160
	},
	{#State 247
		DEFAULT => -328
	},
	{#State 248
		DEFAULT => -58
	},
	{#State 249
		DEFAULT => -277
	},
	{#State 250
		DEFAULT => -179
	},
	{#State 251
		DEFAULT => -401
	},
	{#State 252
		DEFAULT => -44
	},
	{#State 253
		DEFAULT => -169
	},
	{#State 254
		DEFAULT => -331
	},
	{#State 255
		DEFAULT => -206
	},
	{#State 256
		DEFAULT => -327
	},
	{#State 257
		DEFAULT => -200
	},
	{#State 258
		DEFAULT => -334
	},
	{#State 259
		DEFAULT => -289
	},
	{#State 260
		DEFAULT => -302
	},
	{#State 261
		DEFAULT => -130
	},
	{#State 262
		DEFAULT => -329
	},
	{#State 263
		DEFAULT => -233
	},
	{#State 264
		ACTIONS => {
			"(" => 372
		}
	},
	{#State 265
		DEFAULT => -335
	},
	{#State 266
		DEFAULT => -248
	},
	{#State 267
		DEFAULT => -279
	},
	{#State 268
		DEFAULT => -350
	},
	{#State 269
		DEFAULT => -287
	},
	{#State 270
		DEFAULT => -180
	},
	{#State 271
		DEFAULT => -250
	},
	{#State 272
		DEFAULT => -32
	},
	{#State 273
		DEFAULT => -384
	},
	{#State 274
		DEFAULT => -151
	},
	{#State 275
		DEFAULT => -163
	},
	{#State 276
		DEFAULT => -314
	},
	{#State 277
		DEFAULT => -11
	},
	{#State 278
		DEFAULT => -127
	},
	{#State 279
		DEFAULT => -41
	},
	{#State 280
		DEFAULT => -282
	},
	{#State 281
		DEFAULT => -258
	},
	{#State 282
		DEFAULT => -306
	},
	{#State 283
		DEFAULT => -124
	},
	{#State 284
		DEFAULT => -220
	},
	{#State 285
		DEFAULT => -236
	},
	{#State 286
		DEFAULT => -260
	},
	{#State 287
		DEFAULT => -356
	},
	{#State 288
		DEFAULT => -133
	},
	{#State 289
		DEFAULT => -98
	},
	{#State 290
		DEFAULT => -184
	},
	{#State 291
		DEFAULT => -118
	},
	{#State 292
		DEFAULT => -351
	},
	{#State 293
		DEFAULT => -398
	},
	{#State 294
		DEFAULT => -240
	},
	{#State 295
		DEFAULT => -363
	},
	{#State 296
		DEFAULT => -254
	},
	{#State 297
		DEFAULT => -221
	},
	{#State 298
		DEFAULT => -244
	},
	{#State 299
		DEFAULT => -304
	},
	{#State 300
		DEFAULT => -123
	},
	{#State 301
		DEFAULT => -361
	},
	{#State 302
		DEFAULT => -175
	},
	{#State 303
		DEFAULT => -106
	},
	{#State 304
		DEFAULT => -224
	},
	{#State 305
		DEFAULT => -177
	},
	{#State 306
		DEFAULT => -375
	},
	{#State 307
		DEFAULT => -204
	},
	{#State 308
		DEFAULT => -219
	},
	{#State 309
		DEFAULT => -173
	},
	{#State 310
		DEFAULT => -197
	},
	{#State 311
		DEFAULT => -295
	},
	{#State 312
		DEFAULT => -293
	},
	{#State 313
		DEFAULT => -266
	},
	{#State 314
		DEFAULT => -394
	},
	{#State 315
		DEFAULT => -346
	},
	{#State 316
		DEFAULT => -135
	},
	{#State 317
		DEFAULT => -312
	},
	{#State 318
		DEFAULT => -213
	},
	{#State 319
		DEFAULT => -290
	},
	{#State 320
		DEFAULT => -181
	},
	{#State 321
		DEFAULT => -150
	},
	{#State 322
		DEFAULT => -273
	},
	{#State 323
		DEFAULT => -271
	},
	{#State 324
		DEFAULT => -202
	},
	{#State 325
		DEFAULT => -215
	},
	{#State 326
		DEFAULT => -198
	},
	{#State 327
		DEFAULT => -231
	},
	{#State 328
		DEFAULT => -317
	},
	{#State 329
		DEFAULT => -178
	},
	{#State 330
		DEFAULT => -92
	},
	{#State 331
		DEFAULT => -332
	},
	{#State 332
		DEFAULT => -269
	},
	{#State 333
		DEFAULT => -352
	},
	{#State 334
		DEFAULT => -283
	},
	{#State 335
		DEFAULT => -129
	},
	{#State 336
		DEFAULT => -158
	},
	{#State 337
		DEFAULT => -137
	},
	{#State 338
		DEFAULT => -155
	},
	{#State 339
		DEFAULT => -208
	},
	{#State 340
		DEFAULT => -379
	},
	{#State 341
		DEFAULT => -373
	},
	{#State 342
		DEFAULT => -320
	},
	{#State 343
		DEFAULT => -300
	},
	{#State 344
		DEFAULT => -307
	},
	{#State 345
		DEFAULT => -119
	},
	{#State 346
		DEFAULT => -313
	},
	{#State 347
		DEFAULT => -383
	},
	{#State 348
		DEFAULT => -365
	},
	{#State 349
		DEFAULT => -168
	},
	{#State 350
		DEFAULT => -325
	},
	{#State 351
		DEFAULT => -3
	},
	{#State 352
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
			'ENCODING' => 28,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'FULL' => 36,
			'TREAT' => 37,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'DATA' => 44,
			'DAY' => 43,
			'PARTITION' => 42,
			'RANGE' => 41,
			'REF' => 47,
			'SHARE' => 46,
			'REAL' => 45,
			'OVER' => 48,
			'LARGE' => 50,
			'CURRENT_SCHEMA' => 49,
			'DELETE' => 51,
			'NULLIF' => 52,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'REPLICA' => 57,
			'PRIVILEGES' => 58,
			'ZONE' => 59,
			'LEAST' => 60,
			'STATISTICS' => 61,
			'ISNULL' => 62,
			'CALLED' => 63,
			'USTRING_CONSTANT' => 64,
			'SECURITY' => 65,
			'INCREMENT' => 67,
			'BINARY' => 68,
			'LEVEL' => 69,
			'FORCE' => 70,
			'CONCURRENTLY' => 71,
			'XBITSTRING_CONSTANT' => 72,
			'UPDATE' => 74,
			'PRESERVE' => 75,
			'CHARACTERISTICS' => 77,
			'XMLPI' => 76,
			'VALIDATE' => 78,
			"(" => 79,
			'ESTRING_CONSTANT' => 81,
			'STRICT' => 80,
			'VARYING' => 82,
			'AUTHORIZATION' => 83,
			'REASSIGN' => 84,
			'LABEL' => 86,
			'ROLLBACK' => 85,
			'OBJECT' => 87,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'TIMESTAMP' => 88,
			'RULE' => 91,
			'OPERATOR_NAME' => 93,
			'NUMERIC_CONSTANT' => 92,
			'INSERT' => 94,
			'HANDLER' => 95,
			'LOCATION' => 97,
			'EXISTS' => 96,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'BOOLEAN' => 99,
			'NULLS' => 101,
			'TYPE' => 102,
			'RESET' => 103,
			'NOWAIT' => 104,
			'PRIOR' => 105,
			'OFF' => 109,
			'BIGINT' => 108,
			'XMLSERIALIZE' => 107,
			'VERBOSE' => 110,
			'SET' => 111,
			'IMMEDIATE' => 113,
			'COMMENT' => 112,
			'DELIMITER' => 114,
			'SETOF' => 115,
			'INNER' => 116,
			'EXTRACT' => 117,
			'REINDEX' => 118,
			'PRECISION' => 119,
			'ACCESS' => 120,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'INOUT' => 123,
			'DEALLOCATE' => 124,
			'CATALOG' => 125,
			'OUT' => 126,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'XMLEXISTS' => 132,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'LEFT' => 135,
			'PRECEDING' => 136,
			'INTEGER_CONSTANT' => 137,
			'STABLE' => 138,
			'DEC' => 139,
			'XML' => 141,
			'XMLELEMENT' => 140,
			'SCROLL' => 142,
			'TEXT' => 143,
			'ALSO' => 144,
			'FUNCTION' => 145,
			'AGGREGATE' => 147,
			'SYSTEM' => 146,
			'FLOAT' => 148,
			'ATTRIBUTE' => 149,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'OVERLAPS' => 153,
			'DEFERRED' => 155,
			'VIEW' => 154,
			'REPEATABLE' => 156,
			'ALWAYS' => 157,
			'CONSTRAINTS' => 158,
			'FORWARD' => 159,
			'NOTHING' => 160,
			'EXCLUDING' => 161,
			'DECIMAL' => 162,
			'CHECKPOINT' => 163,
			'INDEXES' => 164,
			'CACHE' => 165,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'UNLISTEN' => 168,
			'LOAD' => 169,
			'FAMILY' => 170,
			'SMALLINT' => 171,
			'ASSERTION' => 172,
			'ILIKE' => 173,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'SIMILAR' => 176,
			'STDOUT' => 178,
			'BITSTRING_CONSTANT' => 180,
			'REVOKE' => 179,
			'INHERIT' => 181,
			'OUTER' => 182,
			'EXPLAIN' => 183,
			'OIDS' => 185,
			'VARCHAR' => 184,
			'AFTER' => 186,
			'CSV' => 187,
			'DISABLE' => 188,
			'VACUUM' => 189,
			'SCHEMA' => 190,
			'ROW' => 191,
			'LC_COLLATE' => 192,
			'FREEZE' => 193,
			'INDEX' => 194,
			'DEFINER' => 195,
			'XMLPARSE' => 196,
			'OWNED' => 200,
			'INCLUDING' => 199,
			'ADMIN' => 198,
			'CROSS' => 201,
			'INSTEAD' => 202,
			'NATIONAL' => 203,
			'EACH' => 204,
			'TRUSTED' => 205,
			'OWNER' => 207,
			'EXCLUSIVE' => 206,
			'CHARACTER' => 208,
			'STATEMENT' => 210,
			'CASCADE' => 209,
			'ASSIGNMENT' => 212,
			'MATCH' => 213,
			'MOVE' => 217,
			'DOUBLE' => 216,
			'CLASS' => 215,
			'TIME' => 218,
			'NUMERIC' => 219,
			'INLINE' => 221,
			'CURSOR' => 220,
			'EXTENSION' => 223,
			'ENCRYPTED' => 222,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'VALIDATOR' => 226,
			'XMLROOT' => 228,
			'UQUOTED_IDENTIFIER' => 229,
			'SUBSTRING' => 230,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'BETWEEN' => 233,
			'ABORT' => 234,
			'XMLATTRIBUTES' => 235,
			'VALUES' => 236,
			'TRUNCATE' => 238,
			'BEFORE' => 237,
			'SHOW' => 241,
			'ABSOLUTE' => 239,
			'IDENTIFIER' => 240,
			'GREATEST' => 242,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'WHITESPACE' => 247,
			'SECOND' => 249,
			'HOUR' => 250,
			'XMLFOREST' => 251,
			'FOLLOWING' => 253,
			'WRAPPER' => 254,
			'LISTEN' => 255,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'YEAR' => 258,
			'TEMP' => 260,
			'STANDALONE' => 259,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OPTIONS' => 263,
			'CAST' => 264,
			'YES' => 265,
			'PROCEDURAL' => 266,
			'SEQUENCE' => 267,
			'LIKE' => 268,
			'SIMPLE' => 269,
			'QUOTE' => 271,
			'IDENTITY' => 270,
			'POSITION' => 273,
			'EXECUTE' => 275,
			'DOMAIN' => 274,
			'UNKNOWN' => 276,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'SERVER' => 280,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'CONFIGURATION' => 283,
			'NAMES' => 284,
			'PARSER' => 285,
			'RENAME' => 286,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RIGHT' => 287,
			'IMPLICIT' => 290,
			'CLUSTER' => 291,
			'NATURAL' => 292,
			'XMLCONCAT' => 293,
			'PASSWORD' => 294,
			'CHAR' => 295,
			'RECHECK' => 296,
			'NEXT' => 297,
			'PREPARED' => 298,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'GRANTED' => 302,
			'BIT' => 301,
			'BEGIN' => 303,
			'NOTIFY' => 304,
			'HEADER' => 305,
			'INTERVAL' => 306,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'FUNCTIONS' => 309,
			'ISOLATION' => 310,
			'STORAGE' => 311,
			'STDIN' => 312,
			'RESTRICT' => 313,
			'CYCLE' => 316,
			'UNCOMMITTED' => 317,
			'IS' => 315,
			'TRIM' => 314,
			'MAXVALUE' => 318,
			'START' => 319,
			'DOCUMENT' => 321,
			'IF' => 320,
			'SAVEPOINT' => 322,
			'ROWS' => 323,
			'LAST' => 324,
			'MINVALUE' => 325,
			'KEY' => 326,
			'OPERATOR' => 327,
			'UNTIL' => 328,
			'HOLD' => 329,
			'ACTION' => 330,
			'WRITE' => 331,
			'ROLE' => 332,
			'NOTNULL' => 333,
			'SESSION' => 334,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'NONE' => 340,
			'TABLES' => 343,
			'VALID' => 342,
			'INT' => 341,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'UNENCRYPTED' => 346,
			'OVERLAY' => 347,
			'FIRST' => 349,
			'COALESCE' => 348,
			'VERSION' => 350
		},
		GOTOS => {
			'base_type' => 214,
			'expr_simple' => 277,
			'keywords_reserved_ok_for_functions_or_types' => 73,
			'keywords_notreserved_not_ok_for_functions_or_types' => 248,
			'literal_value' => 272,
			'identifier' => 66,
			'expr' => 177,
			'operator_expression' => 197,
			'result_column' => 373,
			'cast_expression' => 106,
			'simple_type' => 211,
			'keywords_notreserved' => 252
		}
	},
	{#State 353
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
			'ENCODING' => 28,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'FULL' => 36,
			'TREAT' => 37,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'DATA' => 44,
			'DAY' => 43,
			'PARTITION' => 42,
			'RANGE' => 41,
			'REF' => 47,
			'SHARE' => 46,
			'REAL' => 45,
			'OVER' => 48,
			'LARGE' => 50,
			'CURRENT_SCHEMA' => 49,
			'DELETE' => 51,
			'NULLIF' => 52,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'REPLICA' => 57,
			'PRIVILEGES' => 58,
			'ZONE' => 59,
			'LEAST' => 60,
			'STATISTICS' => 61,
			'ISNULL' => 62,
			'CALLED' => 63,
			'SECURITY' => 65,
			'INCREMENT' => 67,
			'BINARY' => 68,
			'LEVEL' => 69,
			'FORCE' => 70,
			'CONCURRENTLY' => 71,
			'UPDATE' => 74,
			'PRESERVE' => 75,
			'XMLPI' => 76,
			'CHARACTERISTICS' => 77,
			'VALIDATE' => 78,
			'STRICT' => 80,
			'VARYING' => 82,
			'AUTHORIZATION' => 83,
			'REASSIGN' => 84,
			'LABEL' => 86,
			'ROLLBACK' => 85,
			'OBJECT' => 87,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'TIMESTAMP' => 88,
			'RULE' => 91,
			'INSERT' => 94,
			'HANDLER' => 95,
			'LOCATION' => 97,
			'EXISTS' => 96,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'BOOLEAN' => 99,
			'NULLS' => 101,
			'TYPE' => 102,
			'RESET' => 103,
			'NOWAIT' => 104,
			'PRIOR' => 105,
			'OFF' => 109,
			'BIGINT' => 108,
			'XMLSERIALIZE' => 107,
			'VERBOSE' => 110,
			'SET' => 111,
			'IMMEDIATE' => 113,
			'COMMENT' => 112,
			'DELIMITER' => 114,
			'SETOF' => 115,
			'INNER' => 116,
			'EXTRACT' => 117,
			'REINDEX' => 118,
			'PRECISION' => 119,
			'ACCESS' => 120,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'INOUT' => 123,
			'DEALLOCATE' => 124,
			'CATALOG' => 125,
			'OUT' => 126,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'XMLEXISTS' => 132,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'LEFT' => 135,
			'PRECEDING' => 136,
			'STABLE' => 138,
			'DEC' => 139,
			'XMLELEMENT' => 140,
			'XML' => 141,
			'SCROLL' => 142,
			'TEXT' => 143,
			'FUNCTION' => 145,
			'ALSO' => 144,
			'SYSTEM' => 146,
			'AGGREGATE' => 147,
			'FLOAT' => 148,
			'ATTRIBUTE' => 149,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'OVERLAPS' => 153,
			'DEFERRED' => 155,
			'VIEW' => 154,
			'REPEATABLE' => 156,
			'ALWAYS' => 157,
			'CONSTRAINTS' => 158,
			'FORWARD' => 159,
			'NOTHING' => 160,
			'EXCLUDING' => 161,
			'DECIMAL' => 162,
			'CHECKPOINT' => 163,
			'INDEXES' => 164,
			'CACHE' => 165,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'UNLISTEN' => 168,
			'LOAD' => 169,
			'FAMILY' => 170,
			'SMALLINT' => 171,
			'ASSERTION' => 172,
			'ILIKE' => 173,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'SIMILAR' => 176,
			'STDOUT' => 178,
			'REVOKE' => 179,
			'INHERIT' => 181,
			'OUTER' => 182,
			'EXPLAIN' => 183,
			'OIDS' => 185,
			'VARCHAR' => 184,
			'AFTER' => 186,
			'CSV' => 187,
			'DISABLE' => 188,
			'VACUUM' => 189,
			'SCHEMA' => 190,
			'ROW' => 191,
			'LC_COLLATE' => 192,
			'FREEZE' => 193,
			'INDEX' => 194,
			'DEFINER' => 195,
			'XMLPARSE' => 196,
			'OWNED' => 200,
			'INCLUDING' => 199,
			'ADMIN' => 198,
			'CROSS' => 201,
			'INSTEAD' => 202,
			'NATIONAL' => 203,
			'EACH' => 204,
			'TRUSTED' => 205,
			'OWNER' => 207,
			'EXCLUSIVE' => 206,
			'CHARACTER' => 208,
			'STATEMENT' => 210,
			'CASCADE' => 209,
			'ASSIGNMENT' => 212,
			'MATCH' => 213,
			'MOVE' => 217,
			'DOUBLE' => 216,
			'CLASS' => 215,
			'TIME' => 218,
			'NUMERIC' => 219,
			'INLINE' => 221,
			'CURSOR' => 220,
			'EXTENSION' => 223,
			'ENCRYPTED' => 222,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'VALIDATOR' => 226,
			'XMLROOT' => 228,
			'UQUOTED_IDENTIFIER' => 229,
			'SUBSTRING' => 230,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'BETWEEN' => 233,
			'ABORT' => 234,
			'XMLATTRIBUTES' => 235,
			'VALUES' => 236,
			'TRUNCATE' => 238,
			'BEFORE' => 237,
			'SHOW' => 241,
			'ABSOLUTE' => 239,
			'IDENTIFIER' => 240,
			'GREATEST' => 242,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'WHITESPACE' => 247,
			'SECOND' => 249,
			'HOUR' => 250,
			'XMLFOREST' => 251,
			'FOLLOWING' => 253,
			'WRAPPER' => 254,
			'LISTEN' => 255,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'YEAR' => 258,
			'TEMP' => 260,
			'STANDALONE' => 259,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OPTIONS' => 263,
			'YES' => 265,
			'PROCEDURAL' => 266,
			'SEQUENCE' => 267,
			'LIKE' => 268,
			'SIMPLE' => 269,
			'QUOTE' => 271,
			'IDENTITY' => 270,
			'POSITION' => 273,
			'EXECUTE' => 275,
			'DOMAIN' => 274,
			'UNKNOWN' => 276,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'SERVER' => 280,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'NAMES' => 284,
			'CONFIGURATION' => 283,
			'RENAME' => 286,
			'PARSER' => 285,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RIGHT' => 287,
			'IMPLICIT' => 290,
			'CLUSTER' => 291,
			'NATURAL' => 292,
			'XMLCONCAT' => 293,
			'PASSWORD' => 294,
			'CHAR' => 295,
			'RECHECK' => 296,
			'NEXT' => 297,
			'PREPARED' => 298,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'GRANTED' => 302,
			'BIT' => 301,
			'BEGIN' => 303,
			'NOTIFY' => 304,
			'HEADER' => 305,
			'INTERVAL' => 306,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'FUNCTIONS' => 309,
			'ISOLATION' => 310,
			'STORAGE' => 311,
			'STDIN' => 312,
			'RESTRICT' => 313,
			'CYCLE' => 316,
			'UNCOMMITTED' => 317,
			'IS' => 315,
			'TRIM' => 314,
			'MAXVALUE' => 318,
			'START' => 319,
			'DOCUMENT' => 321,
			'IF' => 320,
			'SAVEPOINT' => 322,
			'ROWS' => 323,
			'LAST' => 324,
			'MINVALUE' => 325,
			'KEY' => 326,
			'OPERATOR' => 327,
			'UNTIL' => 328,
			'HOLD' => 329,
			'ACTION' => 330,
			'WRITE' => 331,
			'ROLE' => 332,
			'NOTNULL' => 333,
			'SESSION' => 334,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'NONE' => 340,
			'TABLES' => 343,
			'VALID' => 342,
			'INT' => 341,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'UNENCRYPTED' => 346,
			'OVERLAY' => 347,
			'FIRST' => 349,
			'COALESCE' => 348,
			'VERSION' => 350
		},
		GOTOS => {
			'base_type' => 375,
			'identifier' => 374,
			'keywords_reserved_ok_for_functions_or_types' => 73,
			'keywords_notreserved' => 252,
			'keywords_notreserved_not_ok_for_functions_or_types' => 248
		}
	},
	{#State 354
		ACTIONS => {
			"-" => 363,
			'LIKE' => 366,
			"::" => 357,
			"<" => 364,
			"+" => 356,
			'ILIKE' => 361,
			"%" => 368,
			"/" => 360,
			"=" => 367,
			'BETWEEN' => 365,
			"^" => 358,
			"*" => 369,
			'OPERATOR_NAME' => 359,
			")" => 376,
			">" => 370
		}
	},
	{#State 355
		ACTIONS => {
			"-" => 363,
			"::" => 357,
			"+" => 356,
			"%" => 368,
			"^" => 358,
			"*" => 369,
			"/" => 360
		},
		DEFAULT => -16
	},
	{#State 356
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
			'ENCODING' => 28,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'FULL' => 36,
			'TREAT' => 37,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'DATA' => 44,
			'DAY' => 43,
			'PARTITION' => 42,
			'RANGE' => 41,
			'REF' => 47,
			'SHARE' => 46,
			'REAL' => 45,
			'OVER' => 48,
			'LARGE' => 50,
			'CURRENT_SCHEMA' => 49,
			'DELETE' => 51,
			'NULLIF' => 52,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'REPLICA' => 57,
			'PRIVILEGES' => 58,
			'ZONE' => 59,
			'LEAST' => 60,
			'STATISTICS' => 61,
			'ISNULL' => 62,
			'CALLED' => 63,
			'USTRING_CONSTANT' => 64,
			'SECURITY' => 65,
			'INCREMENT' => 67,
			'BINARY' => 68,
			'LEVEL' => 69,
			'FORCE' => 70,
			'CONCURRENTLY' => 71,
			'XBITSTRING_CONSTANT' => 72,
			'UPDATE' => 74,
			'PRESERVE' => 75,
			'CHARACTERISTICS' => 77,
			'XMLPI' => 76,
			'VALIDATE' => 78,
			"(" => 79,
			'ESTRING_CONSTANT' => 81,
			'STRICT' => 80,
			'VARYING' => 82,
			'AUTHORIZATION' => 83,
			'REASSIGN' => 84,
			'LABEL' => 86,
			'ROLLBACK' => 85,
			'OBJECT' => 87,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'TIMESTAMP' => 88,
			'RULE' => 91,
			'OPERATOR_NAME' => 93,
			'NUMERIC_CONSTANT' => 92,
			'INSERT' => 94,
			'HANDLER' => 95,
			'LOCATION' => 97,
			'EXISTS' => 96,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'BOOLEAN' => 99,
			'NULLS' => 101,
			'TYPE' => 102,
			'RESET' => 103,
			'NOWAIT' => 104,
			'PRIOR' => 105,
			'OFF' => 109,
			'BIGINT' => 108,
			'XMLSERIALIZE' => 107,
			'VERBOSE' => 110,
			'SET' => 111,
			'IMMEDIATE' => 113,
			'COMMENT' => 112,
			'DELIMITER' => 114,
			'SETOF' => 115,
			'INNER' => 116,
			'EXTRACT' => 117,
			'REINDEX' => 118,
			'PRECISION' => 119,
			'ACCESS' => 120,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'INOUT' => 123,
			'DEALLOCATE' => 124,
			'CATALOG' => 125,
			'OUT' => 126,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'XMLEXISTS' => 132,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'LEFT' => 135,
			'PRECEDING' => 136,
			'INTEGER_CONSTANT' => 137,
			'STABLE' => 138,
			'DEC' => 139,
			'XML' => 141,
			'XMLELEMENT' => 140,
			'SCROLL' => 142,
			'TEXT' => 143,
			'ALSO' => 144,
			'FUNCTION' => 145,
			'AGGREGATE' => 147,
			'SYSTEM' => 146,
			'FLOAT' => 148,
			'ATTRIBUTE' => 149,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'OVERLAPS' => 153,
			'DEFERRED' => 155,
			'VIEW' => 154,
			'REPEATABLE' => 156,
			'ALWAYS' => 157,
			'CONSTRAINTS' => 158,
			'FORWARD' => 159,
			'NOTHING' => 160,
			'EXCLUDING' => 161,
			'DECIMAL' => 162,
			'CHECKPOINT' => 163,
			'INDEXES' => 164,
			'CACHE' => 165,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'UNLISTEN' => 168,
			'LOAD' => 169,
			'FAMILY' => 170,
			'SMALLINT' => 171,
			'ASSERTION' => 172,
			'ILIKE' => 173,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'SIMILAR' => 176,
			'STDOUT' => 178,
			'BITSTRING_CONSTANT' => 180,
			'REVOKE' => 179,
			'INHERIT' => 181,
			'OUTER' => 182,
			'EXPLAIN' => 183,
			'OIDS' => 185,
			'VARCHAR' => 184,
			'AFTER' => 186,
			'CSV' => 187,
			'DISABLE' => 188,
			'VACUUM' => 189,
			'SCHEMA' => 190,
			'ROW' => 191,
			'LC_COLLATE' => 192,
			'FREEZE' => 193,
			'INDEX' => 194,
			'DEFINER' => 195,
			'XMLPARSE' => 196,
			'OWNED' => 200,
			'INCLUDING' => 199,
			'ADMIN' => 198,
			'CROSS' => 201,
			'INSTEAD' => 202,
			'NATIONAL' => 203,
			'EACH' => 204,
			'TRUSTED' => 205,
			'OWNER' => 207,
			'EXCLUSIVE' => 206,
			'CHARACTER' => 208,
			'STATEMENT' => 210,
			'CASCADE' => 209,
			'ASSIGNMENT' => 212,
			'MATCH' => 213,
			'MOVE' => 217,
			'DOUBLE' => 216,
			'CLASS' => 215,
			'TIME' => 218,
			'NUMERIC' => 219,
			'INLINE' => 221,
			'CURSOR' => 220,
			'EXTENSION' => 223,
			'ENCRYPTED' => 222,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'VALIDATOR' => 226,
			'XMLROOT' => 228,
			'UQUOTED_IDENTIFIER' => 229,
			'SUBSTRING' => 230,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'BETWEEN' => 233,
			'ABORT' => 234,
			'XMLATTRIBUTES' => 235,
			'VALUES' => 236,
			'TRUNCATE' => 238,
			'BEFORE' => 237,
			'SHOW' => 241,
			'ABSOLUTE' => 239,
			'IDENTIFIER' => 240,
			'GREATEST' => 242,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'WHITESPACE' => 247,
			'SECOND' => 249,
			'HOUR' => 250,
			'XMLFOREST' => 251,
			'FOLLOWING' => 253,
			'WRAPPER' => 254,
			'LISTEN' => 255,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'YEAR' => 258,
			'TEMP' => 260,
			'STANDALONE' => 259,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OPTIONS' => 263,
			'CAST' => 264,
			'YES' => 265,
			'PROCEDURAL' => 266,
			'SEQUENCE' => 267,
			'LIKE' => 268,
			'SIMPLE' => 269,
			'QUOTE' => 271,
			'IDENTITY' => 270,
			'POSITION' => 273,
			'EXECUTE' => 275,
			'DOMAIN' => 274,
			'UNKNOWN' => 276,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'SERVER' => 280,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'CONFIGURATION' => 283,
			'NAMES' => 284,
			'PARSER' => 285,
			'RENAME' => 286,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RIGHT' => 287,
			'IMPLICIT' => 290,
			'CLUSTER' => 291,
			'NATURAL' => 292,
			'XMLCONCAT' => 293,
			'PASSWORD' => 294,
			'CHAR' => 295,
			'RECHECK' => 296,
			'NEXT' => 297,
			'PREPARED' => 298,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'GRANTED' => 302,
			'BIT' => 301,
			'BEGIN' => 303,
			'NOTIFY' => 304,
			'HEADER' => 305,
			'INTERVAL' => 306,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'FUNCTIONS' => 309,
			'ISOLATION' => 310,
			'STORAGE' => 311,
			'STDIN' => 312,
			'RESTRICT' => 313,
			'CYCLE' => 316,
			'UNCOMMITTED' => 317,
			'IS' => 315,
			'TRIM' => 314,
			'MAXVALUE' => 318,
			'START' => 319,
			'DOCUMENT' => 321,
			'IF' => 320,
			'SAVEPOINT' => 322,
			'ROWS' => 323,
			'LAST' => 324,
			'MINVALUE' => 325,
			'KEY' => 326,
			'OPERATOR' => 327,
			'UNTIL' => 328,
			'HOLD' => 329,
			'ACTION' => 330,
			'WRITE' => 331,
			'ROLE' => 332,
			'NOTNULL' => 333,
			'SESSION' => 334,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'NONE' => 340,
			'TABLES' => 343,
			'VALID' => 342,
			'INT' => 341,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'UNENCRYPTED' => 346,
			'OVERLAY' => 347,
			'FIRST' => 349,
			'COALESCE' => 348,
			'VERSION' => 350
		},
		GOTOS => {
			'base_type' => 214,
			'expr_simple' => 277,
			'keywords_reserved_ok_for_functions_or_types' => 73,
			'keywords_notreserved_not_ok_for_functions_or_types' => 248,
			'literal_value' => 272,
			'identifier' => 66,
			'expr' => 377,
			'operator_expression' => 197,
			'cast_expression' => 106,
			'simple_type' => 211,
			'keywords_notreserved' => 252
		}
	},
	{#State 357
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
			'ENCODING' => 28,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'FULL' => 36,
			'TREAT' => 37,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'DATA' => 44,
			'DAY' => 43,
			'PARTITION' => 42,
			'RANGE' => 41,
			'REF' => 47,
			'SHARE' => 46,
			'REAL' => 45,
			'OVER' => 48,
			'LARGE' => 50,
			'CURRENT_SCHEMA' => 49,
			'DELETE' => 51,
			'NULLIF' => 52,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'REPLICA' => 57,
			'PRIVILEGES' => 58,
			'ZONE' => 59,
			'LEAST' => 60,
			'STATISTICS' => 61,
			'ISNULL' => 62,
			'CALLED' => 63,
			'SECURITY' => 65,
			'INCREMENT' => 67,
			'BINARY' => 68,
			'LEVEL' => 69,
			'FORCE' => 70,
			'CONCURRENTLY' => 71,
			'UPDATE' => 74,
			'PRESERVE' => 75,
			'XMLPI' => 76,
			'CHARACTERISTICS' => 77,
			'VALIDATE' => 78,
			'STRICT' => 80,
			'VARYING' => 82,
			'AUTHORIZATION' => 83,
			'REASSIGN' => 84,
			'LABEL' => 86,
			'ROLLBACK' => 85,
			'OBJECT' => 87,
			'TIMESTAMP' => 379,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 91,
			'INSERT' => 94,
			'HANDLER' => 95,
			'LOCATION' => 97,
			'EXISTS' => 96,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'BOOLEAN' => 99,
			'NULLS' => 101,
			'TYPE' => 102,
			'RESET' => 103,
			'NOWAIT' => 104,
			'PRIOR' => 105,
			'OFF' => 109,
			'BIGINT' => 108,
			'XMLSERIALIZE' => 107,
			'VERBOSE' => 110,
			'SET' => 111,
			'IMMEDIATE' => 113,
			'COMMENT' => 112,
			'DELIMITER' => 114,
			'SETOF' => 115,
			'INNER' => 116,
			'EXTRACT' => 117,
			'REINDEX' => 118,
			'PRECISION' => 119,
			'ACCESS' => 120,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'INOUT' => 123,
			'DEALLOCATE' => 124,
			'CATALOG' => 125,
			'OUT' => 126,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'XMLEXISTS' => 132,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'LEFT' => 135,
			'PRECEDING' => 136,
			'STABLE' => 138,
			'DEC' => 139,
			'XMLELEMENT' => 140,
			'XML' => 141,
			'SCROLL' => 142,
			'TEXT' => 143,
			'FUNCTION' => 145,
			'ALSO' => 144,
			'SYSTEM' => 146,
			'AGGREGATE' => 147,
			'FLOAT' => 148,
			'ATTRIBUTE' => 149,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'OVERLAPS' => 153,
			'DEFERRED' => 155,
			'VIEW' => 154,
			'REPEATABLE' => 156,
			'ALWAYS' => 157,
			'CONSTRAINTS' => 158,
			'FORWARD' => 159,
			'NOTHING' => 160,
			'EXCLUDING' => 161,
			'DECIMAL' => 381,
			'CHECKPOINT' => 163,
			'INDEXES' => 164,
			'CACHE' => 165,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'UNLISTEN' => 168,
			'LOAD' => 169,
			'FAMILY' => 170,
			'SMALLINT' => 171,
			'ASSERTION' => 172,
			'ILIKE' => 173,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'SIMILAR' => 176,
			'STDOUT' => 178,
			'REVOKE' => 179,
			'INHERIT' => 181,
			'OUTER' => 182,
			'EXPLAIN' => 183,
			'VARCHAR' => 382,
			'OIDS' => 185,
			'AFTER' => 186,
			'CSV' => 187,
			'DISABLE' => 188,
			'VACUUM' => 189,
			'SCHEMA' => 190,
			'ROW' => 191,
			'LC_COLLATE' => 192,
			'FREEZE' => 193,
			'INDEX' => 194,
			'DEFINER' => 195,
			'XMLPARSE' => 196,
			'OWNED' => 200,
			'INCLUDING' => 199,
			'ADMIN' => 198,
			'CROSS' => 201,
			'INSTEAD' => 202,
			'NATIONAL' => 203,
			'EACH' => 204,
			'TRUSTED' => 205,
			'OWNER' => 207,
			'EXCLUSIVE' => 206,
			'CHARACTER' => 208,
			'STATEMENT' => 210,
			'CASCADE' => 209,
			'ASSIGNMENT' => 212,
			'MATCH' => 213,
			'MOVE' => 217,
			'DOUBLE' => 216,
			'CLASS' => 215,
			'TIME' => 384,
			'NUMERIC' => 385,
			'INLINE' => 221,
			'CURSOR' => 220,
			'EXTENSION' => 223,
			'ENCRYPTED' => 222,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'VALIDATOR' => 226,
			'XMLROOT' => 228,
			'UQUOTED_IDENTIFIER' => 229,
			'SUBSTRING' => 230,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'BETWEEN' => 233,
			'ABORT' => 234,
			'XMLATTRIBUTES' => 235,
			'VALUES' => 236,
			'TRUNCATE' => 238,
			'BEFORE' => 237,
			'SHOW' => 241,
			'ABSOLUTE' => 239,
			'IDENTIFIER' => 240,
			'GREATEST' => 242,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'WHITESPACE' => 247,
			'SECOND' => 249,
			'HOUR' => 250,
			'XMLFOREST' => 251,
			'FOLLOWING' => 253,
			'WRAPPER' => 254,
			'LISTEN' => 255,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'YEAR' => 258,
			'TEMP' => 260,
			'STANDALONE' => 259,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OPTIONS' => 263,
			'YES' => 265,
			'PROCEDURAL' => 266,
			'SEQUENCE' => 267,
			'LIKE' => 268,
			'SIMPLE' => 269,
			'QUOTE' => 271,
			'IDENTITY' => 270,
			'POSITION' => 273,
			'EXECUTE' => 275,
			'DOMAIN' => 274,
			'UNKNOWN' => 276,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'SERVER' => 280,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'NAMES' => 284,
			'CONFIGURATION' => 283,
			'RENAME' => 286,
			'PARSER' => 285,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RIGHT' => 287,
			'IMPLICIT' => 290,
			'CLUSTER' => 291,
			'NATURAL' => 292,
			'XMLCONCAT' => 293,
			'PASSWORD' => 294,
			'CHAR' => 295,
			'RECHECK' => 296,
			'NEXT' => 297,
			'PREPARED' => 298,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'GRANTED' => 302,
			'BIT' => 301,
			'BEGIN' => 303,
			'NOTIFY' => 304,
			'HEADER' => 305,
			'INTERVAL' => 388,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'FUNCTIONS' => 309,
			'ISOLATION' => 310,
			'STORAGE' => 311,
			'STDIN' => 312,
			'RESTRICT' => 313,
			'CYCLE' => 316,
			'UNCOMMITTED' => 317,
			'IS' => 315,
			'TRIM' => 314,
			'MAXVALUE' => 318,
			'START' => 319,
			'DOCUMENT' => 321,
			'IF' => 320,
			'SAVEPOINT' => 322,
			'ROWS' => 323,
			'LAST' => 324,
			'MINVALUE' => 325,
			'KEY' => 326,
			'OPERATOR' => 327,
			'UNTIL' => 328,
			'HOLD' => 329,
			'ACTION' => 330,
			'WRITE' => 331,
			'ROLE' => 332,
			'NOTNULL' => 333,
			'SESSION' => 334,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'NONE' => 340,
			'TABLES' => 343,
			'VALID' => 342,
			'INT' => 341,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'UNENCRYPTED' => 346,
			'OVERLAY' => 347,
			'FIRST' => 349,
			'COALESCE' => 348,
			'VERSION' => 350
		},
		GOTOS => {
			'base_type' => 214,
			'time_type' => 380,
			'keywords_reserved_ok_for_functions_or_types' => 73,
			'base_interval_type' => 389,
			'keywords_notreserved_not_ok_for_functions_or_types' => 248,
			'normal_type' => 378,
			'interval_type' => 387,
			'identifier' => 66,
			'timestamp_type' => 386,
			'simple_type' => 383,
			'keywords_notreserved' => 252
		}
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
			'ENCODING' => 28,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'FULL' => 36,
			'TREAT' => 37,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'DATA' => 44,
			'DAY' => 43,
			'PARTITION' => 42,
			'RANGE' => 41,
			'REF' => 47,
			'SHARE' => 46,
			'REAL' => 45,
			'OVER' => 48,
			'LARGE' => 50,
			'CURRENT_SCHEMA' => 49,
			'DELETE' => 51,
			'NULLIF' => 52,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'REPLICA' => 57,
			'PRIVILEGES' => 58,
			'ZONE' => 59,
			'LEAST' => 60,
			'STATISTICS' => 61,
			'ISNULL' => 62,
			'CALLED' => 63,
			'USTRING_CONSTANT' => 64,
			'SECURITY' => 65,
			'INCREMENT' => 67,
			'BINARY' => 68,
			'LEVEL' => 69,
			'FORCE' => 70,
			'CONCURRENTLY' => 71,
			'XBITSTRING_CONSTANT' => 72,
			'UPDATE' => 74,
			'PRESERVE' => 75,
			'CHARACTERISTICS' => 77,
			'XMLPI' => 76,
			'VALIDATE' => 78,
			"(" => 79,
			'ESTRING_CONSTANT' => 81,
			'STRICT' => 80,
			'VARYING' => 82,
			'AUTHORIZATION' => 83,
			'REASSIGN' => 84,
			'LABEL' => 86,
			'ROLLBACK' => 85,
			'OBJECT' => 87,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'TIMESTAMP' => 88,
			'RULE' => 91,
			'OPERATOR_NAME' => 93,
			'NUMERIC_CONSTANT' => 92,
			'INSERT' => 94,
			'HANDLER' => 95,
			'LOCATION' => 97,
			'EXISTS' => 96,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'BOOLEAN' => 99,
			'NULLS' => 101,
			'TYPE' => 102,
			'RESET' => 103,
			'NOWAIT' => 104,
			'PRIOR' => 105,
			'OFF' => 109,
			'BIGINT' => 108,
			'XMLSERIALIZE' => 107,
			'VERBOSE' => 110,
			'SET' => 111,
			'IMMEDIATE' => 113,
			'COMMENT' => 112,
			'DELIMITER' => 114,
			'SETOF' => 115,
			'INNER' => 116,
			'EXTRACT' => 117,
			'REINDEX' => 118,
			'PRECISION' => 119,
			'ACCESS' => 120,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'INOUT' => 123,
			'DEALLOCATE' => 124,
			'CATALOG' => 125,
			'OUT' => 126,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'XMLEXISTS' => 132,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'LEFT' => 135,
			'PRECEDING' => 136,
			'INTEGER_CONSTANT' => 137,
			'STABLE' => 138,
			'DEC' => 139,
			'XML' => 141,
			'XMLELEMENT' => 140,
			'SCROLL' => 142,
			'TEXT' => 143,
			'ALSO' => 144,
			'FUNCTION' => 145,
			'AGGREGATE' => 147,
			'SYSTEM' => 146,
			'FLOAT' => 148,
			'ATTRIBUTE' => 149,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'OVERLAPS' => 153,
			'DEFERRED' => 155,
			'VIEW' => 154,
			'REPEATABLE' => 156,
			'ALWAYS' => 157,
			'CONSTRAINTS' => 158,
			'FORWARD' => 159,
			'NOTHING' => 160,
			'EXCLUDING' => 161,
			'DECIMAL' => 162,
			'CHECKPOINT' => 163,
			'INDEXES' => 164,
			'CACHE' => 165,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'UNLISTEN' => 168,
			'LOAD' => 169,
			'FAMILY' => 170,
			'SMALLINT' => 171,
			'ASSERTION' => 172,
			'ILIKE' => 173,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'SIMILAR' => 176,
			'STDOUT' => 178,
			'BITSTRING_CONSTANT' => 180,
			'REVOKE' => 179,
			'INHERIT' => 181,
			'OUTER' => 182,
			'EXPLAIN' => 183,
			'OIDS' => 185,
			'VARCHAR' => 184,
			'AFTER' => 186,
			'CSV' => 187,
			'DISABLE' => 188,
			'VACUUM' => 189,
			'SCHEMA' => 190,
			'ROW' => 191,
			'LC_COLLATE' => 192,
			'FREEZE' => 193,
			'INDEX' => 194,
			'DEFINER' => 195,
			'XMLPARSE' => 196,
			'OWNED' => 200,
			'INCLUDING' => 199,
			'ADMIN' => 198,
			'CROSS' => 201,
			'INSTEAD' => 202,
			'NATIONAL' => 203,
			'EACH' => 204,
			'TRUSTED' => 205,
			'OWNER' => 207,
			'EXCLUSIVE' => 206,
			'CHARACTER' => 208,
			'STATEMENT' => 210,
			'CASCADE' => 209,
			'ASSIGNMENT' => 212,
			'MATCH' => 213,
			'MOVE' => 217,
			'DOUBLE' => 216,
			'CLASS' => 215,
			'TIME' => 218,
			'NUMERIC' => 219,
			'INLINE' => 221,
			'CURSOR' => 220,
			'EXTENSION' => 223,
			'ENCRYPTED' => 222,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'VALIDATOR' => 226,
			'XMLROOT' => 228,
			'UQUOTED_IDENTIFIER' => 229,
			'SUBSTRING' => 230,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'BETWEEN' => 233,
			'ABORT' => 234,
			'XMLATTRIBUTES' => 235,
			'VALUES' => 236,
			'TRUNCATE' => 238,
			'BEFORE' => 237,
			'SHOW' => 241,
			'ABSOLUTE' => 239,
			'IDENTIFIER' => 240,
			'GREATEST' => 242,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'WHITESPACE' => 247,
			'SECOND' => 249,
			'HOUR' => 250,
			'XMLFOREST' => 251,
			'FOLLOWING' => 253,
			'WRAPPER' => 254,
			'LISTEN' => 255,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'YEAR' => 258,
			'TEMP' => 260,
			'STANDALONE' => 259,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OPTIONS' => 263,
			'CAST' => 264,
			'YES' => 265,
			'PROCEDURAL' => 266,
			'SEQUENCE' => 267,
			'LIKE' => 268,
			'SIMPLE' => 269,
			'QUOTE' => 271,
			'IDENTITY' => 270,
			'POSITION' => 273,
			'EXECUTE' => 275,
			'DOMAIN' => 274,
			'UNKNOWN' => 276,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'SERVER' => 280,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'CONFIGURATION' => 283,
			'NAMES' => 284,
			'PARSER' => 285,
			'RENAME' => 286,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RIGHT' => 287,
			'IMPLICIT' => 290,
			'CLUSTER' => 291,
			'NATURAL' => 292,
			'XMLCONCAT' => 293,
			'PASSWORD' => 294,
			'CHAR' => 295,
			'RECHECK' => 296,
			'NEXT' => 297,
			'PREPARED' => 298,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'GRANTED' => 302,
			'BIT' => 301,
			'BEGIN' => 303,
			'NOTIFY' => 304,
			'HEADER' => 305,
			'INTERVAL' => 306,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'FUNCTIONS' => 309,
			'ISOLATION' => 310,
			'STORAGE' => 311,
			'STDIN' => 312,
			'RESTRICT' => 313,
			'CYCLE' => 316,
			'UNCOMMITTED' => 317,
			'IS' => 315,
			'TRIM' => 314,
			'MAXVALUE' => 318,
			'START' => 319,
			'DOCUMENT' => 321,
			'IF' => 320,
			'SAVEPOINT' => 322,
			'ROWS' => 323,
			'LAST' => 324,
			'MINVALUE' => 325,
			'KEY' => 326,
			'OPERATOR' => 327,
			'UNTIL' => 328,
			'HOLD' => 329,
			'ACTION' => 330,
			'WRITE' => 331,
			'ROLE' => 332,
			'NOTNULL' => 333,
			'SESSION' => 334,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'NONE' => 340,
			'TABLES' => 343,
			'VALID' => 342,
			'INT' => 341,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'UNENCRYPTED' => 346,
			'OVERLAY' => 347,
			'FIRST' => 349,
			'COALESCE' => 348,
			'VERSION' => 350
		},
		GOTOS => {
			'base_type' => 214,
			'expr_simple' => 277,
			'keywords_reserved_ok_for_functions_or_types' => 73,
			'keywords_notreserved_not_ok_for_functions_or_types' => 248,
			'literal_value' => 272,
			'identifier' => 66,
			'expr' => 390,
			'operator_expression' => 197,
			'cast_expression' => 106,
			'simple_type' => 211,
			'keywords_notreserved' => 252
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
			'ENCODING' => 28,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'FULL' => 36,
			'TREAT' => 37,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'DATA' => 44,
			'DAY' => 43,
			'PARTITION' => 42,
			'RANGE' => 41,
			'REF' => 47,
			'SHARE' => 46,
			'REAL' => 45,
			'OVER' => 48,
			'LARGE' => 50,
			'CURRENT_SCHEMA' => 49,
			'DELETE' => 51,
			'NULLIF' => 52,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'REPLICA' => 57,
			'PRIVILEGES' => 58,
			'ZONE' => 59,
			'LEAST' => 60,
			'STATISTICS' => 61,
			'ISNULL' => 62,
			'CALLED' => 63,
			'USTRING_CONSTANT' => 64,
			'SECURITY' => 65,
			'INCREMENT' => 67,
			'BINARY' => 68,
			'LEVEL' => 69,
			'FORCE' => 70,
			'CONCURRENTLY' => 71,
			'XBITSTRING_CONSTANT' => 72,
			'PRESERVE' => 75,
			'UPDATE' => 74,
			'CHARACTERISTICS' => 77,
			'XMLPI' => 76,
			'VALIDATE' => 78,
			"(" => 79,
			'ESTRING_CONSTANT' => 81,
			'STRICT' => 80,
			'VARYING' => 82,
			'AUTHORIZATION' => 83,
			'REASSIGN' => 84,
			'LABEL' => 86,
			'ROLLBACK' => 85,
			'OBJECT' => 87,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'TIMESTAMP' => 88,
			'RULE' => 91,
			'NUMERIC_CONSTANT' => 92,
			'INSERT' => 94,
			'HANDLER' => 95,
			'LOCATION' => 97,
			'EXISTS' => 96,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'BOOLEAN' => 99,
			'NULLS' => 101,
			'TYPE' => 102,
			'RESET' => 103,
			'NOWAIT' => 104,
			'PRIOR' => 105,
			'OFF' => 109,
			'BIGINT' => 108,
			'XMLSERIALIZE' => 107,
			'VERBOSE' => 110,
			'SET' => 111,
			'IMMEDIATE' => 113,
			'COMMENT' => 112,
			'DELIMITER' => 114,
			'SETOF' => 115,
			'INNER' => 116,
			'EXTRACT' => 117,
			'REINDEX' => 118,
			'PRECISION' => 119,
			'ACCESS' => 120,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'INOUT' => 123,
			'DEALLOCATE' => 124,
			'CATALOG' => 125,
			'OUT' => 126,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'XMLEXISTS' => 132,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'LEFT' => 135,
			'PRECEDING' => 136,
			'INTEGER_CONSTANT' => 137,
			'STABLE' => 138,
			'DEC' => 139,
			'XML' => 141,
			'XMLELEMENT' => 140,
			'SCROLL' => 142,
			'TEXT' => 143,
			'ALSO' => 144,
			'FUNCTION' => 145,
			'AGGREGATE' => 147,
			'SYSTEM' => 146,
			'FLOAT' => 148,
			'ATTRIBUTE' => 149,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'OVERLAPS' => 153,
			'DEFERRED' => 155,
			'VIEW' => 154,
			'REPEATABLE' => 156,
			'ALWAYS' => 157,
			'CONSTRAINTS' => 158,
			'FORWARD' => 159,
			'NOTHING' => 160,
			'EXCLUDING' => 161,
			'DECIMAL' => 162,
			'CHECKPOINT' => 163,
			'INDEXES' => 164,
			'CACHE' => 165,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'UNLISTEN' => 168,
			'LOAD' => 169,
			'FAMILY' => 170,
			'SMALLINT' => 171,
			'ASSERTION' => 172,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'SIMILAR' => 176,
			'STDOUT' => 178,
			'BITSTRING_CONSTANT' => 180,
			'REVOKE' => 179,
			'INHERIT' => 181,
			'OUTER' => 182,
			'EXPLAIN' => 183,
			'OIDS' => 185,
			'VARCHAR' => 184,
			'AFTER' => 186,
			'CSV' => 187,
			'DISABLE' => 188,
			'VACUUM' => 189,
			'SCHEMA' => 190,
			'ROW' => 191,
			'LC_COLLATE' => 192,
			'FREEZE' => 193,
			'INDEX' => 194,
			'DEFINER' => 195,
			'XMLPARSE' => 196,
			'OWNED' => 200,
			'INCLUDING' => 199,
			'ADMIN' => 198,
			'CROSS' => 201,
			'INSTEAD' => 202,
			'NATIONAL' => 203,
			'EACH' => 204,
			'TRUSTED' => 205,
			'OWNER' => 207,
			'EXCLUSIVE' => 206,
			'CHARACTER' => 208,
			'STATEMENT' => 210,
			'CASCADE' => 209,
			'ASSIGNMENT' => 212,
			'MATCH' => 213,
			'MOVE' => 217,
			'DOUBLE' => 216,
			'CLASS' => 215,
			'TIME' => 218,
			'NUMERIC' => 219,
			'INLINE' => 221,
			'CURSOR' => 220,
			'EXTENSION' => 223,
			'ENCRYPTED' => 222,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'VALIDATOR' => 226,
			'XMLROOT' => 228,
			'UQUOTED_IDENTIFIER' => 229,
			'SUBSTRING' => 230,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'ABORT' => 234,
			'XMLATTRIBUTES' => 235,
			'VALUES' => 236,
			'TRUNCATE' => 238,
			'BEFORE' => 237,
			'SHOW' => 241,
			'ABSOLUTE' => 239,
			'IDENTIFIER' => 240,
			'GREATEST' => 242,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'WHITESPACE' => 247,
			'SECOND' => 249,
			'HOUR' => 250,
			'XMLFOREST' => 251,
			'FOLLOWING' => 253,
			'WRAPPER' => 254,
			'LISTEN' => 255,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'YEAR' => 258,
			'TEMP' => 260,
			'STANDALONE' => 259,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OPTIONS' => 263,
			'CAST' => 264,
			'YES' => 265,
			'PROCEDURAL' => 266,
			'SEQUENCE' => 267,
			'SIMPLE' => 269,
			'QUOTE' => 271,
			'IDENTITY' => 270,
			'POSITION' => 273,
			'DOMAIN' => 274,
			'EXECUTE' => 275,
			'UNKNOWN' => 276,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'SERVER' => 280,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'CONFIGURATION' => 283,
			'NAMES' => 284,
			'PARSER' => 285,
			'RENAME' => 286,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RIGHT' => 287,
			'IMPLICIT' => 290,
			'CLUSTER' => 291,
			'NATURAL' => 292,
			'XMLCONCAT' => 293,
			'PASSWORD' => 294,
			'CHAR' => 295,
			'RECHECK' => 296,
			'NEXT' => 297,
			'PREPARED' => 298,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'GRANTED' => 302,
			'BIT' => 301,
			'BEGIN' => 303,
			'NOTIFY' => 304,
			'HEADER' => 305,
			'INTERVAL' => 306,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'FUNCTIONS' => 309,
			'ISOLATION' => 310,
			'STORAGE' => 311,
			'STDIN' => 312,
			'RESTRICT' => 313,
			'CYCLE' => 316,
			'UNCOMMITTED' => 317,
			'IS' => 315,
			'TRIM' => 314,
			'MAXVALUE' => 318,
			'START' => 319,
			'DOCUMENT' => 321,
			'IF' => 320,
			'SAVEPOINT' => 322,
			'ROWS' => 323,
			'LAST' => 324,
			'MINVALUE' => 325,
			'KEY' => 326,
			'OPERATOR' => 327,
			'UNTIL' => 328,
			'HOLD' => 329,
			'ACTION' => 330,
			'WRITE' => 331,
			'ROLE' => 332,
			'NOTNULL' => 333,
			'SESSION' => 334,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'NONE' => 340,
			'TABLES' => 343,
			'VALID' => 342,
			'INT' => 341,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'UNENCRYPTED' => 346,
			'OVERLAY' => 347,
			'FIRST' => 349,
			'COALESCE' => 348,
			'VERSION' => 350
		},
		DEFAULT => -15,
		GOTOS => {
			'base_type' => 214,
			'expr_simple' => 277,
			'keywords_reserved_ok_for_functions_or_types' => 73,
			'keywords_notreserved_not_ok_for_functions_or_types' => 248,
			'literal_value' => 272,
			'identifier' => 66,
			'expr' => 391,
			'operator_expression' => 197,
			'cast_expression' => 106,
			'simple_type' => 211,
			'keywords_notreserved' => 252
		}
	},
	{#State 360
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
			'ENCODING' => 28,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'FULL' => 36,
			'TREAT' => 37,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'DATA' => 44,
			'DAY' => 43,
			'PARTITION' => 42,
			'RANGE' => 41,
			'REF' => 47,
			'SHARE' => 46,
			'REAL' => 45,
			'OVER' => 48,
			'LARGE' => 50,
			'CURRENT_SCHEMA' => 49,
			'DELETE' => 51,
			'NULLIF' => 52,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'REPLICA' => 57,
			'PRIVILEGES' => 58,
			'ZONE' => 59,
			'LEAST' => 60,
			'STATISTICS' => 61,
			'ISNULL' => 62,
			'CALLED' => 63,
			'USTRING_CONSTANT' => 64,
			'SECURITY' => 65,
			'INCREMENT' => 67,
			'BINARY' => 68,
			'LEVEL' => 69,
			'FORCE' => 70,
			'CONCURRENTLY' => 71,
			'XBITSTRING_CONSTANT' => 72,
			'UPDATE' => 74,
			'PRESERVE' => 75,
			'CHARACTERISTICS' => 77,
			'XMLPI' => 76,
			'VALIDATE' => 78,
			"(" => 79,
			'ESTRING_CONSTANT' => 81,
			'STRICT' => 80,
			'VARYING' => 82,
			'AUTHORIZATION' => 83,
			'REASSIGN' => 84,
			'LABEL' => 86,
			'ROLLBACK' => 85,
			'OBJECT' => 87,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'TIMESTAMP' => 88,
			'RULE' => 91,
			'OPERATOR_NAME' => 93,
			'NUMERIC_CONSTANT' => 92,
			'INSERT' => 94,
			'HANDLER' => 95,
			'LOCATION' => 97,
			'EXISTS' => 96,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'BOOLEAN' => 99,
			'NULLS' => 101,
			'TYPE' => 102,
			'RESET' => 103,
			'NOWAIT' => 104,
			'PRIOR' => 105,
			'OFF' => 109,
			'BIGINT' => 108,
			'XMLSERIALIZE' => 107,
			'VERBOSE' => 110,
			'SET' => 111,
			'IMMEDIATE' => 113,
			'COMMENT' => 112,
			'DELIMITER' => 114,
			'SETOF' => 115,
			'INNER' => 116,
			'EXTRACT' => 117,
			'REINDEX' => 118,
			'PRECISION' => 119,
			'ACCESS' => 120,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'INOUT' => 123,
			'DEALLOCATE' => 124,
			'CATALOG' => 125,
			'OUT' => 126,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'XMLEXISTS' => 132,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'LEFT' => 135,
			'PRECEDING' => 136,
			'INTEGER_CONSTANT' => 137,
			'STABLE' => 138,
			'DEC' => 139,
			'XML' => 141,
			'XMLELEMENT' => 140,
			'SCROLL' => 142,
			'TEXT' => 143,
			'ALSO' => 144,
			'FUNCTION' => 145,
			'AGGREGATE' => 147,
			'SYSTEM' => 146,
			'FLOAT' => 148,
			'ATTRIBUTE' => 149,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'OVERLAPS' => 153,
			'DEFERRED' => 155,
			'VIEW' => 154,
			'REPEATABLE' => 156,
			'ALWAYS' => 157,
			'CONSTRAINTS' => 158,
			'FORWARD' => 159,
			'NOTHING' => 160,
			'EXCLUDING' => 161,
			'DECIMAL' => 162,
			'CHECKPOINT' => 163,
			'INDEXES' => 164,
			'CACHE' => 165,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'UNLISTEN' => 168,
			'LOAD' => 169,
			'FAMILY' => 170,
			'SMALLINT' => 171,
			'ASSERTION' => 172,
			'ILIKE' => 173,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'SIMILAR' => 176,
			'STDOUT' => 178,
			'BITSTRING_CONSTANT' => 180,
			'REVOKE' => 179,
			'INHERIT' => 181,
			'OUTER' => 182,
			'EXPLAIN' => 183,
			'OIDS' => 185,
			'VARCHAR' => 184,
			'AFTER' => 186,
			'CSV' => 187,
			'DISABLE' => 188,
			'VACUUM' => 189,
			'SCHEMA' => 190,
			'ROW' => 191,
			'LC_COLLATE' => 192,
			'FREEZE' => 193,
			'INDEX' => 194,
			'DEFINER' => 195,
			'XMLPARSE' => 196,
			'OWNED' => 200,
			'INCLUDING' => 199,
			'ADMIN' => 198,
			'CROSS' => 201,
			'INSTEAD' => 202,
			'NATIONAL' => 203,
			'EACH' => 204,
			'TRUSTED' => 205,
			'OWNER' => 207,
			'EXCLUSIVE' => 206,
			'CHARACTER' => 208,
			'STATEMENT' => 210,
			'CASCADE' => 209,
			'ASSIGNMENT' => 212,
			'MATCH' => 213,
			'MOVE' => 217,
			'DOUBLE' => 216,
			'CLASS' => 215,
			'TIME' => 218,
			'NUMERIC' => 219,
			'INLINE' => 221,
			'CURSOR' => 220,
			'EXTENSION' => 223,
			'ENCRYPTED' => 222,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'VALIDATOR' => 226,
			'XMLROOT' => 228,
			'UQUOTED_IDENTIFIER' => 229,
			'SUBSTRING' => 230,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'BETWEEN' => 233,
			'ABORT' => 234,
			'XMLATTRIBUTES' => 235,
			'VALUES' => 236,
			'TRUNCATE' => 238,
			'BEFORE' => 237,
			'SHOW' => 241,
			'ABSOLUTE' => 239,
			'IDENTIFIER' => 240,
			'GREATEST' => 242,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'WHITESPACE' => 247,
			'SECOND' => 249,
			'HOUR' => 250,
			'XMLFOREST' => 251,
			'FOLLOWING' => 253,
			'WRAPPER' => 254,
			'LISTEN' => 255,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'YEAR' => 258,
			'TEMP' => 260,
			'STANDALONE' => 259,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OPTIONS' => 263,
			'CAST' => 264,
			'YES' => 265,
			'PROCEDURAL' => 266,
			'SEQUENCE' => 267,
			'LIKE' => 268,
			'SIMPLE' => 269,
			'QUOTE' => 271,
			'IDENTITY' => 270,
			'POSITION' => 273,
			'EXECUTE' => 275,
			'DOMAIN' => 274,
			'UNKNOWN' => 276,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'SERVER' => 280,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'CONFIGURATION' => 283,
			'NAMES' => 284,
			'PARSER' => 285,
			'RENAME' => 286,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RIGHT' => 287,
			'IMPLICIT' => 290,
			'CLUSTER' => 291,
			'NATURAL' => 292,
			'XMLCONCAT' => 293,
			'PASSWORD' => 294,
			'CHAR' => 295,
			'RECHECK' => 296,
			'NEXT' => 297,
			'PREPARED' => 298,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'GRANTED' => 302,
			'BIT' => 301,
			'BEGIN' => 303,
			'NOTIFY' => 304,
			'HEADER' => 305,
			'INTERVAL' => 306,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'FUNCTIONS' => 309,
			'ISOLATION' => 310,
			'STORAGE' => 311,
			'STDIN' => 312,
			'RESTRICT' => 313,
			'CYCLE' => 316,
			'UNCOMMITTED' => 317,
			'IS' => 315,
			'TRIM' => 314,
			'MAXVALUE' => 318,
			'START' => 319,
			'DOCUMENT' => 321,
			'IF' => 320,
			'SAVEPOINT' => 322,
			'ROWS' => 323,
			'LAST' => 324,
			'MINVALUE' => 325,
			'KEY' => 326,
			'OPERATOR' => 327,
			'UNTIL' => 328,
			'HOLD' => 329,
			'ACTION' => 330,
			'WRITE' => 331,
			'ROLE' => 332,
			'NOTNULL' => 333,
			'SESSION' => 334,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'NONE' => 340,
			'TABLES' => 343,
			'VALID' => 342,
			'INT' => 341,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'UNENCRYPTED' => 346,
			'OVERLAY' => 347,
			'FIRST' => 349,
			'COALESCE' => 348,
			'VERSION' => 350
		},
		GOTOS => {
			'base_type' => 214,
			'expr_simple' => 277,
			'keywords_reserved_ok_for_functions_or_types' => 73,
			'keywords_notreserved_not_ok_for_functions_or_types' => 248,
			'literal_value' => 272,
			'identifier' => 66,
			'expr' => 392,
			'operator_expression' => 197,
			'cast_expression' => 106,
			'simple_type' => 211,
			'keywords_notreserved' => 252
		}
	},
	{#State 361
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
			'ENCODING' => 28,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'FULL' => 36,
			'TREAT' => 37,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'DATA' => 44,
			'DAY' => 43,
			'PARTITION' => 42,
			'RANGE' => 41,
			'REF' => 47,
			'SHARE' => 46,
			'REAL' => 45,
			'OVER' => 48,
			'LARGE' => 50,
			'CURRENT_SCHEMA' => 49,
			'DELETE' => 51,
			'NULLIF' => 52,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'REPLICA' => 57,
			'PRIVILEGES' => 58,
			'ZONE' => 59,
			'LEAST' => 60,
			'STATISTICS' => 61,
			'ISNULL' => 62,
			'CALLED' => 63,
			'USTRING_CONSTANT' => 64,
			'SECURITY' => 65,
			'INCREMENT' => 67,
			'BINARY' => 68,
			'LEVEL' => 69,
			'FORCE' => 70,
			'CONCURRENTLY' => 71,
			'XBITSTRING_CONSTANT' => 72,
			'UPDATE' => 74,
			'PRESERVE' => 75,
			'CHARACTERISTICS' => 77,
			'XMLPI' => 76,
			'VALIDATE' => 78,
			"(" => 79,
			'ESTRING_CONSTANT' => 81,
			'STRICT' => 80,
			'VARYING' => 82,
			'AUTHORIZATION' => 83,
			'REASSIGN' => 84,
			'LABEL' => 86,
			'ROLLBACK' => 85,
			'OBJECT' => 87,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'TIMESTAMP' => 88,
			'RULE' => 91,
			'OPERATOR_NAME' => 93,
			'NUMERIC_CONSTANT' => 92,
			'INSERT' => 94,
			'HANDLER' => 95,
			'LOCATION' => 97,
			'EXISTS' => 96,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'BOOLEAN' => 99,
			'NULLS' => 101,
			'TYPE' => 102,
			'RESET' => 103,
			'NOWAIT' => 104,
			'PRIOR' => 105,
			'OFF' => 109,
			'BIGINT' => 108,
			'XMLSERIALIZE' => 107,
			'VERBOSE' => 110,
			'SET' => 111,
			'IMMEDIATE' => 113,
			'COMMENT' => 112,
			'DELIMITER' => 114,
			'SETOF' => 115,
			'INNER' => 116,
			'EXTRACT' => 117,
			'REINDEX' => 118,
			'PRECISION' => 119,
			'ACCESS' => 120,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'INOUT' => 123,
			'DEALLOCATE' => 124,
			'CATALOG' => 125,
			'OUT' => 126,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'XMLEXISTS' => 132,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'LEFT' => 135,
			'PRECEDING' => 136,
			'INTEGER_CONSTANT' => 137,
			'STABLE' => 138,
			'DEC' => 139,
			'XML' => 141,
			'XMLELEMENT' => 140,
			'SCROLL' => 142,
			'TEXT' => 143,
			'ALSO' => 144,
			'FUNCTION' => 145,
			'AGGREGATE' => 147,
			'SYSTEM' => 146,
			'FLOAT' => 148,
			'ATTRIBUTE' => 149,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'OVERLAPS' => 153,
			'DEFERRED' => 155,
			'VIEW' => 154,
			'REPEATABLE' => 156,
			'ALWAYS' => 157,
			'CONSTRAINTS' => 158,
			'FORWARD' => 159,
			'NOTHING' => 160,
			'EXCLUDING' => 161,
			'DECIMAL' => 162,
			'CHECKPOINT' => 163,
			'INDEXES' => 164,
			'CACHE' => 165,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'UNLISTEN' => 168,
			'LOAD' => 169,
			'FAMILY' => 170,
			'SMALLINT' => 171,
			'ASSERTION' => 172,
			'ILIKE' => 173,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'SIMILAR' => 176,
			'STDOUT' => 178,
			'BITSTRING_CONSTANT' => 180,
			'REVOKE' => 179,
			'INHERIT' => 181,
			'OUTER' => 182,
			'EXPLAIN' => 183,
			'OIDS' => 185,
			'VARCHAR' => 184,
			'AFTER' => 186,
			'CSV' => 187,
			'DISABLE' => 188,
			'VACUUM' => 189,
			'SCHEMA' => 190,
			'ROW' => 191,
			'LC_COLLATE' => 192,
			'FREEZE' => 193,
			'INDEX' => 194,
			'DEFINER' => 195,
			'XMLPARSE' => 196,
			'OWNED' => 200,
			'INCLUDING' => 199,
			'ADMIN' => 198,
			'CROSS' => 201,
			'INSTEAD' => 202,
			'NATIONAL' => 203,
			'EACH' => 204,
			'TRUSTED' => 205,
			'OWNER' => 207,
			'EXCLUSIVE' => 206,
			'CHARACTER' => 208,
			'STATEMENT' => 210,
			'CASCADE' => 209,
			'ASSIGNMENT' => 212,
			'MATCH' => 213,
			'MOVE' => 217,
			'DOUBLE' => 216,
			'CLASS' => 215,
			'TIME' => 218,
			'NUMERIC' => 219,
			'INLINE' => 221,
			'CURSOR' => 220,
			'EXTENSION' => 223,
			'ENCRYPTED' => 222,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'VALIDATOR' => 226,
			'XMLROOT' => 228,
			'UQUOTED_IDENTIFIER' => 229,
			'SUBSTRING' => 230,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'BETWEEN' => 233,
			'ABORT' => 234,
			'XMLATTRIBUTES' => 235,
			'VALUES' => 236,
			'TRUNCATE' => 238,
			'BEFORE' => 237,
			'SHOW' => 241,
			'ABSOLUTE' => 239,
			'IDENTIFIER' => 240,
			'GREATEST' => 242,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'WHITESPACE' => 247,
			'SECOND' => 249,
			'HOUR' => 250,
			'XMLFOREST' => 251,
			'FOLLOWING' => 253,
			'WRAPPER' => 254,
			'LISTEN' => 255,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'YEAR' => 258,
			'TEMP' => 260,
			'STANDALONE' => 259,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OPTIONS' => 263,
			'CAST' => 264,
			'YES' => 265,
			'PROCEDURAL' => 266,
			'SEQUENCE' => 267,
			'LIKE' => 268,
			'SIMPLE' => 269,
			'QUOTE' => 271,
			'IDENTITY' => 270,
			'POSITION' => 273,
			'EXECUTE' => 275,
			'DOMAIN' => 274,
			'UNKNOWN' => 276,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'SERVER' => 280,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'CONFIGURATION' => 283,
			'NAMES' => 284,
			'PARSER' => 285,
			'RENAME' => 286,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RIGHT' => 287,
			'IMPLICIT' => 290,
			'CLUSTER' => 291,
			'NATURAL' => 292,
			'XMLCONCAT' => 293,
			'PASSWORD' => 294,
			'CHAR' => 295,
			'RECHECK' => 296,
			'NEXT' => 297,
			'PREPARED' => 298,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'GRANTED' => 302,
			'BIT' => 301,
			'BEGIN' => 303,
			'NOTIFY' => 304,
			'HEADER' => 305,
			'INTERVAL' => 306,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'FUNCTIONS' => 309,
			'ISOLATION' => 310,
			'STORAGE' => 311,
			'STDIN' => 312,
			'RESTRICT' => 313,
			'CYCLE' => 316,
			'UNCOMMITTED' => 317,
			'IS' => 315,
			'TRIM' => 314,
			'MAXVALUE' => 318,
			'START' => 319,
			'DOCUMENT' => 321,
			'IF' => 320,
			'SAVEPOINT' => 322,
			'ROWS' => 323,
			'LAST' => 324,
			'MINVALUE' => 325,
			'KEY' => 326,
			'OPERATOR' => 327,
			'UNTIL' => 328,
			'HOLD' => 329,
			'ACTION' => 330,
			'WRITE' => 331,
			'ROLE' => 332,
			'NOTNULL' => 333,
			'SESSION' => 334,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'NONE' => 340,
			'TABLES' => 343,
			'VALID' => 342,
			'INT' => 341,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'UNENCRYPTED' => 346,
			'OVERLAY' => 347,
			'FIRST' => 349,
			'COALESCE' => 348,
			'VERSION' => 350
		},
		GOTOS => {
			'base_type' => 214,
			'expr_simple' => 277,
			'keywords_reserved_ok_for_functions_or_types' => 73,
			'keywords_notreserved_not_ok_for_functions_or_types' => 248,
			'literal_value' => 272,
			'identifier' => 66,
			'expr' => 393,
			'operator_expression' => 197,
			'cast_expression' => 106,
			'simple_type' => 211,
			'keywords_notreserved' => 252
		}
	},
	{#State 362
		ACTIONS => {
			'VACUUM' => 189,
			'INPUT' => 10,
			'SYSID' => 9,
			'REPLACE' => 12,
			'SERIALIZABLE' => 11,
			'SCHEMA' => 190,
			'AT' => 14,
			'INSENSITIVE' => 13,
			'RETURNS' => 15,
			'LC_COLLATE' => 192,
			'INDEX' => 194,
			'DEFINER' => 195,
			'INVOKER' => 18,
			'WORK' => 19,
			'ADMIN' => 198,
			'INCLUDING' => 199,
			'OWNED' => 200,
			'PASSING' => 20,
			'INSTEAD' => 202,
			'MODE' => 21,
			'INHERITS' => 23,
			'VALUE' => 24,
			'ESCAPE' => 25,
			'DROP' => 26,
			'MONTH' => 27,
			'EACH' => 204,
			'ENCODING' => 28,
			'TRUSTED' => 205,
			'EXCLUSIVE' => 206,
			'OWNER' => 207,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'CASCADE' => 209,
			'STATEMENT' => 210,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'ASSIGNMENT' => 212,
			'RANGE' => 41,
			'PARTITION' => 42,
			'DAY' => 43,
			'DATA' => 44,
			'SHARE' => 46,
			'REF' => 47,
			'MATCH' => 213,
			'CLASS' => 215,
			'DOUBLE' => 216,
			'MOVE' => 217,
			'LARGE' => 50,
			'DELETE' => 51,
			'CURSOR' => 220,
			'INLINE' => 221,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'ENCRYPTED' => 222,
			'EXTENSION' => 223,
			'REPLICA' => 57,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'PRIVILEGES' => 58,
			'VALIDATOR' => 226,
			'UQUOTED_IDENTIFIER' => 229,
			'ZONE' => 59,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'STATISTICS' => 61,
			'CALLED' => 63,
			'SECURITY' => 65,
			'ABORT' => 234,
			'INCREMENT' => 67,
			'LEVEL' => 69,
			'FORCE' => 70,
			'BEFORE' => 237,
			'TRUNCATE' => 238,
			'IDENTIFIER' => 240,
			'ABSOLUTE' => 239,
			'SHOW' => 241,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'UPDATE' => 74,
			'PRESERVE' => 75,
			'SECOND' => 249,
			'WHITESPACE' => 247,
			'CHARACTERISTICS' => 77,
			'VALIDATE' => 78,
			'STRICT' => 80,
			'HOUR' => 250,
			'VARYING' => 82,
			'FOLLOWING' => 253,
			'LISTEN' => 255,
			'WRAPPER' => 254,
			'REASSIGN' => 84,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'STANDALONE' => 259,
			'TEMP' => 260,
			'YEAR' => 258,
			'ROLLBACK' => 85,
			'LABEL' => 86,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OBJECT' => 87,
			'PROCEDURE' => 89,
			'DELIMITERS' => 90,
			'RULE' => 91,
			'OPTIONS' => 263,
			'INSERT' => 94,
			'PROCEDURAL' => 266,
			'YES' => 265,
			'HANDLER' => 95,
			'SEQUENCE' => 267,
			'SIMPLE' => 269,
			'LOCATION' => 97,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'NULLS' => 101,
			'TYPE' => 102,
			'IDENTITY' => 270,
			'QUOTE' => 271,
			'RESET' => 103,
			'NOWAIT' => 104,
			'DOMAIN' => 274,
			'EXECUTE' => 275,
			'PRIOR' => 105,
			'UNKNOWN' => 276,
			'OFF' => 109,
			'SET' => 111,
			'IMMEDIATE' => 113,
			'COMMENT' => 112,
			'DELIMITER' => 114,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'REINDEX' => 118,
			'SERVER' => 280,
			'ACCESS' => 120,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'CONFIGURATION' => 283,
			'NAMES' => 284,
			'DEALLOCATE' => 124,
			'PARSER' => 285,
			'RENAME' => 286,
			'CATALOG' => 125,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'IMPLICIT' => 290,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'CLUSTER' => 291,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'PRECEDING' => 136,
			'STABLE' => 138,
			'PASSWORD' => 294,
			'RECHECK' => 296,
			'NEXT' => 297,
			'PREPARED' => 298,
			'XML' => 141,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'SCROLL' => 142,
			'TEXT' => 143,
			'GRANTED' => 302,
			'BEGIN' => 303,
			'NOTIFY' => 304,
			'FUNCTION' => 145,
			'ALSO' => 144,
			'HEADER' => 305,
			'SYSTEM' => 146,
			'AGGREGATE' => 147,
			'ATTRIBUTE' => 149,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'FUNCTIONS' => 309,
			'ISOLATION' => 310,
			'STORAGE' => 311,
			'STDIN' => 312,
			'VIEW' => 154,
			'DEFERRED' => 155,
			'REPEATABLE' => 156,
			'RESTRICT' => 313,
			'CYCLE' => 316,
			'UNCOMMITTED' => 317,
			'ALWAYS' => 157,
			'MAXVALUE' => 318,
			'FORWARD' => 159,
			'CONSTRAINTS' => 158,
			'START' => 319,
			'NOTHING' => 160,
			'DOCUMENT' => 321,
			'IF' => 320,
			'SAVEPOINT' => 322,
			'EXCLUDING' => 161,
			'ROWS' => 323,
			'LAST' => 324,
			'MINVALUE' => 325,
			'INDEXES' => 164,
			'CHECKPOINT' => 163,
			'KEY' => 326,
			'CACHE' => 165,
			'OPERATOR' => 327,
			'UNTIL' => 328,
			'HOLD' => 329,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'ACTION' => 330,
			'UNLISTEN' => 168,
			'WRITE' => 331,
			'LOAD' => 169,
			'ROLE' => 332,
			'SESSION' => 334,
			'FAMILY' => 170,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ASSERTION' => 172,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'STDOUT' => 178,
			'REVOKE' => 179,
			'TABLES' => 343,
			'VALID' => 342,
			'INHERIT' => 181,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'EXPLAIN' => 183,
			'UNENCRYPTED' => 346,
			'OIDS' => 185,
			'FIRST' => 349,
			'AFTER' => 186,
			'DISABLE' => 188,
			'CSV' => 187,
			'VERSION' => 350
		},
		GOTOS => {
			'identifier' => 394,
			'keywords_notreserved' => 252
		}
	},
	{#State 363
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
			'ENCODING' => 28,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'FULL' => 36,
			'TREAT' => 37,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'DATA' => 44,
			'DAY' => 43,
			'PARTITION' => 42,
			'RANGE' => 41,
			'REF' => 47,
			'SHARE' => 46,
			'REAL' => 45,
			'OVER' => 48,
			'LARGE' => 50,
			'CURRENT_SCHEMA' => 49,
			'DELETE' => 51,
			'NULLIF' => 52,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'REPLICA' => 57,
			'PRIVILEGES' => 58,
			'ZONE' => 59,
			'LEAST' => 60,
			'STATISTICS' => 61,
			'ISNULL' => 62,
			'CALLED' => 63,
			'USTRING_CONSTANT' => 64,
			'SECURITY' => 65,
			'INCREMENT' => 67,
			'BINARY' => 68,
			'LEVEL' => 69,
			'FORCE' => 70,
			'CONCURRENTLY' => 71,
			'XBITSTRING_CONSTANT' => 72,
			'UPDATE' => 74,
			'PRESERVE' => 75,
			'CHARACTERISTICS' => 77,
			'XMLPI' => 76,
			'VALIDATE' => 78,
			"(" => 79,
			'ESTRING_CONSTANT' => 81,
			'STRICT' => 80,
			'VARYING' => 82,
			'AUTHORIZATION' => 83,
			'REASSIGN' => 84,
			'LABEL' => 86,
			'ROLLBACK' => 85,
			'OBJECT' => 87,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'TIMESTAMP' => 88,
			'RULE' => 91,
			'OPERATOR_NAME' => 93,
			'NUMERIC_CONSTANT' => 92,
			'INSERT' => 94,
			'HANDLER' => 95,
			'LOCATION' => 97,
			'EXISTS' => 96,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'BOOLEAN' => 99,
			'NULLS' => 101,
			'TYPE' => 102,
			'RESET' => 103,
			'NOWAIT' => 104,
			'PRIOR' => 105,
			'OFF' => 109,
			'BIGINT' => 108,
			'XMLSERIALIZE' => 107,
			'VERBOSE' => 110,
			'SET' => 111,
			'IMMEDIATE' => 113,
			'COMMENT' => 112,
			'DELIMITER' => 114,
			'SETOF' => 115,
			'INNER' => 116,
			'EXTRACT' => 117,
			'REINDEX' => 118,
			'PRECISION' => 119,
			'ACCESS' => 120,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'INOUT' => 123,
			'DEALLOCATE' => 124,
			'CATALOG' => 125,
			'OUT' => 126,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'XMLEXISTS' => 132,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'LEFT' => 135,
			'PRECEDING' => 136,
			'INTEGER_CONSTANT' => 137,
			'STABLE' => 138,
			'DEC' => 139,
			'XML' => 141,
			'XMLELEMENT' => 140,
			'SCROLL' => 142,
			'TEXT' => 143,
			'ALSO' => 144,
			'FUNCTION' => 145,
			'AGGREGATE' => 147,
			'SYSTEM' => 146,
			'FLOAT' => 148,
			'ATTRIBUTE' => 149,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'OVERLAPS' => 153,
			'DEFERRED' => 155,
			'VIEW' => 154,
			'REPEATABLE' => 156,
			'ALWAYS' => 157,
			'CONSTRAINTS' => 158,
			'FORWARD' => 159,
			'NOTHING' => 160,
			'EXCLUDING' => 161,
			'DECIMAL' => 162,
			'CHECKPOINT' => 163,
			'INDEXES' => 164,
			'CACHE' => 165,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'UNLISTEN' => 168,
			'LOAD' => 169,
			'FAMILY' => 170,
			'SMALLINT' => 171,
			'ASSERTION' => 172,
			'ILIKE' => 173,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'SIMILAR' => 176,
			'STDOUT' => 178,
			'BITSTRING_CONSTANT' => 180,
			'REVOKE' => 179,
			'INHERIT' => 181,
			'OUTER' => 182,
			'EXPLAIN' => 183,
			'OIDS' => 185,
			'VARCHAR' => 184,
			'AFTER' => 186,
			'CSV' => 187,
			'DISABLE' => 188,
			'VACUUM' => 189,
			'SCHEMA' => 190,
			'ROW' => 191,
			'LC_COLLATE' => 192,
			'FREEZE' => 193,
			'INDEX' => 194,
			'DEFINER' => 195,
			'XMLPARSE' => 196,
			'OWNED' => 200,
			'INCLUDING' => 199,
			'ADMIN' => 198,
			'CROSS' => 201,
			'INSTEAD' => 202,
			'NATIONAL' => 203,
			'EACH' => 204,
			'TRUSTED' => 205,
			'OWNER' => 207,
			'EXCLUSIVE' => 206,
			'CHARACTER' => 208,
			'STATEMENT' => 210,
			'CASCADE' => 209,
			'ASSIGNMENT' => 212,
			'MATCH' => 213,
			'MOVE' => 217,
			'DOUBLE' => 216,
			'CLASS' => 215,
			'TIME' => 218,
			'NUMERIC' => 219,
			'INLINE' => 221,
			'CURSOR' => 220,
			'EXTENSION' => 223,
			'ENCRYPTED' => 222,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'VALIDATOR' => 226,
			'XMLROOT' => 228,
			'UQUOTED_IDENTIFIER' => 229,
			'SUBSTRING' => 230,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'BETWEEN' => 233,
			'ABORT' => 234,
			'XMLATTRIBUTES' => 235,
			'VALUES' => 236,
			'TRUNCATE' => 238,
			'BEFORE' => 237,
			'SHOW' => 241,
			'ABSOLUTE' => 239,
			'IDENTIFIER' => 240,
			'GREATEST' => 242,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'WHITESPACE' => 247,
			'SECOND' => 249,
			'HOUR' => 250,
			'XMLFOREST' => 251,
			'FOLLOWING' => 253,
			'WRAPPER' => 254,
			'LISTEN' => 255,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'YEAR' => 258,
			'TEMP' => 260,
			'STANDALONE' => 259,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OPTIONS' => 263,
			'CAST' => 264,
			'YES' => 265,
			'PROCEDURAL' => 266,
			'SEQUENCE' => 267,
			'LIKE' => 268,
			'SIMPLE' => 269,
			'QUOTE' => 271,
			'IDENTITY' => 270,
			'POSITION' => 273,
			'EXECUTE' => 275,
			'DOMAIN' => 274,
			'UNKNOWN' => 276,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'SERVER' => 280,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'CONFIGURATION' => 283,
			'NAMES' => 284,
			'PARSER' => 285,
			'RENAME' => 286,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RIGHT' => 287,
			'IMPLICIT' => 290,
			'CLUSTER' => 291,
			'NATURAL' => 292,
			'XMLCONCAT' => 293,
			'PASSWORD' => 294,
			'CHAR' => 295,
			'RECHECK' => 296,
			'NEXT' => 297,
			'PREPARED' => 298,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'GRANTED' => 302,
			'BIT' => 301,
			'BEGIN' => 303,
			'NOTIFY' => 304,
			'HEADER' => 305,
			'INTERVAL' => 306,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'FUNCTIONS' => 309,
			'ISOLATION' => 310,
			'STORAGE' => 311,
			'STDIN' => 312,
			'RESTRICT' => 313,
			'CYCLE' => 316,
			'UNCOMMITTED' => 317,
			'IS' => 315,
			'TRIM' => 314,
			'MAXVALUE' => 318,
			'START' => 319,
			'DOCUMENT' => 321,
			'IF' => 320,
			'SAVEPOINT' => 322,
			'ROWS' => 323,
			'LAST' => 324,
			'MINVALUE' => 325,
			'KEY' => 326,
			'OPERATOR' => 327,
			'UNTIL' => 328,
			'HOLD' => 329,
			'ACTION' => 330,
			'WRITE' => 331,
			'ROLE' => 332,
			'NOTNULL' => 333,
			'SESSION' => 334,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'NONE' => 340,
			'TABLES' => 343,
			'VALID' => 342,
			'INT' => 341,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'UNENCRYPTED' => 346,
			'OVERLAY' => 347,
			'FIRST' => 349,
			'COALESCE' => 348,
			'VERSION' => 350
		},
		GOTOS => {
			'base_type' => 214,
			'expr_simple' => 277,
			'keywords_reserved_ok_for_functions_or_types' => 73,
			'keywords_notreserved_not_ok_for_functions_or_types' => 248,
			'literal_value' => 272,
			'identifier' => 66,
			'expr' => 395,
			'operator_expression' => 197,
			'cast_expression' => 106,
			'simple_type' => 211,
			'keywords_notreserved' => 252
		}
	},
	{#State 364
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
			'ENCODING' => 28,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'FULL' => 36,
			'TREAT' => 37,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'DATA' => 44,
			'DAY' => 43,
			'PARTITION' => 42,
			'RANGE' => 41,
			'REF' => 47,
			'SHARE' => 46,
			'REAL' => 45,
			'OVER' => 48,
			'LARGE' => 50,
			'CURRENT_SCHEMA' => 49,
			'DELETE' => 51,
			'NULLIF' => 52,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'REPLICA' => 57,
			'PRIVILEGES' => 58,
			'ZONE' => 59,
			'LEAST' => 60,
			'STATISTICS' => 61,
			'ISNULL' => 62,
			'CALLED' => 63,
			'USTRING_CONSTANT' => 64,
			'SECURITY' => 65,
			'INCREMENT' => 67,
			'BINARY' => 68,
			'LEVEL' => 69,
			'FORCE' => 70,
			'CONCURRENTLY' => 71,
			'XBITSTRING_CONSTANT' => 72,
			'UPDATE' => 74,
			'PRESERVE' => 75,
			'CHARACTERISTICS' => 77,
			'XMLPI' => 76,
			'VALIDATE' => 78,
			"(" => 79,
			'ESTRING_CONSTANT' => 81,
			'STRICT' => 80,
			'VARYING' => 82,
			'AUTHORIZATION' => 83,
			'REASSIGN' => 84,
			'LABEL' => 86,
			'ROLLBACK' => 85,
			'OBJECT' => 87,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'TIMESTAMP' => 88,
			'RULE' => 91,
			'OPERATOR_NAME' => 93,
			'NUMERIC_CONSTANT' => 92,
			'INSERT' => 94,
			'HANDLER' => 95,
			'LOCATION' => 97,
			'EXISTS' => 96,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'BOOLEAN' => 99,
			'NULLS' => 101,
			'TYPE' => 102,
			'RESET' => 103,
			'NOWAIT' => 104,
			'PRIOR' => 105,
			'OFF' => 109,
			'BIGINT' => 108,
			'XMLSERIALIZE' => 107,
			'VERBOSE' => 110,
			'SET' => 111,
			'IMMEDIATE' => 113,
			'COMMENT' => 112,
			'DELIMITER' => 114,
			'SETOF' => 115,
			'INNER' => 116,
			'EXTRACT' => 117,
			'REINDEX' => 118,
			'PRECISION' => 119,
			'ACCESS' => 120,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'INOUT' => 123,
			'DEALLOCATE' => 124,
			'CATALOG' => 125,
			'OUT' => 126,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'XMLEXISTS' => 132,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'LEFT' => 135,
			'PRECEDING' => 136,
			'INTEGER_CONSTANT' => 137,
			'STABLE' => 138,
			'DEC' => 139,
			'XML' => 141,
			'XMLELEMENT' => 140,
			'SCROLL' => 142,
			'TEXT' => 143,
			'ALSO' => 144,
			'FUNCTION' => 145,
			'AGGREGATE' => 147,
			'SYSTEM' => 146,
			'FLOAT' => 148,
			'ATTRIBUTE' => 149,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'OVERLAPS' => 153,
			'DEFERRED' => 155,
			'VIEW' => 154,
			'REPEATABLE' => 156,
			'ALWAYS' => 157,
			'CONSTRAINTS' => 158,
			'FORWARD' => 159,
			'NOTHING' => 160,
			'EXCLUDING' => 161,
			'DECIMAL' => 162,
			'CHECKPOINT' => 163,
			'INDEXES' => 164,
			'CACHE' => 165,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'UNLISTEN' => 168,
			'LOAD' => 169,
			'FAMILY' => 170,
			'SMALLINT' => 171,
			'ASSERTION' => 172,
			'ILIKE' => 173,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'SIMILAR' => 176,
			'STDOUT' => 178,
			'BITSTRING_CONSTANT' => 180,
			'REVOKE' => 179,
			'INHERIT' => 181,
			'OUTER' => 182,
			'EXPLAIN' => 183,
			'OIDS' => 185,
			'VARCHAR' => 184,
			'AFTER' => 186,
			'CSV' => 187,
			'DISABLE' => 188,
			'VACUUM' => 189,
			'SCHEMA' => 190,
			'ROW' => 191,
			'LC_COLLATE' => 192,
			'FREEZE' => 193,
			'INDEX' => 194,
			'DEFINER' => 195,
			'XMLPARSE' => 196,
			'OWNED' => 200,
			'INCLUDING' => 199,
			'ADMIN' => 198,
			'CROSS' => 201,
			'INSTEAD' => 202,
			'NATIONAL' => 203,
			'EACH' => 204,
			'TRUSTED' => 205,
			'OWNER' => 207,
			'EXCLUSIVE' => 206,
			'CHARACTER' => 208,
			'STATEMENT' => 210,
			'CASCADE' => 209,
			'ASSIGNMENT' => 212,
			'MATCH' => 213,
			'MOVE' => 217,
			'DOUBLE' => 216,
			'CLASS' => 215,
			'TIME' => 218,
			'NUMERIC' => 219,
			'INLINE' => 221,
			'CURSOR' => 220,
			'EXTENSION' => 223,
			'ENCRYPTED' => 222,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'VALIDATOR' => 226,
			'XMLROOT' => 228,
			'UQUOTED_IDENTIFIER' => 229,
			'SUBSTRING' => 230,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'BETWEEN' => 233,
			'ABORT' => 234,
			'XMLATTRIBUTES' => 235,
			'VALUES' => 236,
			'TRUNCATE' => 238,
			'BEFORE' => 237,
			'SHOW' => 241,
			'ABSOLUTE' => 239,
			'IDENTIFIER' => 240,
			'GREATEST' => 242,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'WHITESPACE' => 247,
			'SECOND' => 249,
			'HOUR' => 250,
			'XMLFOREST' => 251,
			'FOLLOWING' => 253,
			'WRAPPER' => 254,
			'LISTEN' => 255,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'YEAR' => 258,
			'TEMP' => 260,
			'STANDALONE' => 259,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OPTIONS' => 263,
			'CAST' => 264,
			'YES' => 265,
			'PROCEDURAL' => 266,
			'SEQUENCE' => 267,
			'LIKE' => 268,
			'SIMPLE' => 269,
			'QUOTE' => 271,
			'IDENTITY' => 270,
			'POSITION' => 273,
			'EXECUTE' => 275,
			'DOMAIN' => 274,
			'UNKNOWN' => 276,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'SERVER' => 280,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'CONFIGURATION' => 283,
			'NAMES' => 284,
			'PARSER' => 285,
			'RENAME' => 286,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RIGHT' => 287,
			'IMPLICIT' => 290,
			'CLUSTER' => 291,
			'NATURAL' => 292,
			'XMLCONCAT' => 293,
			'PASSWORD' => 294,
			'CHAR' => 295,
			'RECHECK' => 296,
			'NEXT' => 297,
			'PREPARED' => 298,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'GRANTED' => 302,
			'BIT' => 301,
			'BEGIN' => 303,
			'NOTIFY' => 304,
			'HEADER' => 305,
			'INTERVAL' => 306,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'FUNCTIONS' => 309,
			'ISOLATION' => 310,
			'STORAGE' => 311,
			'STDIN' => 312,
			'RESTRICT' => 313,
			'CYCLE' => 316,
			'UNCOMMITTED' => 317,
			'IS' => 315,
			'TRIM' => 314,
			'MAXVALUE' => 318,
			'START' => 319,
			'DOCUMENT' => 321,
			'IF' => 320,
			'SAVEPOINT' => 322,
			'ROWS' => 323,
			'LAST' => 324,
			'MINVALUE' => 325,
			'KEY' => 326,
			'OPERATOR' => 327,
			'UNTIL' => 328,
			'HOLD' => 329,
			'ACTION' => 330,
			'WRITE' => 331,
			'ROLE' => 332,
			'NOTNULL' => 333,
			'SESSION' => 334,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'NONE' => 340,
			'TABLES' => 343,
			'VALID' => 342,
			'INT' => 341,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'UNENCRYPTED' => 346,
			'OVERLAY' => 347,
			'FIRST' => 349,
			'COALESCE' => 348,
			'VERSION' => 350
		},
		GOTOS => {
			'base_type' => 214,
			'expr_simple' => 277,
			'keywords_reserved_ok_for_functions_or_types' => 73,
			'keywords_notreserved_not_ok_for_functions_or_types' => 248,
			'literal_value' => 272,
			'identifier' => 66,
			'expr' => 396,
			'operator_expression' => 197,
			'cast_expression' => 106,
			'simple_type' => 211,
			'keywords_notreserved' => 252
		}
	},
	{#State 365
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
			'ENCODING' => 28,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'FULL' => 36,
			'TREAT' => 37,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'DATA' => 44,
			'DAY' => 43,
			'PARTITION' => 42,
			'RANGE' => 41,
			'REF' => 47,
			'SHARE' => 46,
			'REAL' => 45,
			'OVER' => 48,
			'LARGE' => 50,
			'CURRENT_SCHEMA' => 49,
			'DELETE' => 51,
			'NULLIF' => 52,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'REPLICA' => 57,
			'PRIVILEGES' => 58,
			'ZONE' => 59,
			'LEAST' => 60,
			'STATISTICS' => 61,
			'ISNULL' => 62,
			'CALLED' => 63,
			'USTRING_CONSTANT' => 64,
			'SECURITY' => 65,
			'INCREMENT' => 67,
			'BINARY' => 68,
			'LEVEL' => 69,
			'FORCE' => 70,
			'CONCURRENTLY' => 71,
			'XBITSTRING_CONSTANT' => 72,
			'UPDATE' => 74,
			'PRESERVE' => 75,
			'CHARACTERISTICS' => 77,
			'XMLPI' => 76,
			'VALIDATE' => 78,
			"(" => 79,
			'ESTRING_CONSTANT' => 81,
			'STRICT' => 80,
			'VARYING' => 82,
			'AUTHORIZATION' => 83,
			'REASSIGN' => 84,
			'LABEL' => 86,
			'ROLLBACK' => 85,
			'OBJECT' => 87,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'TIMESTAMP' => 88,
			'RULE' => 91,
			'OPERATOR_NAME' => 93,
			'NUMERIC_CONSTANT' => 92,
			'INSERT' => 94,
			'HANDLER' => 95,
			'LOCATION' => 97,
			'EXISTS' => 96,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'BOOLEAN' => 99,
			'NULLS' => 101,
			'TYPE' => 102,
			'RESET' => 103,
			'NOWAIT' => 104,
			'PRIOR' => 105,
			'OFF' => 109,
			'BIGINT' => 108,
			'XMLSERIALIZE' => 107,
			'VERBOSE' => 110,
			'SET' => 111,
			'IMMEDIATE' => 113,
			'COMMENT' => 112,
			'DELIMITER' => 114,
			'SETOF' => 115,
			'INNER' => 116,
			'EXTRACT' => 117,
			'REINDEX' => 118,
			'PRECISION' => 119,
			'ACCESS' => 120,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'INOUT' => 123,
			'DEALLOCATE' => 124,
			'CATALOG' => 125,
			'OUT' => 126,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'XMLEXISTS' => 132,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'LEFT' => 135,
			'PRECEDING' => 136,
			'INTEGER_CONSTANT' => 137,
			'STABLE' => 138,
			'DEC' => 139,
			'XML' => 141,
			'XMLELEMENT' => 140,
			'SCROLL' => 142,
			'TEXT' => 143,
			'ALSO' => 144,
			'FUNCTION' => 145,
			'AGGREGATE' => 147,
			'SYSTEM' => 146,
			'FLOAT' => 148,
			'ATTRIBUTE' => 149,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'OVERLAPS' => 153,
			'DEFERRED' => 155,
			'VIEW' => 154,
			'REPEATABLE' => 156,
			'ALWAYS' => 157,
			'CONSTRAINTS' => 158,
			'FORWARD' => 159,
			'NOTHING' => 160,
			'EXCLUDING' => 161,
			'DECIMAL' => 162,
			'CHECKPOINT' => 163,
			'INDEXES' => 164,
			'CACHE' => 165,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'UNLISTEN' => 168,
			'LOAD' => 169,
			'FAMILY' => 170,
			'SMALLINT' => 171,
			'ASSERTION' => 172,
			'ILIKE' => 173,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'SIMILAR' => 176,
			'STDOUT' => 178,
			'BITSTRING_CONSTANT' => 180,
			'REVOKE' => 179,
			'INHERIT' => 181,
			'OUTER' => 182,
			'EXPLAIN' => 183,
			'OIDS' => 185,
			'VARCHAR' => 184,
			'AFTER' => 186,
			'CSV' => 187,
			'DISABLE' => 188,
			'VACUUM' => 189,
			'SCHEMA' => 190,
			'ROW' => 191,
			'LC_COLLATE' => 192,
			'FREEZE' => 193,
			'INDEX' => 194,
			'DEFINER' => 195,
			'XMLPARSE' => 196,
			'OWNED' => 200,
			'INCLUDING' => 199,
			'ADMIN' => 198,
			'CROSS' => 201,
			'INSTEAD' => 202,
			'NATIONAL' => 203,
			'EACH' => 204,
			'TRUSTED' => 205,
			'OWNER' => 207,
			'EXCLUSIVE' => 206,
			'CHARACTER' => 208,
			'STATEMENT' => 210,
			'CASCADE' => 209,
			'ASSIGNMENT' => 212,
			'MATCH' => 213,
			'MOVE' => 217,
			'DOUBLE' => 216,
			'CLASS' => 215,
			'TIME' => 218,
			'NUMERIC' => 219,
			'INLINE' => 221,
			'CURSOR' => 220,
			'EXTENSION' => 223,
			'ENCRYPTED' => 222,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'VALIDATOR' => 226,
			'XMLROOT' => 228,
			'UQUOTED_IDENTIFIER' => 229,
			'SUBSTRING' => 230,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'BETWEEN' => 233,
			'ABORT' => 234,
			'XMLATTRIBUTES' => 235,
			'VALUES' => 236,
			'TRUNCATE' => 238,
			'BEFORE' => 237,
			'SHOW' => 241,
			'ABSOLUTE' => 239,
			'IDENTIFIER' => 240,
			'GREATEST' => 242,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'WHITESPACE' => 247,
			'SECOND' => 249,
			'HOUR' => 250,
			'XMLFOREST' => 251,
			'FOLLOWING' => 253,
			'WRAPPER' => 254,
			'LISTEN' => 255,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'YEAR' => 258,
			'TEMP' => 260,
			'STANDALONE' => 259,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OPTIONS' => 263,
			'CAST' => 264,
			'YES' => 265,
			'PROCEDURAL' => 266,
			'SEQUENCE' => 267,
			'LIKE' => 268,
			'SIMPLE' => 269,
			'QUOTE' => 271,
			'IDENTITY' => 270,
			'POSITION' => 273,
			'EXECUTE' => 275,
			'DOMAIN' => 274,
			'UNKNOWN' => 276,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'SERVER' => 280,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'CONFIGURATION' => 283,
			'NAMES' => 284,
			'PARSER' => 285,
			'RENAME' => 286,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RIGHT' => 287,
			'IMPLICIT' => 290,
			'CLUSTER' => 291,
			'NATURAL' => 292,
			'XMLCONCAT' => 293,
			'PASSWORD' => 294,
			'CHAR' => 295,
			'RECHECK' => 296,
			'NEXT' => 297,
			'PREPARED' => 298,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'GRANTED' => 302,
			'BIT' => 301,
			'BEGIN' => 303,
			'NOTIFY' => 304,
			'HEADER' => 305,
			'INTERVAL' => 306,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'FUNCTIONS' => 309,
			'ISOLATION' => 310,
			'STORAGE' => 311,
			'STDIN' => 312,
			'RESTRICT' => 313,
			'CYCLE' => 316,
			'UNCOMMITTED' => 317,
			'IS' => 315,
			'TRIM' => 314,
			'MAXVALUE' => 318,
			'START' => 319,
			'DOCUMENT' => 321,
			'IF' => 320,
			'SAVEPOINT' => 322,
			'ROWS' => 323,
			'LAST' => 324,
			'MINVALUE' => 325,
			'KEY' => 326,
			'OPERATOR' => 327,
			'UNTIL' => 328,
			'HOLD' => 329,
			'ACTION' => 330,
			'WRITE' => 331,
			'ROLE' => 332,
			'NOTNULL' => 333,
			'SESSION' => 334,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'NONE' => 340,
			'TABLES' => 343,
			'VALID' => 342,
			'INT' => 341,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'UNENCRYPTED' => 346,
			'OVERLAY' => 347,
			'FIRST' => 349,
			'COALESCE' => 348,
			'VERSION' => 350
		},
		GOTOS => {
			'base_type' => 214,
			'expr_simple' => 277,
			'keywords_reserved_ok_for_functions_or_types' => 73,
			'keywords_notreserved_not_ok_for_functions_or_types' => 248,
			'literal_value' => 272,
			'identifier' => 66,
			'expr' => 397,
			'operator_expression' => 197,
			'cast_expression' => 106,
			'simple_type' => 211,
			'keywords_notreserved' => 252
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
			'ENCODING' => 28,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'FULL' => 36,
			'TREAT' => 37,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'DATA' => 44,
			'DAY' => 43,
			'PARTITION' => 42,
			'RANGE' => 41,
			'REF' => 47,
			'SHARE' => 46,
			'REAL' => 45,
			'OVER' => 48,
			'LARGE' => 50,
			'CURRENT_SCHEMA' => 49,
			'DELETE' => 51,
			'NULLIF' => 52,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'REPLICA' => 57,
			'PRIVILEGES' => 58,
			'ZONE' => 59,
			'LEAST' => 60,
			'STATISTICS' => 61,
			'ISNULL' => 62,
			'CALLED' => 63,
			'USTRING_CONSTANT' => 64,
			'SECURITY' => 65,
			'INCREMENT' => 67,
			'BINARY' => 68,
			'LEVEL' => 69,
			'FORCE' => 70,
			'CONCURRENTLY' => 71,
			'XBITSTRING_CONSTANT' => 72,
			'UPDATE' => 74,
			'PRESERVE' => 75,
			'CHARACTERISTICS' => 77,
			'XMLPI' => 76,
			'VALIDATE' => 78,
			"(" => 79,
			'ESTRING_CONSTANT' => 81,
			'STRICT' => 80,
			'VARYING' => 82,
			'AUTHORIZATION' => 83,
			'REASSIGN' => 84,
			'LABEL' => 86,
			'ROLLBACK' => 85,
			'OBJECT' => 87,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'TIMESTAMP' => 88,
			'RULE' => 91,
			'OPERATOR_NAME' => 93,
			'NUMERIC_CONSTANT' => 92,
			'INSERT' => 94,
			'HANDLER' => 95,
			'LOCATION' => 97,
			'EXISTS' => 96,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'BOOLEAN' => 99,
			'NULLS' => 101,
			'TYPE' => 102,
			'RESET' => 103,
			'NOWAIT' => 104,
			'PRIOR' => 105,
			'OFF' => 109,
			'BIGINT' => 108,
			'XMLSERIALIZE' => 107,
			'VERBOSE' => 110,
			'SET' => 111,
			'IMMEDIATE' => 113,
			'COMMENT' => 112,
			'DELIMITER' => 114,
			'SETOF' => 115,
			'INNER' => 116,
			'EXTRACT' => 117,
			'REINDEX' => 118,
			'PRECISION' => 119,
			'ACCESS' => 120,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'INOUT' => 123,
			'DEALLOCATE' => 124,
			'CATALOG' => 125,
			'OUT' => 126,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'XMLEXISTS' => 132,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'LEFT' => 135,
			'PRECEDING' => 136,
			'INTEGER_CONSTANT' => 137,
			'STABLE' => 138,
			'DEC' => 139,
			'XML' => 141,
			'XMLELEMENT' => 140,
			'SCROLL' => 142,
			'TEXT' => 143,
			'ALSO' => 144,
			'FUNCTION' => 145,
			'AGGREGATE' => 147,
			'SYSTEM' => 146,
			'FLOAT' => 148,
			'ATTRIBUTE' => 149,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'OVERLAPS' => 153,
			'DEFERRED' => 155,
			'VIEW' => 154,
			'REPEATABLE' => 156,
			'ALWAYS' => 157,
			'CONSTRAINTS' => 158,
			'FORWARD' => 159,
			'NOTHING' => 160,
			'EXCLUDING' => 161,
			'DECIMAL' => 162,
			'CHECKPOINT' => 163,
			'INDEXES' => 164,
			'CACHE' => 165,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'UNLISTEN' => 168,
			'LOAD' => 169,
			'FAMILY' => 170,
			'SMALLINT' => 171,
			'ASSERTION' => 172,
			'ILIKE' => 173,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'SIMILAR' => 176,
			'STDOUT' => 178,
			'BITSTRING_CONSTANT' => 180,
			'REVOKE' => 179,
			'INHERIT' => 181,
			'OUTER' => 182,
			'EXPLAIN' => 183,
			'OIDS' => 185,
			'VARCHAR' => 184,
			'AFTER' => 186,
			'CSV' => 187,
			'DISABLE' => 188,
			'VACUUM' => 189,
			'SCHEMA' => 190,
			'ROW' => 191,
			'LC_COLLATE' => 192,
			'FREEZE' => 193,
			'INDEX' => 194,
			'DEFINER' => 195,
			'XMLPARSE' => 196,
			'OWNED' => 200,
			'INCLUDING' => 199,
			'ADMIN' => 198,
			'CROSS' => 201,
			'INSTEAD' => 202,
			'NATIONAL' => 203,
			'EACH' => 204,
			'TRUSTED' => 205,
			'OWNER' => 207,
			'EXCLUSIVE' => 206,
			'CHARACTER' => 208,
			'STATEMENT' => 210,
			'CASCADE' => 209,
			'ASSIGNMENT' => 212,
			'MATCH' => 213,
			'MOVE' => 217,
			'DOUBLE' => 216,
			'CLASS' => 215,
			'TIME' => 218,
			'NUMERIC' => 219,
			'INLINE' => 221,
			'CURSOR' => 220,
			'EXTENSION' => 223,
			'ENCRYPTED' => 222,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'VALIDATOR' => 226,
			'XMLROOT' => 228,
			'UQUOTED_IDENTIFIER' => 229,
			'SUBSTRING' => 230,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'BETWEEN' => 233,
			'ABORT' => 234,
			'XMLATTRIBUTES' => 235,
			'VALUES' => 236,
			'TRUNCATE' => 238,
			'BEFORE' => 237,
			'SHOW' => 241,
			'ABSOLUTE' => 239,
			'IDENTIFIER' => 240,
			'GREATEST' => 242,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'WHITESPACE' => 247,
			'SECOND' => 249,
			'HOUR' => 250,
			'XMLFOREST' => 251,
			'FOLLOWING' => 253,
			'WRAPPER' => 254,
			'LISTEN' => 255,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'YEAR' => 258,
			'TEMP' => 260,
			'STANDALONE' => 259,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OPTIONS' => 263,
			'CAST' => 264,
			'YES' => 265,
			'PROCEDURAL' => 266,
			'SEQUENCE' => 267,
			'LIKE' => 268,
			'SIMPLE' => 269,
			'QUOTE' => 271,
			'IDENTITY' => 270,
			'POSITION' => 273,
			'EXECUTE' => 275,
			'DOMAIN' => 274,
			'UNKNOWN' => 276,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'SERVER' => 280,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'CONFIGURATION' => 283,
			'NAMES' => 284,
			'PARSER' => 285,
			'RENAME' => 286,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RIGHT' => 287,
			'IMPLICIT' => 290,
			'CLUSTER' => 291,
			'NATURAL' => 292,
			'XMLCONCAT' => 293,
			'PASSWORD' => 294,
			'CHAR' => 295,
			'RECHECK' => 296,
			'NEXT' => 297,
			'PREPARED' => 298,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'GRANTED' => 302,
			'BIT' => 301,
			'BEGIN' => 303,
			'NOTIFY' => 304,
			'HEADER' => 305,
			'INTERVAL' => 306,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'FUNCTIONS' => 309,
			'ISOLATION' => 310,
			'STORAGE' => 311,
			'STDIN' => 312,
			'RESTRICT' => 313,
			'CYCLE' => 316,
			'UNCOMMITTED' => 317,
			'IS' => 315,
			'TRIM' => 314,
			'MAXVALUE' => 318,
			'START' => 319,
			'DOCUMENT' => 321,
			'IF' => 320,
			'SAVEPOINT' => 322,
			'ROWS' => 323,
			'LAST' => 324,
			'MINVALUE' => 325,
			'KEY' => 326,
			'OPERATOR' => 327,
			'UNTIL' => 328,
			'HOLD' => 329,
			'ACTION' => 330,
			'WRITE' => 331,
			'ROLE' => 332,
			'NOTNULL' => 333,
			'SESSION' => 334,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'NONE' => 340,
			'TABLES' => 343,
			'VALID' => 342,
			'INT' => 341,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'UNENCRYPTED' => 346,
			'OVERLAY' => 347,
			'FIRST' => 349,
			'COALESCE' => 348,
			'VERSION' => 350
		},
		GOTOS => {
			'base_type' => 214,
			'expr_simple' => 277,
			'keywords_reserved_ok_for_functions_or_types' => 73,
			'keywords_notreserved_not_ok_for_functions_or_types' => 248,
			'literal_value' => 272,
			'identifier' => 66,
			'expr' => 398,
			'operator_expression' => 197,
			'cast_expression' => 106,
			'simple_type' => 211,
			'keywords_notreserved' => 252
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
			'ENCODING' => 28,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'FULL' => 36,
			'TREAT' => 37,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'DATA' => 44,
			'DAY' => 43,
			'PARTITION' => 42,
			'RANGE' => 41,
			'REF' => 47,
			'SHARE' => 46,
			'REAL' => 45,
			'OVER' => 48,
			'LARGE' => 50,
			'CURRENT_SCHEMA' => 49,
			'DELETE' => 51,
			'NULLIF' => 52,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'REPLICA' => 57,
			'PRIVILEGES' => 58,
			'ZONE' => 59,
			'LEAST' => 60,
			'STATISTICS' => 61,
			'ISNULL' => 62,
			'CALLED' => 63,
			'USTRING_CONSTANT' => 64,
			'SECURITY' => 65,
			'INCREMENT' => 67,
			'BINARY' => 68,
			'LEVEL' => 69,
			'FORCE' => 70,
			'CONCURRENTLY' => 71,
			'XBITSTRING_CONSTANT' => 72,
			'UPDATE' => 74,
			'PRESERVE' => 75,
			'CHARACTERISTICS' => 77,
			'XMLPI' => 76,
			'VALIDATE' => 78,
			"(" => 79,
			'ESTRING_CONSTANT' => 81,
			'STRICT' => 80,
			'VARYING' => 82,
			'AUTHORIZATION' => 83,
			'REASSIGN' => 84,
			'LABEL' => 86,
			'ROLLBACK' => 85,
			'OBJECT' => 87,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'TIMESTAMP' => 88,
			'RULE' => 91,
			'OPERATOR_NAME' => 93,
			'NUMERIC_CONSTANT' => 92,
			'INSERT' => 94,
			'HANDLER' => 95,
			'LOCATION' => 97,
			'EXISTS' => 96,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'BOOLEAN' => 99,
			'NULLS' => 101,
			'TYPE' => 102,
			'RESET' => 103,
			'NOWAIT' => 104,
			'PRIOR' => 105,
			'OFF' => 109,
			'BIGINT' => 108,
			'XMLSERIALIZE' => 107,
			'VERBOSE' => 110,
			'SET' => 111,
			'IMMEDIATE' => 113,
			'COMMENT' => 112,
			'DELIMITER' => 114,
			'SETOF' => 115,
			'INNER' => 116,
			'EXTRACT' => 117,
			'REINDEX' => 118,
			'PRECISION' => 119,
			'ACCESS' => 120,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'INOUT' => 123,
			'DEALLOCATE' => 124,
			'CATALOG' => 125,
			'OUT' => 126,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'XMLEXISTS' => 132,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'LEFT' => 135,
			'PRECEDING' => 136,
			'INTEGER_CONSTANT' => 137,
			'STABLE' => 138,
			'DEC' => 139,
			'XML' => 141,
			'XMLELEMENT' => 140,
			'SCROLL' => 142,
			'TEXT' => 143,
			'ALSO' => 144,
			'FUNCTION' => 145,
			'AGGREGATE' => 147,
			'SYSTEM' => 146,
			'FLOAT' => 148,
			'ATTRIBUTE' => 149,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'OVERLAPS' => 153,
			'DEFERRED' => 155,
			'VIEW' => 154,
			'REPEATABLE' => 156,
			'ALWAYS' => 157,
			'CONSTRAINTS' => 158,
			'FORWARD' => 159,
			'NOTHING' => 160,
			'EXCLUDING' => 161,
			'DECIMAL' => 162,
			'CHECKPOINT' => 163,
			'INDEXES' => 164,
			'CACHE' => 165,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'UNLISTEN' => 168,
			'LOAD' => 169,
			'FAMILY' => 170,
			'SMALLINT' => 171,
			'ASSERTION' => 172,
			'ILIKE' => 173,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'SIMILAR' => 176,
			'STDOUT' => 178,
			'BITSTRING_CONSTANT' => 180,
			'REVOKE' => 179,
			'INHERIT' => 181,
			'OUTER' => 182,
			'EXPLAIN' => 183,
			'OIDS' => 185,
			'VARCHAR' => 184,
			'AFTER' => 186,
			'CSV' => 187,
			'DISABLE' => 188,
			'VACUUM' => 189,
			'SCHEMA' => 190,
			'ROW' => 191,
			'LC_COLLATE' => 192,
			'FREEZE' => 193,
			'INDEX' => 194,
			'DEFINER' => 195,
			'XMLPARSE' => 196,
			'OWNED' => 200,
			'INCLUDING' => 199,
			'ADMIN' => 198,
			'CROSS' => 201,
			'INSTEAD' => 202,
			'NATIONAL' => 203,
			'EACH' => 204,
			'TRUSTED' => 205,
			'OWNER' => 207,
			'EXCLUSIVE' => 206,
			'CHARACTER' => 208,
			'STATEMENT' => 210,
			'CASCADE' => 209,
			'ASSIGNMENT' => 212,
			'MATCH' => 213,
			'MOVE' => 217,
			'DOUBLE' => 216,
			'CLASS' => 215,
			'TIME' => 218,
			'NUMERIC' => 219,
			'INLINE' => 221,
			'CURSOR' => 220,
			'EXTENSION' => 223,
			'ENCRYPTED' => 222,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'VALIDATOR' => 226,
			'XMLROOT' => 228,
			'UQUOTED_IDENTIFIER' => 229,
			'SUBSTRING' => 230,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'BETWEEN' => 233,
			'ABORT' => 234,
			'XMLATTRIBUTES' => 235,
			'VALUES' => 236,
			'TRUNCATE' => 238,
			'BEFORE' => 237,
			'SHOW' => 241,
			'ABSOLUTE' => 239,
			'IDENTIFIER' => 240,
			'GREATEST' => 242,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'WHITESPACE' => 247,
			'SECOND' => 249,
			'HOUR' => 250,
			'XMLFOREST' => 251,
			'FOLLOWING' => 253,
			'WRAPPER' => 254,
			'LISTEN' => 255,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'YEAR' => 258,
			'TEMP' => 260,
			'STANDALONE' => 259,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OPTIONS' => 263,
			'CAST' => 264,
			'YES' => 265,
			'PROCEDURAL' => 266,
			'SEQUENCE' => 267,
			'LIKE' => 268,
			'SIMPLE' => 269,
			'QUOTE' => 271,
			'IDENTITY' => 270,
			'POSITION' => 273,
			'EXECUTE' => 275,
			'DOMAIN' => 274,
			'UNKNOWN' => 276,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'SERVER' => 280,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'CONFIGURATION' => 283,
			'NAMES' => 284,
			'PARSER' => 285,
			'RENAME' => 286,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RIGHT' => 287,
			'IMPLICIT' => 290,
			'CLUSTER' => 291,
			'NATURAL' => 292,
			'XMLCONCAT' => 293,
			'PASSWORD' => 294,
			'CHAR' => 295,
			'RECHECK' => 296,
			'NEXT' => 297,
			'PREPARED' => 298,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'GRANTED' => 302,
			'BIT' => 301,
			'BEGIN' => 303,
			'NOTIFY' => 304,
			'HEADER' => 305,
			'INTERVAL' => 306,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'FUNCTIONS' => 309,
			'ISOLATION' => 310,
			'STORAGE' => 311,
			'STDIN' => 312,
			'RESTRICT' => 313,
			'CYCLE' => 316,
			'UNCOMMITTED' => 317,
			'IS' => 315,
			'TRIM' => 314,
			'MAXVALUE' => 318,
			'START' => 319,
			'DOCUMENT' => 321,
			'IF' => 320,
			'SAVEPOINT' => 322,
			'ROWS' => 323,
			'LAST' => 324,
			'MINVALUE' => 325,
			'KEY' => 326,
			'OPERATOR' => 327,
			'UNTIL' => 328,
			'HOLD' => 329,
			'ACTION' => 330,
			'WRITE' => 331,
			'ROLE' => 332,
			'NOTNULL' => 333,
			'SESSION' => 334,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'NONE' => 340,
			'TABLES' => 343,
			'VALID' => 342,
			'INT' => 341,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'UNENCRYPTED' => 346,
			'OVERLAY' => 347,
			'FIRST' => 349,
			'COALESCE' => 348,
			'VERSION' => 350
		},
		GOTOS => {
			'base_type' => 214,
			'expr_simple' => 277,
			'keywords_reserved_ok_for_functions_or_types' => 73,
			'keywords_notreserved_not_ok_for_functions_or_types' => 248,
			'literal_value' => 272,
			'identifier' => 66,
			'expr' => 399,
			'operator_expression' => 197,
			'cast_expression' => 106,
			'simple_type' => 211,
			'keywords_notreserved' => 252
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
			'ENCODING' => 28,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'FULL' => 36,
			'TREAT' => 37,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'DATA' => 44,
			'DAY' => 43,
			'PARTITION' => 42,
			'RANGE' => 41,
			'REF' => 47,
			'SHARE' => 46,
			'REAL' => 45,
			'OVER' => 48,
			'LARGE' => 50,
			'CURRENT_SCHEMA' => 49,
			'DELETE' => 51,
			'NULLIF' => 52,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'REPLICA' => 57,
			'PRIVILEGES' => 58,
			'ZONE' => 59,
			'LEAST' => 60,
			'STATISTICS' => 61,
			'ISNULL' => 62,
			'CALLED' => 63,
			'USTRING_CONSTANT' => 64,
			'SECURITY' => 65,
			'INCREMENT' => 67,
			'BINARY' => 68,
			'LEVEL' => 69,
			'FORCE' => 70,
			'CONCURRENTLY' => 71,
			'XBITSTRING_CONSTANT' => 72,
			'UPDATE' => 74,
			'PRESERVE' => 75,
			'CHARACTERISTICS' => 77,
			'XMLPI' => 76,
			'VALIDATE' => 78,
			"(" => 79,
			'ESTRING_CONSTANT' => 81,
			'STRICT' => 80,
			'VARYING' => 82,
			'AUTHORIZATION' => 83,
			'REASSIGN' => 84,
			'LABEL' => 86,
			'ROLLBACK' => 85,
			'OBJECT' => 87,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'TIMESTAMP' => 88,
			'RULE' => 91,
			'OPERATOR_NAME' => 93,
			'NUMERIC_CONSTANT' => 92,
			'INSERT' => 94,
			'HANDLER' => 95,
			'LOCATION' => 97,
			'EXISTS' => 96,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'BOOLEAN' => 99,
			'NULLS' => 101,
			'TYPE' => 102,
			'RESET' => 103,
			'NOWAIT' => 104,
			'PRIOR' => 105,
			'OFF' => 109,
			'BIGINT' => 108,
			'XMLSERIALIZE' => 107,
			'VERBOSE' => 110,
			'SET' => 111,
			'IMMEDIATE' => 113,
			'COMMENT' => 112,
			'DELIMITER' => 114,
			'SETOF' => 115,
			'INNER' => 116,
			'EXTRACT' => 117,
			'REINDEX' => 118,
			'PRECISION' => 119,
			'ACCESS' => 120,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'INOUT' => 123,
			'DEALLOCATE' => 124,
			'CATALOG' => 125,
			'OUT' => 126,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'XMLEXISTS' => 132,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'LEFT' => 135,
			'PRECEDING' => 136,
			'INTEGER_CONSTANT' => 137,
			'STABLE' => 138,
			'DEC' => 139,
			'XML' => 141,
			'XMLELEMENT' => 140,
			'SCROLL' => 142,
			'TEXT' => 143,
			'ALSO' => 144,
			'FUNCTION' => 145,
			'AGGREGATE' => 147,
			'SYSTEM' => 146,
			'FLOAT' => 148,
			'ATTRIBUTE' => 149,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'OVERLAPS' => 153,
			'DEFERRED' => 155,
			'VIEW' => 154,
			'REPEATABLE' => 156,
			'ALWAYS' => 157,
			'CONSTRAINTS' => 158,
			'FORWARD' => 159,
			'NOTHING' => 160,
			'EXCLUDING' => 161,
			'DECIMAL' => 162,
			'CHECKPOINT' => 163,
			'INDEXES' => 164,
			'CACHE' => 165,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'UNLISTEN' => 168,
			'LOAD' => 169,
			'FAMILY' => 170,
			'SMALLINT' => 171,
			'ASSERTION' => 172,
			'ILIKE' => 173,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'SIMILAR' => 176,
			'STDOUT' => 178,
			'BITSTRING_CONSTANT' => 180,
			'REVOKE' => 179,
			'INHERIT' => 181,
			'OUTER' => 182,
			'EXPLAIN' => 183,
			'OIDS' => 185,
			'VARCHAR' => 184,
			'AFTER' => 186,
			'CSV' => 187,
			'DISABLE' => 188,
			'VACUUM' => 189,
			'SCHEMA' => 190,
			'ROW' => 191,
			'LC_COLLATE' => 192,
			'FREEZE' => 193,
			'INDEX' => 194,
			'DEFINER' => 195,
			'XMLPARSE' => 196,
			'OWNED' => 200,
			'INCLUDING' => 199,
			'ADMIN' => 198,
			'CROSS' => 201,
			'INSTEAD' => 202,
			'NATIONAL' => 203,
			'EACH' => 204,
			'TRUSTED' => 205,
			'OWNER' => 207,
			'EXCLUSIVE' => 206,
			'CHARACTER' => 208,
			'STATEMENT' => 210,
			'CASCADE' => 209,
			'ASSIGNMENT' => 212,
			'MATCH' => 213,
			'MOVE' => 217,
			'DOUBLE' => 216,
			'CLASS' => 215,
			'TIME' => 218,
			'NUMERIC' => 219,
			'INLINE' => 221,
			'CURSOR' => 220,
			'EXTENSION' => 223,
			'ENCRYPTED' => 222,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'VALIDATOR' => 226,
			'XMLROOT' => 228,
			'UQUOTED_IDENTIFIER' => 229,
			'SUBSTRING' => 230,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'BETWEEN' => 233,
			'ABORT' => 234,
			'XMLATTRIBUTES' => 235,
			'VALUES' => 236,
			'TRUNCATE' => 238,
			'BEFORE' => 237,
			'SHOW' => 241,
			'ABSOLUTE' => 239,
			'IDENTIFIER' => 240,
			'GREATEST' => 242,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'WHITESPACE' => 247,
			'SECOND' => 249,
			'HOUR' => 250,
			'XMLFOREST' => 251,
			'FOLLOWING' => 253,
			'WRAPPER' => 254,
			'LISTEN' => 255,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'YEAR' => 258,
			'TEMP' => 260,
			'STANDALONE' => 259,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OPTIONS' => 263,
			'CAST' => 264,
			'YES' => 265,
			'PROCEDURAL' => 266,
			'SEQUENCE' => 267,
			'LIKE' => 268,
			'SIMPLE' => 269,
			'QUOTE' => 271,
			'IDENTITY' => 270,
			'POSITION' => 273,
			'EXECUTE' => 275,
			'DOMAIN' => 274,
			'UNKNOWN' => 276,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'SERVER' => 280,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'CONFIGURATION' => 283,
			'NAMES' => 284,
			'PARSER' => 285,
			'RENAME' => 286,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RIGHT' => 287,
			'IMPLICIT' => 290,
			'CLUSTER' => 291,
			'NATURAL' => 292,
			'XMLCONCAT' => 293,
			'PASSWORD' => 294,
			'CHAR' => 295,
			'RECHECK' => 296,
			'NEXT' => 297,
			'PREPARED' => 298,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'GRANTED' => 302,
			'BIT' => 301,
			'BEGIN' => 303,
			'NOTIFY' => 304,
			'HEADER' => 305,
			'INTERVAL' => 306,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'FUNCTIONS' => 309,
			'ISOLATION' => 310,
			'STORAGE' => 311,
			'STDIN' => 312,
			'RESTRICT' => 313,
			'CYCLE' => 316,
			'UNCOMMITTED' => 317,
			'IS' => 315,
			'TRIM' => 314,
			'MAXVALUE' => 318,
			'START' => 319,
			'DOCUMENT' => 321,
			'IF' => 320,
			'SAVEPOINT' => 322,
			'ROWS' => 323,
			'LAST' => 324,
			'MINVALUE' => 325,
			'KEY' => 326,
			'OPERATOR' => 327,
			'UNTIL' => 328,
			'HOLD' => 329,
			'ACTION' => 330,
			'WRITE' => 331,
			'ROLE' => 332,
			'NOTNULL' => 333,
			'SESSION' => 334,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'NONE' => 340,
			'TABLES' => 343,
			'VALID' => 342,
			'INT' => 341,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'UNENCRYPTED' => 346,
			'OVERLAY' => 347,
			'FIRST' => 349,
			'COALESCE' => 348,
			'VERSION' => 350
		},
		GOTOS => {
			'base_type' => 214,
			'expr_simple' => 277,
			'keywords_reserved_ok_for_functions_or_types' => 73,
			'keywords_notreserved_not_ok_for_functions_or_types' => 248,
			'literal_value' => 272,
			'identifier' => 66,
			'expr' => 400,
			'operator_expression' => 197,
			'cast_expression' => 106,
			'simple_type' => 211,
			'keywords_notreserved' => 252
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
			'ENCODING' => 28,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'FULL' => 36,
			'TREAT' => 37,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'DATA' => 44,
			'DAY' => 43,
			'PARTITION' => 42,
			'RANGE' => 41,
			'REF' => 47,
			'SHARE' => 46,
			'REAL' => 45,
			'OVER' => 48,
			'LARGE' => 50,
			'CURRENT_SCHEMA' => 49,
			'DELETE' => 51,
			'NULLIF' => 52,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'REPLICA' => 57,
			'PRIVILEGES' => 58,
			'ZONE' => 59,
			'LEAST' => 60,
			'STATISTICS' => 61,
			'ISNULL' => 62,
			'CALLED' => 63,
			'USTRING_CONSTANT' => 64,
			'SECURITY' => 65,
			'INCREMENT' => 67,
			'BINARY' => 68,
			'LEVEL' => 69,
			'FORCE' => 70,
			'CONCURRENTLY' => 71,
			'XBITSTRING_CONSTANT' => 72,
			'UPDATE' => 74,
			'PRESERVE' => 75,
			'CHARACTERISTICS' => 77,
			'XMLPI' => 76,
			'VALIDATE' => 78,
			"(" => 79,
			'ESTRING_CONSTANT' => 81,
			'STRICT' => 80,
			'VARYING' => 82,
			'AUTHORIZATION' => 83,
			'REASSIGN' => 84,
			'LABEL' => 86,
			'ROLLBACK' => 85,
			'OBJECT' => 87,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'TIMESTAMP' => 88,
			'RULE' => 91,
			'OPERATOR_NAME' => 93,
			'NUMERIC_CONSTANT' => 92,
			'INSERT' => 94,
			'HANDLER' => 95,
			'LOCATION' => 97,
			'EXISTS' => 96,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'BOOLEAN' => 99,
			'NULLS' => 101,
			'TYPE' => 102,
			'RESET' => 103,
			'NOWAIT' => 104,
			'PRIOR' => 105,
			'OFF' => 109,
			'BIGINT' => 108,
			'XMLSERIALIZE' => 107,
			'VERBOSE' => 110,
			'SET' => 111,
			'IMMEDIATE' => 113,
			'COMMENT' => 112,
			'DELIMITER' => 114,
			'SETOF' => 115,
			'INNER' => 116,
			'EXTRACT' => 117,
			'REINDEX' => 118,
			'PRECISION' => 119,
			'ACCESS' => 120,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'INOUT' => 123,
			'DEALLOCATE' => 124,
			'CATALOG' => 125,
			'OUT' => 126,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'XMLEXISTS' => 132,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'LEFT' => 135,
			'PRECEDING' => 136,
			'INTEGER_CONSTANT' => 137,
			'STABLE' => 138,
			'DEC' => 139,
			'XML' => 141,
			'XMLELEMENT' => 140,
			'SCROLL' => 142,
			'TEXT' => 143,
			'ALSO' => 144,
			'FUNCTION' => 145,
			'AGGREGATE' => 147,
			'SYSTEM' => 146,
			'FLOAT' => 148,
			'ATTRIBUTE' => 149,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'OVERLAPS' => 153,
			'DEFERRED' => 155,
			'VIEW' => 154,
			'REPEATABLE' => 156,
			'ALWAYS' => 157,
			'CONSTRAINTS' => 158,
			'FORWARD' => 159,
			'NOTHING' => 160,
			'EXCLUDING' => 161,
			'DECIMAL' => 162,
			'CHECKPOINT' => 163,
			'INDEXES' => 164,
			'CACHE' => 165,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'UNLISTEN' => 168,
			'LOAD' => 169,
			'FAMILY' => 170,
			'SMALLINT' => 171,
			'ASSERTION' => 172,
			'ILIKE' => 173,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'SIMILAR' => 176,
			'STDOUT' => 178,
			'BITSTRING_CONSTANT' => 180,
			'REVOKE' => 179,
			'INHERIT' => 181,
			'OUTER' => 182,
			'EXPLAIN' => 183,
			'OIDS' => 185,
			'VARCHAR' => 184,
			'AFTER' => 186,
			'CSV' => 187,
			'DISABLE' => 188,
			'VACUUM' => 189,
			'SCHEMA' => 190,
			'ROW' => 191,
			'LC_COLLATE' => 192,
			'FREEZE' => 193,
			'INDEX' => 194,
			'DEFINER' => 195,
			'XMLPARSE' => 196,
			'OWNED' => 200,
			'INCLUDING' => 199,
			'ADMIN' => 198,
			'CROSS' => 201,
			'INSTEAD' => 202,
			'NATIONAL' => 203,
			'EACH' => 204,
			'TRUSTED' => 205,
			'OWNER' => 207,
			'EXCLUSIVE' => 206,
			'CHARACTER' => 208,
			'STATEMENT' => 210,
			'CASCADE' => 209,
			'ASSIGNMENT' => 212,
			'MATCH' => 213,
			'MOVE' => 217,
			'DOUBLE' => 216,
			'CLASS' => 215,
			'TIME' => 218,
			'NUMERIC' => 219,
			'INLINE' => 221,
			'CURSOR' => 220,
			'EXTENSION' => 223,
			'ENCRYPTED' => 222,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'VALIDATOR' => 226,
			'XMLROOT' => 228,
			'UQUOTED_IDENTIFIER' => 229,
			'SUBSTRING' => 230,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'BETWEEN' => 233,
			'ABORT' => 234,
			'XMLATTRIBUTES' => 235,
			'VALUES' => 236,
			'TRUNCATE' => 238,
			'BEFORE' => 237,
			'SHOW' => 241,
			'ABSOLUTE' => 239,
			'IDENTIFIER' => 240,
			'GREATEST' => 242,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'WHITESPACE' => 247,
			'SECOND' => 249,
			'HOUR' => 250,
			'XMLFOREST' => 251,
			'FOLLOWING' => 253,
			'WRAPPER' => 254,
			'LISTEN' => 255,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'YEAR' => 258,
			'TEMP' => 260,
			'STANDALONE' => 259,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OPTIONS' => 263,
			'CAST' => 264,
			'YES' => 265,
			'PROCEDURAL' => 266,
			'SEQUENCE' => 267,
			'LIKE' => 268,
			'SIMPLE' => 269,
			'QUOTE' => 271,
			'IDENTITY' => 270,
			'POSITION' => 273,
			'EXECUTE' => 275,
			'DOMAIN' => 274,
			'UNKNOWN' => 276,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'SERVER' => 280,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'CONFIGURATION' => 283,
			'NAMES' => 284,
			'PARSER' => 285,
			'RENAME' => 286,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RIGHT' => 287,
			'IMPLICIT' => 290,
			'CLUSTER' => 291,
			'NATURAL' => 292,
			'XMLCONCAT' => 293,
			'PASSWORD' => 294,
			'CHAR' => 295,
			'RECHECK' => 296,
			'NEXT' => 297,
			'PREPARED' => 298,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'GRANTED' => 302,
			'BIT' => 301,
			'BEGIN' => 303,
			'NOTIFY' => 304,
			'HEADER' => 305,
			'INTERVAL' => 306,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'FUNCTIONS' => 309,
			'ISOLATION' => 310,
			'STORAGE' => 311,
			'STDIN' => 312,
			'RESTRICT' => 313,
			'CYCLE' => 316,
			'UNCOMMITTED' => 317,
			'IS' => 315,
			'TRIM' => 314,
			'MAXVALUE' => 318,
			'START' => 319,
			'DOCUMENT' => 321,
			'IF' => 320,
			'SAVEPOINT' => 322,
			'ROWS' => 323,
			'LAST' => 324,
			'MINVALUE' => 325,
			'KEY' => 326,
			'OPERATOR' => 327,
			'UNTIL' => 328,
			'HOLD' => 329,
			'ACTION' => 330,
			'WRITE' => 331,
			'ROLE' => 332,
			'NOTNULL' => 333,
			'SESSION' => 334,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'NONE' => 340,
			'TABLES' => 343,
			'VALID' => 342,
			'INT' => 341,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'UNENCRYPTED' => 346,
			'OVERLAY' => 347,
			'FIRST' => 349,
			'COALESCE' => 348,
			'VERSION' => 350
		},
		GOTOS => {
			'base_type' => 214,
			'expr_simple' => 277,
			'keywords_reserved_ok_for_functions_or_types' => 73,
			'keywords_notreserved_not_ok_for_functions_or_types' => 248,
			'literal_value' => 272,
			'identifier' => 66,
			'expr' => 401,
			'operator_expression' => 197,
			'cast_expression' => 106,
			'simple_type' => 211,
			'keywords_notreserved' => 252
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
			'ENCODING' => 28,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'FULL' => 36,
			'TREAT' => 37,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'DATA' => 44,
			'DAY' => 43,
			'PARTITION' => 42,
			'RANGE' => 41,
			'REF' => 47,
			'SHARE' => 46,
			'REAL' => 45,
			'OVER' => 48,
			'LARGE' => 50,
			'CURRENT_SCHEMA' => 49,
			'DELETE' => 51,
			'NULLIF' => 52,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'REPLICA' => 57,
			'PRIVILEGES' => 58,
			'ZONE' => 59,
			'LEAST' => 60,
			'STATISTICS' => 61,
			'ISNULL' => 62,
			'CALLED' => 63,
			'USTRING_CONSTANT' => 64,
			'SECURITY' => 65,
			'INCREMENT' => 67,
			'BINARY' => 68,
			'LEVEL' => 69,
			'FORCE' => 70,
			'CONCURRENTLY' => 71,
			'XBITSTRING_CONSTANT' => 72,
			'UPDATE' => 74,
			'PRESERVE' => 75,
			'CHARACTERISTICS' => 77,
			'XMLPI' => 76,
			'VALIDATE' => 78,
			"(" => 79,
			'ESTRING_CONSTANT' => 81,
			'STRICT' => 80,
			'VARYING' => 82,
			'AUTHORIZATION' => 83,
			'REASSIGN' => 84,
			'LABEL' => 86,
			'ROLLBACK' => 85,
			'OBJECT' => 87,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'TIMESTAMP' => 88,
			'RULE' => 91,
			'OPERATOR_NAME' => 93,
			'NUMERIC_CONSTANT' => 92,
			'INSERT' => 94,
			'HANDLER' => 95,
			'LOCATION' => 97,
			'EXISTS' => 96,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'BOOLEAN' => 99,
			'NULLS' => 101,
			'TYPE' => 102,
			'RESET' => 103,
			'NOWAIT' => 104,
			'PRIOR' => 105,
			'OFF' => 109,
			'BIGINT' => 108,
			'XMLSERIALIZE' => 107,
			'VERBOSE' => 110,
			'SET' => 111,
			'IMMEDIATE' => 113,
			'COMMENT' => 112,
			'DELIMITER' => 114,
			'SETOF' => 115,
			'INNER' => 116,
			'EXTRACT' => 117,
			'REINDEX' => 118,
			'PRECISION' => 119,
			'ACCESS' => 120,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'INOUT' => 123,
			'DEALLOCATE' => 124,
			'CATALOG' => 125,
			'OUT' => 126,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'XMLEXISTS' => 132,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'LEFT' => 135,
			'PRECEDING' => 136,
			'INTEGER_CONSTANT' => 137,
			'STABLE' => 138,
			'DEC' => 139,
			'XML' => 141,
			'XMLELEMENT' => 140,
			'SCROLL' => 142,
			'TEXT' => 143,
			'ALSO' => 144,
			'FUNCTION' => 145,
			'AGGREGATE' => 147,
			'SYSTEM' => 146,
			'FLOAT' => 148,
			'ATTRIBUTE' => 149,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'OVERLAPS' => 153,
			'DEFERRED' => 155,
			'VIEW' => 154,
			'REPEATABLE' => 156,
			'ALWAYS' => 157,
			'CONSTRAINTS' => 158,
			'FORWARD' => 159,
			'NOTHING' => 160,
			'EXCLUDING' => 161,
			'DECIMAL' => 162,
			'CHECKPOINT' => 163,
			'INDEXES' => 164,
			'CACHE' => 165,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'UNLISTEN' => 168,
			'LOAD' => 169,
			'FAMILY' => 170,
			'SMALLINT' => 171,
			'ASSERTION' => 172,
			'ILIKE' => 173,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'SIMILAR' => 176,
			'STDOUT' => 178,
			'BITSTRING_CONSTANT' => 180,
			'REVOKE' => 179,
			'INHERIT' => 181,
			'OUTER' => 182,
			'EXPLAIN' => 183,
			'OIDS' => 185,
			'VARCHAR' => 184,
			'AFTER' => 186,
			'CSV' => 187,
			'DISABLE' => 188,
			'VACUUM' => 189,
			'SCHEMA' => 190,
			'ROW' => 191,
			'LC_COLLATE' => 192,
			'FREEZE' => 193,
			'INDEX' => 194,
			'DEFINER' => 195,
			'XMLPARSE' => 196,
			'OWNED' => 200,
			'INCLUDING' => 199,
			'ADMIN' => 198,
			'CROSS' => 201,
			'INSTEAD' => 202,
			'NATIONAL' => 203,
			'EACH' => 204,
			'TRUSTED' => 205,
			'OWNER' => 207,
			'EXCLUSIVE' => 206,
			'CHARACTER' => 208,
			'STATEMENT' => 210,
			'CASCADE' => 209,
			'ASSIGNMENT' => 212,
			'MATCH' => 213,
			'MOVE' => 217,
			'DOUBLE' => 216,
			'CLASS' => 215,
			'TIME' => 218,
			'NUMERIC' => 219,
			'INLINE' => 221,
			'CURSOR' => 220,
			'EXTENSION' => 223,
			'ENCRYPTED' => 222,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'VALIDATOR' => 226,
			'XMLROOT' => 228,
			'UQUOTED_IDENTIFIER' => 229,
			'SUBSTRING' => 230,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'BETWEEN' => 233,
			'ABORT' => 234,
			'XMLATTRIBUTES' => 235,
			'VALUES' => 236,
			'TRUNCATE' => 238,
			'BEFORE' => 237,
			'SHOW' => 241,
			'ABSOLUTE' => 239,
			'IDENTIFIER' => 240,
			'GREATEST' => 242,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'WHITESPACE' => 247,
			'SECOND' => 249,
			'HOUR' => 250,
			'XMLFOREST' => 251,
			'FOLLOWING' => 253,
			'WRAPPER' => 254,
			'LISTEN' => 255,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'YEAR' => 258,
			'TEMP' => 260,
			'STANDALONE' => 259,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OPTIONS' => 263,
			'CAST' => 264,
			'YES' => 265,
			'PROCEDURAL' => 266,
			'SEQUENCE' => 267,
			'LIKE' => 268,
			'SIMPLE' => 269,
			'QUOTE' => 271,
			'IDENTITY' => 270,
			'POSITION' => 273,
			'EXECUTE' => 275,
			'DOMAIN' => 274,
			'UNKNOWN' => 276,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'SERVER' => 280,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'CONFIGURATION' => 283,
			'NAMES' => 284,
			'PARSER' => 285,
			'RENAME' => 286,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RIGHT' => 287,
			'IMPLICIT' => 290,
			'CLUSTER' => 291,
			'NATURAL' => 292,
			'XMLCONCAT' => 293,
			'PASSWORD' => 294,
			'CHAR' => 295,
			'RECHECK' => 296,
			'NEXT' => 297,
			'PREPARED' => 298,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'GRANTED' => 302,
			'BIT' => 301,
			'BEGIN' => 303,
			'NOTIFY' => 304,
			'HEADER' => 305,
			'INTERVAL' => 306,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'FUNCTIONS' => 309,
			'ISOLATION' => 310,
			'STORAGE' => 311,
			'STDIN' => 312,
			'RESTRICT' => 313,
			'CYCLE' => 316,
			'UNCOMMITTED' => 317,
			'IS' => 315,
			'TRIM' => 314,
			'MAXVALUE' => 318,
			'START' => 319,
			'DOCUMENT' => 321,
			'IF' => 320,
			'SAVEPOINT' => 322,
			'ROWS' => 323,
			'LAST' => 324,
			'MINVALUE' => 325,
			'KEY' => 326,
			'OPERATOR' => 327,
			'UNTIL' => 328,
			'HOLD' => 329,
			'ACTION' => 330,
			'WRITE' => 331,
			'ROLE' => 332,
			'NOTNULL' => 333,
			'SESSION' => 334,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'NONE' => 340,
			'TABLES' => 343,
			'VALID' => 342,
			'INT' => 341,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'UNENCRYPTED' => 346,
			'OVERLAY' => 347,
			'FIRST' => 349,
			'COALESCE' => 348,
			'VERSION' => 350
		},
		GOTOS => {
			'base_type' => 214,
			'expr_simple' => 277,
			'keywords_reserved_ok_for_functions_or_types' => 73,
			'keywords_notreserved_not_ok_for_functions_or_types' => 248,
			'literal_value' => 272,
			'identifier' => 66,
			'expr' => 402,
			'operator_expression' => 197,
			'cast_expression' => 106,
			'simple_type' => 211,
			'keywords_notreserved' => 252
		}
	},
	{#State 371
		DEFAULT => -31
	},
	{#State 372
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
			'ENCODING' => 28,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'FULL' => 36,
			'TREAT' => 37,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'DATA' => 44,
			'DAY' => 43,
			'PARTITION' => 42,
			'RANGE' => 41,
			'REF' => 47,
			'SHARE' => 46,
			'REAL' => 45,
			'OVER' => 48,
			'LARGE' => 50,
			'CURRENT_SCHEMA' => 49,
			'DELETE' => 51,
			'NULLIF' => 52,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'REPLICA' => 57,
			'PRIVILEGES' => 58,
			'ZONE' => 59,
			'LEAST' => 60,
			'STATISTICS' => 61,
			'ISNULL' => 62,
			'CALLED' => 63,
			'USTRING_CONSTANT' => 64,
			'SECURITY' => 65,
			'INCREMENT' => 67,
			'BINARY' => 68,
			'LEVEL' => 69,
			'FORCE' => 70,
			'CONCURRENTLY' => 71,
			'XBITSTRING_CONSTANT' => 72,
			'UPDATE' => 74,
			'PRESERVE' => 75,
			'CHARACTERISTICS' => 77,
			'XMLPI' => 76,
			'VALIDATE' => 78,
			"(" => 79,
			'ESTRING_CONSTANT' => 81,
			'STRICT' => 80,
			'VARYING' => 82,
			'AUTHORIZATION' => 83,
			'REASSIGN' => 84,
			'LABEL' => 86,
			'ROLLBACK' => 85,
			'OBJECT' => 87,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'TIMESTAMP' => 88,
			'RULE' => 91,
			'OPERATOR_NAME' => 93,
			'NUMERIC_CONSTANT' => 92,
			'INSERT' => 94,
			'HANDLER' => 95,
			'LOCATION' => 97,
			'EXISTS' => 96,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'BOOLEAN' => 99,
			'NULLS' => 101,
			'TYPE' => 102,
			'RESET' => 103,
			'NOWAIT' => 104,
			'PRIOR' => 105,
			'OFF' => 109,
			'BIGINT' => 108,
			'XMLSERIALIZE' => 107,
			'VERBOSE' => 110,
			'SET' => 111,
			'IMMEDIATE' => 113,
			'COMMENT' => 112,
			'DELIMITER' => 114,
			'SETOF' => 115,
			'INNER' => 116,
			'EXTRACT' => 117,
			'REINDEX' => 118,
			'PRECISION' => 119,
			'ACCESS' => 120,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'INOUT' => 123,
			'DEALLOCATE' => 124,
			'CATALOG' => 125,
			'OUT' => 126,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'XMLEXISTS' => 132,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'LEFT' => 135,
			'PRECEDING' => 136,
			'INTEGER_CONSTANT' => 137,
			'STABLE' => 138,
			'DEC' => 139,
			'XML' => 141,
			'XMLELEMENT' => 140,
			'SCROLL' => 142,
			'TEXT' => 143,
			'ALSO' => 144,
			'FUNCTION' => 145,
			'AGGREGATE' => 147,
			'SYSTEM' => 146,
			'FLOAT' => 148,
			'ATTRIBUTE' => 149,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'OVERLAPS' => 153,
			'DEFERRED' => 155,
			'VIEW' => 154,
			'REPEATABLE' => 156,
			'ALWAYS' => 157,
			'CONSTRAINTS' => 158,
			'FORWARD' => 159,
			'NOTHING' => 160,
			'EXCLUDING' => 161,
			'DECIMAL' => 162,
			'CHECKPOINT' => 163,
			'INDEXES' => 164,
			'CACHE' => 165,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'UNLISTEN' => 168,
			'LOAD' => 169,
			'FAMILY' => 170,
			'SMALLINT' => 171,
			'ASSERTION' => 172,
			'ILIKE' => 173,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'SIMILAR' => 176,
			'STDOUT' => 178,
			'BITSTRING_CONSTANT' => 180,
			'REVOKE' => 179,
			'INHERIT' => 181,
			'OUTER' => 182,
			'EXPLAIN' => 183,
			'OIDS' => 185,
			'VARCHAR' => 184,
			'AFTER' => 186,
			'CSV' => 187,
			'DISABLE' => 188,
			'VACUUM' => 189,
			'SCHEMA' => 190,
			'ROW' => 191,
			'LC_COLLATE' => 192,
			'FREEZE' => 193,
			'INDEX' => 194,
			'DEFINER' => 195,
			'XMLPARSE' => 196,
			'OWNED' => 200,
			'INCLUDING' => 199,
			'ADMIN' => 198,
			'CROSS' => 201,
			'INSTEAD' => 202,
			'NATIONAL' => 203,
			'EACH' => 204,
			'TRUSTED' => 205,
			'OWNER' => 207,
			'EXCLUSIVE' => 206,
			'CHARACTER' => 208,
			'STATEMENT' => 210,
			'CASCADE' => 209,
			'ASSIGNMENT' => 212,
			'MATCH' => 213,
			'MOVE' => 217,
			'DOUBLE' => 216,
			'CLASS' => 215,
			'TIME' => 218,
			'NUMERIC' => 219,
			'INLINE' => 221,
			'CURSOR' => 220,
			'EXTENSION' => 223,
			'ENCRYPTED' => 222,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'VALIDATOR' => 226,
			'XMLROOT' => 228,
			'UQUOTED_IDENTIFIER' => 229,
			'SUBSTRING' => 230,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'BETWEEN' => 233,
			'ABORT' => 234,
			'XMLATTRIBUTES' => 235,
			'VALUES' => 236,
			'TRUNCATE' => 238,
			'BEFORE' => 237,
			'SHOW' => 241,
			'ABSOLUTE' => 239,
			'IDENTIFIER' => 240,
			'GREATEST' => 242,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'WHITESPACE' => 247,
			'SECOND' => 249,
			'HOUR' => 250,
			'XMLFOREST' => 251,
			'FOLLOWING' => 253,
			'WRAPPER' => 254,
			'LISTEN' => 255,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'YEAR' => 258,
			'TEMP' => 260,
			'STANDALONE' => 259,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OPTIONS' => 263,
			'CAST' => 264,
			'YES' => 265,
			'PROCEDURAL' => 266,
			'SEQUENCE' => 267,
			'LIKE' => 268,
			'SIMPLE' => 269,
			'QUOTE' => 271,
			'IDENTITY' => 270,
			'POSITION' => 273,
			'EXECUTE' => 275,
			'DOMAIN' => 274,
			'UNKNOWN' => 276,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'SERVER' => 280,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'CONFIGURATION' => 283,
			'NAMES' => 284,
			'PARSER' => 285,
			'RENAME' => 286,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RIGHT' => 287,
			'IMPLICIT' => 290,
			'CLUSTER' => 291,
			'NATURAL' => 292,
			'XMLCONCAT' => 293,
			'PASSWORD' => 294,
			'CHAR' => 295,
			'RECHECK' => 296,
			'NEXT' => 297,
			'PREPARED' => 298,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'GRANTED' => 302,
			'BIT' => 301,
			'BEGIN' => 303,
			'NOTIFY' => 304,
			'HEADER' => 305,
			'INTERVAL' => 306,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'FUNCTIONS' => 309,
			'ISOLATION' => 310,
			'STORAGE' => 311,
			'STDIN' => 312,
			'RESTRICT' => 313,
			'CYCLE' => 316,
			'UNCOMMITTED' => 317,
			'IS' => 315,
			'TRIM' => 314,
			'MAXVALUE' => 318,
			'START' => 319,
			'DOCUMENT' => 321,
			'IF' => 320,
			'SAVEPOINT' => 322,
			'ROWS' => 323,
			'LAST' => 324,
			'MINVALUE' => 325,
			'KEY' => 326,
			'OPERATOR' => 327,
			'UNTIL' => 328,
			'HOLD' => 329,
			'ACTION' => 330,
			'WRITE' => 331,
			'ROLE' => 332,
			'NOTNULL' => 333,
			'SESSION' => 334,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'NONE' => 340,
			'TABLES' => 343,
			'VALID' => 342,
			'INT' => 341,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'UNENCRYPTED' => 346,
			'OVERLAY' => 347,
			'FIRST' => 349,
			'COALESCE' => 348,
			'VERSION' => 350
		},
		GOTOS => {
			'base_type' => 214,
			'expr_simple' => 277,
			'keywords_reserved_ok_for_functions_or_types' => 73,
			'keywords_notreserved_not_ok_for_functions_or_types' => 248,
			'literal_value' => 272,
			'identifier' => 66,
			'expr' => 403,
			'operator_expression' => 197,
			'cast_expression' => 106,
			'simple_type' => 211,
			'keywords_notreserved' => 252
		}
	},
	{#State 373
		DEFAULT => -8
	},
	{#State 374
		DEFAULT => -56
	},
	{#State 375
		DEFAULT => -55
	},
	{#State 376
		DEFAULT => -33
	},
	{#State 377
		ACTIONS => {
			"::" => 357,
			"%" => 368,
			"^" => 358,
			"*" => 369,
			"/" => 360
		},
		DEFAULT => -17
	},
	{#State 378
		DEFAULT => -29
	},
	{#State 379
		ACTIONS => {
			'WITHOUT' => 406,
			'WITH' => 405,
			"(" => 404
		},
		DEFAULT => -392
	},
	{#State 380
		DEFAULT => -52
	},
	{#State 381
		ACTIONS => {
			"(" => 407
		},
		DEFAULT => -367
	},
	{#State 382
		ACTIONS => {
			"(" => 408
		},
		DEFAULT => -396
	},
	{#State 383
		DEFAULT => -45
	},
	{#State 384
		ACTIONS => {
			'WITHOUT' => 411,
			'WITH' => 410,
			"(" => 409
		},
		DEFAULT => -391
	},
	{#State 385
		ACTIONS => {
			"(" => 412
		},
		DEFAULT => -381
	},
	{#State 386
		DEFAULT => -51
	},
	{#State 387
		DEFAULT => -53
	},
	{#State 388
		ACTIONS => {
			'YEAR' => -87,
			'MINUTE' => -87,
			'DAY' => -87,
			'MONTH' => -87,
			'SECOND' => -87,
			"(" => 413,
			'HOUR' => -87
		},
		DEFAULT => -375
	},
	{#State 389
		ACTIONS => {
			'YEAR' => 419,
			'MINUTE' => 415,
			'HOUR' => 418,
			'MONTH' => 414,
			'DAY' => 416,
			'SECOND' => 417
		}
	},
	{#State 390
		ACTIONS => {
			"::" => 357
		},
		DEFAULT => -25
	},
	{#State 391
		ACTIONS => {
			"-" => 363,
			"::" => 357,
			"+" => 356,
			"%" => 368,
			"^" => 358,
			"*" => 369,
			"/" => 360
		},
		DEFAULT => -28
	},
	{#State 392
		ACTIONS => {
			"::" => 357,
			"^" => 358
		},
		DEFAULT => -21
	},
	{#State 393
		ACTIONS => {
			"-" => 363,
			"::" => 357,
			"+" => 356,
			"%" => 368,
			'BETWEEN' => 365,
			"^" => 358,
			"*" => 369,
			'OPERATOR_NAME' => 359,
			"/" => 360
		},
		DEFAULT => -27
	},
	{#State 394
		DEFAULT => -10
	},
	{#State 395
		ACTIONS => {
			"::" => 357,
			"%" => 368,
			"^" => 358,
			"*" => 369,
			"/" => 360
		},
		DEFAULT => -18
	},
	{#State 396
		ACTIONS => {
			"-" => 363,
			"::" => 357,
			"+" => 356,
			'ILIKE' => 361,
			"%" => 368,
			'BETWEEN' => 365,
			"^" => 358,
			"*" => 369,
			'OPERATOR_NAME' => 359,
			'LIKE' => 366,
			"/" => 360
		},
		DEFAULT => -22
	},
	{#State 397
		ACTIONS => {
			"-" => 363,
			'LIKE' => 366,
			"::" => 357,
			"<" => 364,
			"+" => 356,
			'ILIKE' => 361,
			"%" => 368,
			"/" => 360,
			"=" => 367,
			'AND' => 420,
			'BETWEEN' => 365,
			"^" => 358,
			"*" => 369,
			'OPERATOR_NAME' => 359,
			">" => 370
		}
	},
	{#State 398
		ACTIONS => {
			"-" => 363,
			"::" => 357,
			"+" => 356,
			"%" => 368,
			'BETWEEN' => 365,
			"^" => 358,
			"*" => 369,
			'OPERATOR_NAME' => 359,
			"/" => 360
		},
		DEFAULT => -26
	},
	{#State 399
		ACTIONS => {
			"-" => 363,
			"::" => 357,
			"<" => 364,
			"+" => 356,
			'ILIKE' => 361,
			"%" => 368,
			'BETWEEN' => 365,
			"^" => 358,
			"*" => 369,
			'OPERATOR_NAME' => 359,
			'LIKE' => 366,
			"/" => 360,
			"=" => 367,
			">" => 370
		},
		DEFAULT => -24
	},
	{#State 400
		ACTIONS => {
			"::" => 357,
			"^" => 358
		},
		DEFAULT => -20
	},
	{#State 401
		ACTIONS => {
			"::" => 357,
			"^" => 358
		},
		DEFAULT => -19
	},
	{#State 402
		ACTIONS => {
			"-" => 363,
			"::" => 357,
			"+" => 356,
			'ILIKE' => 361,
			"%" => 368,
			'BETWEEN' => 365,
			"^" => 358,
			"*" => 369,
			'OPERATOR_NAME' => 359,
			'LIKE' => 366,
			"/" => 360
		},
		DEFAULT => -23
	},
	{#State 403
		ACTIONS => {
			"-" => 363,
			'LIKE' => 366,
			"::" => 357,
			"<" => 364,
			"+" => 356,
			'ILIKE' => 361,
			"%" => 368,
			"/" => 360,
			"=" => 367,
			'BETWEEN' => 365,
			"^" => 358,
			"*" => 369,
			'OPERATOR_NAME' => 359,
			'AS' => 421,
			">" => 370
		}
	},
	{#State 404
		ACTIONS => {
			'INTEGER_CONSTANT' => 422
		}
	},
	{#State 405
		ACTIONS => {
			'TIME' => 423
		}
	},
	{#State 406
		ACTIONS => {
			'TIME' => 424
		}
	},
	{#State 407
		ACTIONS => {
			'INTEGER_CONSTANT' => 425
		}
	},
	{#State 408
		ACTIONS => {
			'INTEGER_CONSTANT' => 426
		}
	},
	{#State 409
		ACTIONS => {
			'INTEGER_CONSTANT' => 427
		}
	},
	{#State 410
		ACTIONS => {
			'TIME' => 428
		}
	},
	{#State 411
		ACTIONS => {
			'TIME' => 429
		}
	},
	{#State 412
		ACTIONS => {
			'INTEGER_CONSTANT' => 430
		}
	},
	{#State 413
		ACTIONS => {
			'INTEGER_CONSTANT' => 431
		}
	},
	{#State 414
		DEFAULT => -71
	},
	{#State 415
		ACTIONS => {
			'TO' => 432
		},
		DEFAULT => -74
	},
	{#State 416
		ACTIONS => {
			'TO' => 433
		},
		DEFAULT => -72
	},
	{#State 417
		ACTIONS => {
			"(" => 434
		},
		DEFAULT => -75
	},
	{#State 418
		ACTIONS => {
			'TO' => 435
		},
		DEFAULT => -73
	},
	{#State 419
		ACTIONS => {
			'TO' => 436
		},
		DEFAULT => -70
	},
	{#State 420
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
			'ENCODING' => 28,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'FULL' => 36,
			'TREAT' => 37,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'DATA' => 44,
			'DAY' => 43,
			'PARTITION' => 42,
			'RANGE' => 41,
			'REF' => 47,
			'SHARE' => 46,
			'REAL' => 45,
			'OVER' => 48,
			'LARGE' => 50,
			'CURRENT_SCHEMA' => 49,
			'DELETE' => 51,
			'NULLIF' => 52,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'REPLICA' => 57,
			'PRIVILEGES' => 58,
			'ZONE' => 59,
			'LEAST' => 60,
			'STATISTICS' => 61,
			'ISNULL' => 62,
			'CALLED' => 63,
			'USTRING_CONSTANT' => 64,
			'SECURITY' => 65,
			'INCREMENT' => 67,
			'BINARY' => 68,
			'LEVEL' => 69,
			'FORCE' => 70,
			'CONCURRENTLY' => 71,
			'XBITSTRING_CONSTANT' => 72,
			'UPDATE' => 74,
			'PRESERVE' => 75,
			'CHARACTERISTICS' => 77,
			'XMLPI' => 76,
			'VALIDATE' => 78,
			"(" => 79,
			'ESTRING_CONSTANT' => 81,
			'STRICT' => 80,
			'VARYING' => 82,
			'AUTHORIZATION' => 83,
			'REASSIGN' => 84,
			'LABEL' => 86,
			'ROLLBACK' => 85,
			'OBJECT' => 87,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'TIMESTAMP' => 88,
			'RULE' => 91,
			'OPERATOR_NAME' => 93,
			'NUMERIC_CONSTANT' => 92,
			'INSERT' => 94,
			'HANDLER' => 95,
			'LOCATION' => 97,
			'EXISTS' => 96,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'BOOLEAN' => 99,
			'NULLS' => 101,
			'TYPE' => 102,
			'RESET' => 103,
			'NOWAIT' => 104,
			'PRIOR' => 105,
			'OFF' => 109,
			'BIGINT' => 108,
			'XMLSERIALIZE' => 107,
			'VERBOSE' => 110,
			'SET' => 111,
			'IMMEDIATE' => 113,
			'COMMENT' => 112,
			'DELIMITER' => 114,
			'SETOF' => 115,
			'INNER' => 116,
			'EXTRACT' => 117,
			'REINDEX' => 118,
			'PRECISION' => 119,
			'ACCESS' => 120,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'INOUT' => 123,
			'DEALLOCATE' => 124,
			'CATALOG' => 125,
			'OUT' => 126,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'XMLEXISTS' => 132,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'LEFT' => 135,
			'PRECEDING' => 136,
			'INTEGER_CONSTANT' => 137,
			'STABLE' => 138,
			'DEC' => 139,
			'XML' => 141,
			'XMLELEMENT' => 140,
			'SCROLL' => 142,
			'TEXT' => 143,
			'ALSO' => 144,
			'FUNCTION' => 145,
			'AGGREGATE' => 147,
			'SYSTEM' => 146,
			'FLOAT' => 148,
			'ATTRIBUTE' => 149,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'OVERLAPS' => 153,
			'DEFERRED' => 155,
			'VIEW' => 154,
			'REPEATABLE' => 156,
			'ALWAYS' => 157,
			'CONSTRAINTS' => 158,
			'FORWARD' => 159,
			'NOTHING' => 160,
			'EXCLUDING' => 161,
			'DECIMAL' => 162,
			'CHECKPOINT' => 163,
			'INDEXES' => 164,
			'CACHE' => 165,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'UNLISTEN' => 168,
			'LOAD' => 169,
			'FAMILY' => 170,
			'SMALLINT' => 171,
			'ASSERTION' => 172,
			'ILIKE' => 173,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'SIMILAR' => 176,
			'STDOUT' => 178,
			'BITSTRING_CONSTANT' => 180,
			'REVOKE' => 179,
			'INHERIT' => 181,
			'OUTER' => 182,
			'EXPLAIN' => 183,
			'OIDS' => 185,
			'VARCHAR' => 184,
			'AFTER' => 186,
			'CSV' => 187,
			'DISABLE' => 188,
			'VACUUM' => 189,
			'SCHEMA' => 190,
			'ROW' => 191,
			'LC_COLLATE' => 192,
			'FREEZE' => 193,
			'INDEX' => 194,
			'DEFINER' => 195,
			'XMLPARSE' => 196,
			'OWNED' => 200,
			'INCLUDING' => 199,
			'ADMIN' => 198,
			'CROSS' => 201,
			'INSTEAD' => 202,
			'NATIONAL' => 203,
			'EACH' => 204,
			'TRUSTED' => 205,
			'OWNER' => 207,
			'EXCLUSIVE' => 206,
			'CHARACTER' => 208,
			'STATEMENT' => 210,
			'CASCADE' => 209,
			'ASSIGNMENT' => 212,
			'MATCH' => 213,
			'MOVE' => 217,
			'DOUBLE' => 216,
			'CLASS' => 215,
			'TIME' => 218,
			'NUMERIC' => 219,
			'INLINE' => 221,
			'CURSOR' => 220,
			'EXTENSION' => 223,
			'ENCRYPTED' => 222,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'VALIDATOR' => 226,
			'XMLROOT' => 228,
			'UQUOTED_IDENTIFIER' => 229,
			'SUBSTRING' => 230,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'BETWEEN' => 233,
			'ABORT' => 234,
			'XMLATTRIBUTES' => 235,
			'VALUES' => 236,
			'TRUNCATE' => 238,
			'BEFORE' => 237,
			'SHOW' => 241,
			'ABSOLUTE' => 239,
			'IDENTIFIER' => 240,
			'GREATEST' => 242,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'WHITESPACE' => 247,
			'SECOND' => 249,
			'HOUR' => 250,
			'XMLFOREST' => 251,
			'FOLLOWING' => 253,
			'WRAPPER' => 254,
			'LISTEN' => 255,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'YEAR' => 258,
			'TEMP' => 260,
			'STANDALONE' => 259,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OPTIONS' => 263,
			'CAST' => 264,
			'YES' => 265,
			'PROCEDURAL' => 266,
			'SEQUENCE' => 267,
			'LIKE' => 268,
			'SIMPLE' => 269,
			'QUOTE' => 271,
			'IDENTITY' => 270,
			'POSITION' => 273,
			'EXECUTE' => 275,
			'DOMAIN' => 274,
			'UNKNOWN' => 276,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'SERVER' => 280,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'CONFIGURATION' => 283,
			'NAMES' => 284,
			'PARSER' => 285,
			'RENAME' => 286,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RIGHT' => 287,
			'IMPLICIT' => 290,
			'CLUSTER' => 291,
			'NATURAL' => 292,
			'XMLCONCAT' => 293,
			'PASSWORD' => 294,
			'CHAR' => 295,
			'RECHECK' => 296,
			'NEXT' => 297,
			'PREPARED' => 298,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'GRANTED' => 302,
			'BIT' => 301,
			'BEGIN' => 303,
			'NOTIFY' => 304,
			'HEADER' => 305,
			'INTERVAL' => 306,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'FUNCTIONS' => 309,
			'ISOLATION' => 310,
			'STORAGE' => 311,
			'STDIN' => 312,
			'RESTRICT' => 313,
			'CYCLE' => 316,
			'UNCOMMITTED' => 317,
			'IS' => 315,
			'TRIM' => 314,
			'MAXVALUE' => 318,
			'START' => 319,
			'DOCUMENT' => 321,
			'IF' => 320,
			'SAVEPOINT' => 322,
			'ROWS' => 323,
			'LAST' => 324,
			'MINVALUE' => 325,
			'KEY' => 326,
			'OPERATOR' => 327,
			'UNTIL' => 328,
			'HOLD' => 329,
			'ACTION' => 330,
			'WRITE' => 331,
			'ROLE' => 332,
			'NOTNULL' => 333,
			'SESSION' => 334,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'NONE' => 340,
			'TABLES' => 343,
			'VALID' => 342,
			'INT' => 341,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'UNENCRYPTED' => 346,
			'OVERLAY' => 347,
			'FIRST' => 349,
			'COALESCE' => 348,
			'VERSION' => 350
		},
		GOTOS => {
			'base_type' => 214,
			'expr_simple' => 277,
			'keywords_reserved_ok_for_functions_or_types' => 73,
			'keywords_notreserved_not_ok_for_functions_or_types' => 248,
			'literal_value' => 272,
			'identifier' => 66,
			'expr' => 437,
			'operator_expression' => 197,
			'cast_expression' => 106,
			'simple_type' => 211,
			'keywords_notreserved' => 252
		}
	},
	{#State 421
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
			'ENCODING' => 28,
			'TEMPLATE' => 29,
			'DICTIONARY' => 30,
			'SEARCH' => 31,
			'PREPARE' => 32,
			'LOCK' => 33,
			'DEFAULTS' => 34,
			'FULL' => 36,
			'TREAT' => 37,
			'BY' => 38,
			'NO' => 39,
			'MINUTE' => 40,
			'DATA' => 44,
			'DAY' => 43,
			'PARTITION' => 42,
			'RANGE' => 41,
			'REF' => 47,
			'SHARE' => 46,
			'REAL' => 45,
			'OVER' => 48,
			'LARGE' => 50,
			'CURRENT_SCHEMA' => 49,
			'DELETE' => 51,
			'NULLIF' => 52,
			'CONNECTION' => 53,
			'BACKWARD' => 55,
			'CLOSE' => 54,
			'COST' => 56,
			'REPLICA' => 57,
			'PRIVILEGES' => 58,
			'ZONE' => 59,
			'LEAST' => 60,
			'STATISTICS' => 61,
			'ISNULL' => 62,
			'CALLED' => 63,
			'SECURITY' => 65,
			'INCREMENT' => 67,
			'BINARY' => 68,
			'LEVEL' => 69,
			'FORCE' => 70,
			'CONCURRENTLY' => 71,
			'UPDATE' => 74,
			'PRESERVE' => 75,
			'XMLPI' => 76,
			'CHARACTERISTICS' => 77,
			'VALIDATE' => 78,
			'STRICT' => 80,
			'VARYING' => 82,
			'AUTHORIZATION' => 83,
			'REASSIGN' => 84,
			'LABEL' => 86,
			'ROLLBACK' => 85,
			'OBJECT' => 87,
			'TIMESTAMP' => 379,
			'DELIMITERS' => 90,
			'PROCEDURE' => 89,
			'RULE' => 91,
			'INSERT' => 94,
			'HANDLER' => 95,
			'LOCATION' => 97,
			'EXISTS' => 96,
			'IMMUTABLE' => 98,
			'RELEASE' => 100,
			'BOOLEAN' => 99,
			'NULLS' => 101,
			'TYPE' => 102,
			'RESET' => 103,
			'NOWAIT' => 104,
			'PRIOR' => 105,
			'OFF' => 109,
			'BIGINT' => 108,
			'XMLSERIALIZE' => 107,
			'VERBOSE' => 110,
			'SET' => 111,
			'IMMEDIATE' => 113,
			'COMMENT' => 112,
			'DELIMITER' => 114,
			'SETOF' => 115,
			'INNER' => 116,
			'EXTRACT' => 117,
			'REINDEX' => 118,
			'PRECISION' => 119,
			'ACCESS' => 120,
			'OPTION' => 121,
			'COMMENTS' => 122,
			'INOUT' => 123,
			'DEALLOCATE' => 124,
			'CATALOG' => 125,
			'OUT' => 126,
			'RESTART' => 127,
			'MAPPING' => 128,
			'OF' => 129,
			'UNLOGGED' => 130,
			'CONTINUE' => 131,
			'XMLEXISTS' => 132,
			'UNBOUNDED' => 133,
			'READ' => 134,
			'LEFT' => 135,
			'PRECEDING' => 136,
			'STABLE' => 138,
			'DEC' => 139,
			'XMLELEMENT' => 140,
			'XML' => 141,
			'SCROLL' => 142,
			'TEXT' => 143,
			'FUNCTION' => 145,
			'ALSO' => 144,
			'SYSTEM' => 146,
			'AGGREGATE' => 147,
			'FLOAT' => 148,
			'ATTRIBUTE' => 149,
			'ADD' => 150,
			'STRIP' => 151,
			'TABLESPACE' => 152,
			'OVERLAPS' => 153,
			'DEFERRED' => 155,
			'VIEW' => 154,
			'REPEATABLE' => 156,
			'ALWAYS' => 157,
			'CONSTRAINTS' => 158,
			'FORWARD' => 159,
			'NOTHING' => 160,
			'EXCLUDING' => 161,
			'DECIMAL' => 381,
			'CHECKPOINT' => 163,
			'INDEXES' => 164,
			'CACHE' => 165,
			'COMMIT' => 166,
			'DECLARE' => 167,
			'UNLISTEN' => 168,
			'LOAD' => 169,
			'FAMILY' => 170,
			'SMALLINT' => 171,
			'ASSERTION' => 172,
			'ILIKE' => 173,
			'GLOBAL' => 174,
			'EXTERNAL' => 175,
			'SIMILAR' => 176,
			'STDOUT' => 178,
			'REVOKE' => 179,
			'INHERIT' => 181,
			'OUTER' => 182,
			'EXPLAIN' => 183,
			'VARCHAR' => 382,
			'OIDS' => 185,
			'AFTER' => 186,
			'CSV' => 187,
			'DISABLE' => 188,
			'VACUUM' => 189,
			'SCHEMA' => 190,
			'ROW' => 191,
			'LC_COLLATE' => 192,
			'FREEZE' => 193,
			'INDEX' => 194,
			'DEFINER' => 195,
			'XMLPARSE' => 196,
			'OWNED' => 200,
			'INCLUDING' => 199,
			'ADMIN' => 198,
			'CROSS' => 201,
			'INSTEAD' => 202,
			'NATIONAL' => 203,
			'EACH' => 204,
			'TRUSTED' => 205,
			'OWNER' => 207,
			'EXCLUSIVE' => 206,
			'CHARACTER' => 208,
			'STATEMENT' => 210,
			'CASCADE' => 209,
			'ASSIGNMENT' => 212,
			'MATCH' => 213,
			'MOVE' => 217,
			'DOUBLE' => 216,
			'CLASS' => 215,
			'TIME' => 384,
			'NUMERIC' => 385,
			'INLINE' => 221,
			'CURSOR' => 220,
			'EXTENSION' => 223,
			'ENCRYPTED' => 222,
			'CHAIN' => 224,
			'RECURSIVE' => 225,
			'VALIDATOR' => 226,
			'XMLROOT' => 228,
			'UQUOTED_IDENTIFIER' => 229,
			'SUBSTRING' => 230,
			'CASCADED' => 231,
			'DISCARD' => 232,
			'BETWEEN' => 233,
			'ABORT' => 234,
			'XMLATTRIBUTES' => 235,
			'VALUES' => 236,
			'TRUNCATE' => 238,
			'BEFORE' => 237,
			'SHOW' => 241,
			'ABSOLUTE' => 239,
			'IDENTIFIER' => 240,
			'GREATEST' => 242,
			'PLANS' => 243,
			'PARTIAL' => 244,
			'SEQUENCES' => 245,
			'EXCLUDE' => 246,
			'WHITESPACE' => 247,
			'SECOND' => 249,
			'HOUR' => 250,
			'XMLFOREST' => 251,
			'FOLLOWING' => 253,
			'WRAPPER' => 254,
			'LISTEN' => 255,
			'VOLATILE' => 256,
			'LANGUAGE' => 257,
			'YEAR' => 258,
			'TEMP' => 260,
			'STANDALONE' => 259,
			'COPY' => 261,
			'WITHOUT' => 262,
			'OPTIONS' => 263,
			'YES' => 265,
			'PROCEDURAL' => 266,
			'SEQUENCE' => 267,
			'LIKE' => 268,
			'SIMPLE' => 269,
			'QUOTE' => 271,
			'IDENTITY' => 270,
			'POSITION' => 273,
			'EXECUTE' => 275,
			'DOMAIN' => 274,
			'UNKNOWN' => 276,
			'CONTENT' => 278,
			'QUOTED_IDENTIFIER' => 279,
			'SERVER' => 280,
			'RELATIVE' => 281,
			'TRANSACTION' => 282,
			'NAMES' => 284,
			'CONFIGURATION' => 283,
			'RENAME' => 286,
			'PARSER' => 285,
			'ALTER' => 289,
			'CURRENT' => 288,
			'RIGHT' => 287,
			'IMPLICIT' => 290,
			'CLUSTER' => 291,
			'NATURAL' => 292,
			'XMLCONCAT' => 293,
			'PASSWORD' => 294,
			'CHAR' => 295,
			'RECHECK' => 296,
			'NEXT' => 297,
			'PREPARED' => 298,
			'TEMPORARY' => 299,
			'COMMITTED' => 300,
			'GRANTED' => 302,
			'BIT' => 301,
			'BEGIN' => 303,
			'NOTIFY' => 304,
			'HEADER' => 305,
			'INTERVAL' => 388,
			'LC_CTYPE' => 307,
			'NAME' => 308,
			'FUNCTIONS' => 309,
			'ISOLATION' => 310,
			'STORAGE' => 311,
			'STDIN' => 312,
			'RESTRICT' => 313,
			'CYCLE' => 316,
			'UNCOMMITTED' => 317,
			'IS' => 315,
			'TRIM' => 314,
			'MAXVALUE' => 318,
			'START' => 319,
			'DOCUMENT' => 321,
			'IF' => 320,
			'SAVEPOINT' => 322,
			'ROWS' => 323,
			'LAST' => 324,
			'MINVALUE' => 325,
			'KEY' => 326,
			'OPERATOR' => 327,
			'UNTIL' => 328,
			'HOLD' => 329,
			'ACTION' => 330,
			'WRITE' => 331,
			'ROLE' => 332,
			'NOTNULL' => 333,
			'SESSION' => 334,
			'CONVERSION' => 335,
			'DATABASE' => 337,
			'ENUM' => 336,
			'ENABLE' => 338,
			'LOCAL' => 339,
			'NONE' => 340,
			'TABLES' => 343,
			'VALID' => 342,
			'INT' => 341,
			'TRIGGER' => 344,
			'COLLATION' => 345,
			'UNENCRYPTED' => 346,
			'OVERLAY' => 347,
			'FIRST' => 349,
			'COALESCE' => 348,
			'VERSION' => 350
		},
		GOTOS => {
			'base_type' => 214,
			'time_type' => 380,
			'keywords_reserved_ok_for_functions_or_types' => 73,
			'base_interval_type' => 389,
			'keywords_notreserved_not_ok_for_functions_or_types' => 248,
			'normal_type' => 438,
			'interval_type' => 387,
			'identifier' => 66,
			'timestamp_type' => 386,
			'simple_type' => 383,
			'keywords_notreserved' => 252
		}
	},
	{#State 422
		ACTIONS => {
			")" => 439
		}
	},
	{#State 423
		ACTIONS => {
			'ZONE' => 440
		}
	},
	{#State 424
		ACTIONS => {
			'ZONE' => 441
		}
	},
	{#State 425
		ACTIONS => {
			"," => 442,
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
			")" => 445
		}
	},
	{#State 428
		ACTIONS => {
			'ZONE' => 446
		}
	},
	{#State 429
		ACTIONS => {
			'ZONE' => 447
		}
	},
	{#State 430
		ACTIONS => {
			"," => 448,
			")" => 449
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
			"-" => 363,
			"::" => 357,
			"<" => 364,
			"+" => 356,
			'ILIKE' => 361,
			"%" => 368,
			'BETWEEN' => 365,
			"^" => 358,
			"*" => 369,
			'OPERATOR_NAME' => 359,
			'LIKE' => 366,
			"/" => 360,
			"=" => 367,
			">" => 370
		},
		DEFAULT => -14
	},
	{#State 438
		ACTIONS => {
			")" => 459
		}
	},
	{#State 439
		ACTIONS => {
			'WITHOUT' => 461,
			'WITH' => 460
		},
		DEFAULT => -61
	},
	{#State 440
		DEFAULT => -59
	},
	{#State 441
		DEFAULT => -60
	},
	{#State 442
		ACTIONS => {
			'INTEGER_CONSTANT' => 462
		}
	},
	{#State 443
		DEFAULT => -48
	},
	{#State 444
		DEFAULT => -50
	},
	{#State 445
		ACTIONS => {
			'WITHOUT' => 464,
			'WITH' => 463
		},
		DEFAULT => -66
	},
	{#State 446
		DEFAULT => -64
	},
	{#State 447
		DEFAULT => -65
	},
	{#State 448
		ACTIONS => {
			'INTEGER_CONSTANT' => 465
		}
	},
	{#State 449
		DEFAULT => -46
	},
	{#State 450
		ACTIONS => {
			'YEAR' => -88,
			'MINUTE' => -88,
			'DAY' => -88,
			'MONTH' => -88,
			'SECOND' => -88,
			'HOUR' => -88
		},
		DEFAULT => -69
	},
	{#State 451
		ACTIONS => {
			"(" => 466
		},
		DEFAULT => -82
	},
	{#State 452
		DEFAULT => -78
	},
	{#State 453
		ACTIONS => {
			"(" => 467
		},
		DEFAULT => -79
	},
	{#State 454
		DEFAULT => -77
	},
	{#State 455
		ACTIONS => {
			")" => 468
		}
	},
	{#State 456
		DEFAULT => -80
	},
	{#State 457
		ACTIONS => {
			"(" => 469
		},
		DEFAULT => -81
	},
	{#State 458
		DEFAULT => -76
	},
	{#State 459
		DEFAULT => -30
	},
	{#State 460
		ACTIONS => {
			'TIME' => 470
		}
	},
	{#State 461
		ACTIONS => {
			'TIME' => 471
		}
	},
	{#State 462
		ACTIONS => {
			")" => 472
		}
	},
	{#State 463
		ACTIONS => {
			'TIME' => 473
		}
	},
	{#State 464
		ACTIONS => {
			'TIME' => 474
		}
	},
	{#State 465
		ACTIONS => {
			")" => 475
		}
	},
	{#State 466
		ACTIONS => {
			'INTEGER_CONSTANT' => 476
		}
	},
	{#State 467
		ACTIONS => {
			'INTEGER_CONSTANT' => 477
		}
	},
	{#State 468
		DEFAULT => -83
	},
	{#State 469
		ACTIONS => {
			'INTEGER_CONSTANT' => 478
		}
	},
	{#State 470
		ACTIONS => {
			'ZONE' => 479
		}
	},
	{#State 471
		ACTIONS => {
			'ZONE' => 480
		}
	},
	{#State 472
		DEFAULT => -49
	},
	{#State 473
		ACTIONS => {
			'ZONE' => 481
		}
	},
	{#State 474
		ACTIONS => {
			'ZONE' => 482
		}
	},
	{#State 475
		DEFAULT => -47
	},
	{#State 476
		ACTIONS => {
			")" => 483
		}
	},
	{#State 477
		ACTIONS => {
			")" => 484
		}
	},
	{#State 478
		ACTIONS => {
			")" => 485
		}
	},
	{#State 479
		DEFAULT => -62
	},
	{#State 480
		DEFAULT => -63
	},
	{#State 481
		DEFAULT => -67
	},
	{#State 482
		DEFAULT => -68
	},
	{#State 483
		DEFAULT => -86
	},
	{#State 484
		DEFAULT => -84
	},
	{#State 485
		DEFAULT => -85
	}
],
    yyrules  =>
[
	[#Rule _SUPERSTART
		 '$start', 2, undef
#line 10904 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule top_1
		 'top', 1,
sub {
#line 22 "SQL.eyp"
 $_[1] }
#line 10911 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_2
		 'statements', 1,
sub {
#line 25 "SQL.eyp"
 [ $_[1] ] }
#line 10918 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_3
		 'statements', 3,
sub {
#line 26 "SQL.eyp"
 push @{ $_[1] }, $_[3]; $_[1] }
#line 10925 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_4
		 'statements', 2,
sub {
#line 27 "SQL.eyp"
 $_[1] }
#line 10932 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statement_5
		 'statement', 1,
sub {
#line 30 "SQL.eyp"
 $_[1] }
#line 10939 ../lib/Pg/SQL/Parser/SQL.pm
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
#line 10955 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_columns_7
		 'result_columns', 1,
sub {
#line 45 "SQL.eyp"
 [ $_[1] ] }
#line 10962 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_columns_8
		 'result_columns', 3,
sub {
#line 46 "SQL.eyp"
 push @{ $_[1] }, $_[3]; $_[1] }
#line 10969 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_column_9
		 'result_column', 1,
sub {
#line 49 "SQL.eyp"
 [ $_[1], undef ] }
#line 10976 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_column_10
		 'result_column', 3,
sub {
#line 50 "SQL.eyp"
 [ $_[1], $_[3] ] }
#line 10983 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_11
		 'expr', 1,
sub {
#line 53 "SQL.eyp"
 $_[1] }
#line 10990 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_12
		 'expr', 1,
sub {
#line 54 "SQL.eyp"
 $_[1] }
#line 10997 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_13
		 'expr', 1,
sub {
#line 55 "SQL.eyp"
 $_[1] }
#line 11004 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_14
		 'operator_expression', 5,
sub {
#line 58 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => [ $_[3], $_[5] ] ) }
#line 11011 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_15
		 'operator_expression', 2,
sub {
#line 59 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1] ) }
#line 11018 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_16
		 'operator_expression', 2,
sub {
#line 60 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[1], 'right' => $_[2] ) }
#line 11025 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_17
		 'operator_expression', 3,
sub {
#line 61 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11032 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_18
		 'operator_expression', 3,
sub {
#line 62 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11039 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_19
		 'operator_expression', 3,
sub {
#line 63 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11046 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_20
		 'operator_expression', 3,
sub {
#line 64 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11053 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_21
		 'operator_expression', 3,
sub {
#line 65 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11060 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_22
		 'operator_expression', 3,
sub {
#line 66 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11067 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_23
		 'operator_expression', 3,
sub {
#line 67 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11074 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_24
		 'operator_expression', 3,
sub {
#line 68 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11081 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_25
		 'operator_expression', 3,
sub {
#line 69 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11088 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_26
		 'operator_expression', 3,
sub {
#line 70 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11095 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_27
		 'operator_expression', 3,
sub {
#line 71 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11102 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule operator_expression_28
		 'operator_expression', 3,
sub {
#line 72 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 11109 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule cast_expression_29
		 'cast_expression', 3,
sub {
#line 75 "SQL.eyp"
 $factory->make( 'Cast', 'method' => '::', 'value' => $_[1], 'final_type' => $_[3] ) }
#line 11116 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule cast_expression_30
		 'cast_expression', 6,
sub {
#line 76 "SQL.eyp"
 $factory->make( 'Cast', 'method' => 'sql', 'value' => $_[3], 'final_type' => $_[5] ) }
#line 11123 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule cast_expression_31
		 'cast_expression', 2,
sub {
#line 77 "SQL.eyp"
 $factory->make( 'Cast', 'method' => 'function', 'value' => $_[2], 'final_type' => $_[1] ) }
#line 11130 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_simple_32
		 'expr_simple', 1,
sub {
#line 80 "SQL.eyp"
 $_[1] }
#line 11137 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_simple_33
		 'expr_simple', 3,
sub {
#line 81 "SQL.eyp"
 $_[2] }
#line 11144 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_34
		 'literal_value', 1,
sub {
#line 84 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'STRING_CONSTANT',     'value' => $_[1] ) }
#line 11151 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_35
		 'literal_value', 1,
sub {
#line 85 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'USTRING_CONSTANT',    'value' => $_[1] ) }
#line 11158 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_36
		 'literal_value', 1,
sub {
#line 86 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'ESTRING_CONSTANT',    'value' => $_[1] ) }
#line 11165 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_37
		 'literal_value', 1,
sub {
#line 87 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'BITSTRING_CONSTANT',  'value' => $_[1] ) }
#line 11172 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_38
		 'literal_value', 1,
sub {
#line 88 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'XBITSTRING_CONSTANT', 'value' => $_[1] ) }
#line 11179 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_39
		 'literal_value', 1,
sub {
#line 89 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'NUMERIC_CONSTANT',    'value' => $_[1] ) }
#line 11186 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_40
		 'literal_value', 1,
sub {
#line 90 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'INTEGER_CONSTANT',    'value' => $_[1] ) }
#line 11193 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_41
		 'identifier', 1,
sub {
#line 93 "SQL.eyp"
 $_[1] }
#line 11200 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_42
		 'identifier', 1,
sub {
#line 94 "SQL.eyp"
 $_[1] }
#line 11207 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_43
		 'identifier', 1,
sub {
#line 95 "SQL.eyp"
 $_[1] }
#line 11214 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_44
		 'identifier', 1,
sub {
#line 96 "SQL.eyp"
 $_[1] }
#line 11221 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule normal_type_45
		 'normal_type', 1,
sub {
#line 99 "SQL.eyp"
 $_[1] }
#line 11228 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule normal_type_46
		 'normal_type', 4,
sub {
#line 100 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1], 'limits' => [ $_[3] ] ) }
#line 11235 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule normal_type_47
		 'normal_type', 6,
sub {
#line 101 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1], 'limits' => [ $_[3], $_[5] ] ) }
#line 11242 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule normal_type_48
		 'normal_type', 4,
sub {
#line 102 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1], 'limits' => [ $_[3] ] ) }
#line 11249 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule normal_type_49
		 'normal_type', 6,
sub {
#line 103 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1], 'limits' => [ $_[3], $_[5] ] ) }
#line 11256 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule normal_type_50
		 'normal_type', 4,
sub {
#line 104 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1], 'limits' => [ $_[3] ] ) }
#line 11263 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule normal_type_51
		 'normal_type', 1,
sub {
#line 105 "SQL.eyp"
 $_[1] }
#line 11270 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule normal_type_52
		 'normal_type', 1,
sub {
#line 106 "SQL.eyp"
 $_[1] }
#line 11277 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule normal_type_53
		 'normal_type', 1,
sub {
#line 107 "SQL.eyp"
 $_[1] }
#line 11284 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_54
		 'simple_type', 1,
sub {
#line 110 "SQL.eyp"
 $_[1] }
#line 11291 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_55
		 'simple_type', 3,
sub {
#line 111 "SQL.eyp"
 $_[3]->schema( $_[1] ); $_[3] }
#line 11298 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule base_type_56
		 'base_type', 1,
sub {
#line 114 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1] ) }
#line 11305 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule base_type_57
		 'base_type', 1,
sub {
#line 115 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1] ) }
#line 11312 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule base_type_58
		 'base_type', 1,
sub {
#line 116 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1] ) }
#line 11319 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule timestamp_type_59
		 'timestamp_type', 4,
sub {
#line 119 "SQL.eyp"
 $factory->make( 'Type', 'name' => 'timestamp with time zone' ) }
#line 11326 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule timestamp_type_60
		 'timestamp_type', 4,
sub {
#line 120 "SQL.eyp"
 $factory->make( 'Type', 'name' => 'timestamp without time zone' ) }
#line 11333 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule timestamp_type_61
		 'timestamp_type', 4,
sub {
#line 121 "SQL.eyp"
 $factory->make( 'Type', 'limits' => [ $_[3] ], 'name' => 'timestamp' ) }
#line 11340 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule timestamp_type_62
		 'timestamp_type', 7,
sub {
#line 122 "SQL.eyp"
 $factory->make( 'Type', 'limits' => [ $_[3] ], 'name' => 'timestamp with time zone' ) }
#line 11347 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule timestamp_type_63
		 'timestamp_type', 7,
sub {
#line 123 "SQL.eyp"
 $factory->make( 'Type', 'limits' => [ $_[3] ], 'name' => 'timestamp without time zone' ) }
#line 11354 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule time_type_64
		 'time_type', 4,
sub {
#line 126 "SQL.eyp"
 $factory->make( 'Type', 'name' => 'time with time zone' ) }
#line 11361 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule time_type_65
		 'time_type', 4,
sub {
#line 127 "SQL.eyp"
 $factory->make( 'Type', 'name' => 'time without time zone' ) }
#line 11368 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule time_type_66
		 'time_type', 4,
sub {
#line 128 "SQL.eyp"
 $factory->make( 'Type', 'limits' => [ $_[3] ], 'name' => 'time' ) }
#line 11375 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule time_type_67
		 'time_type', 7,
sub {
#line 129 "SQL.eyp"
 $factory->make( 'Type', 'limits' => [ $_[3] ], 'name' => 'time with time zone' ) }
#line 11382 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule time_type_68
		 'time_type', 7,
sub {
#line 130 "SQL.eyp"
 $factory->make( 'Type', 'limits' => [ $_[3] ], 'name' => 'time without time zone' ) }
#line 11389 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_69
		 'interval_type', 4,
sub {
#line 133 "SQL.eyp"
 $factory->make( 'Type', 'name' => 'interval', 'limits' => [ $_[3] ] ) }
#line 11396 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_70
		 'interval_type', 2,
sub {
#line 134 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' year' ); $_[1] }
#line 11403 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_71
		 'interval_type', 2,
sub {
#line 135 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' month' ); $_[1] }
#line 11410 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_72
		 'interval_type', 2,
sub {
#line 136 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' day' ); $_[1] }
#line 11417 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_73
		 'interval_type', 2,
sub {
#line 137 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' hour' ); $_[1] }
#line 11424 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_74
		 'interval_type', 2,
sub {
#line 138 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' minute' ); $_[1] }
#line 11431 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_75
		 'interval_type', 2,
sub {
#line 139 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' second' ); $_[1] }
#line 11438 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_76
		 'interval_type', 4,
sub {
#line 140 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' year to month' ); $_[1] }
#line 11445 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_77
		 'interval_type', 4,
sub {
#line 141 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' day to hour' ); $_[1] }
#line 11452 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_78
		 'interval_type', 4,
sub {
#line 142 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' day to minute' ); $_[1] }
#line 11459 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_79
		 'interval_type', 4,
sub {
#line 143 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' day to second' ); $_[1] }
#line 11466 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_80
		 'interval_type', 4,
sub {
#line 144 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' hour to minute' ); $_[1] }
#line 11473 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_81
		 'interval_type', 4,
sub {
#line 145 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' hour to second' ); $_[1] }
#line 11480 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_82
		 'interval_type', 4,
sub {
#line 146 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' minute to second' ); $_[1] }
#line 11487 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_83
		 'interval_type', 5,
sub {
#line 147 "SQL.eyp"

                                                                        my $l = $_[1]->limits() // [];
                                                                        $l->[1] = $_[4];
                                                                        $_[1]->limits( $l );
                                                                        $_[1]->name( $_[1]->name() . ' second' );
                                                                        $_[1]
                                                                    }
#line 11500 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_84
		 'interval_type', 7,
sub {
#line 154 "SQL.eyp"

                                                                        my $l = $_[1]->limits() // [];
                                                                        $l->[1] = $_[6];
                                                                        $_[1]->limits( $l );
                                                                        $_[1]->name( $_[1]->name() . ' day to second' );
                                                                        $_[1]
                                                                    }
#line 11513 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_85
		 'interval_type', 7,
sub {
#line 161 "SQL.eyp"

                                                                        my $l = $_[1]->limits() // [];
                                                                        $l->[1] = $_[6];
                                                                        $_[1]->limits( $l );
                                                                        $_[1]->name( $_[1]->name() . ' hour to second' );
                                                                        $_[1]
                                                                    }
#line 11526 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_86
		 'interval_type', 7,
sub {
#line 168 "SQL.eyp"

                                                                        my $l = $_[1]->limits() // [];
                                                                        $l->[1] = $_[6];
                                                                        $_[1]->limits( $l );
                                                                        $_[1]->name( $_[1]->name() . ' minute to second' );
                                                                        $_[1]
                                                                    }
#line 11539 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule base_interval_type_87
		 'base_interval_type', 1,
sub {
#line 177 "SQL.eyp"
 $factory->make( 'Type', 'name' => 'interval' ) }
#line 11546 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule base_interval_type_88
		 'base_interval_type', 4,
sub {
#line 178 "SQL.eyp"
 $factory->make( 'Type', 'name' => 'interval', 'limits' => [ $_[3] ] ) }
#line 11553 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_89
		 'keywords_notreserved', 1, undef
#line 11557 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_90
		 'keywords_notreserved', 1, undef
#line 11561 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_91
		 'keywords_notreserved', 1, undef
#line 11565 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_92
		 'keywords_notreserved', 1, undef
#line 11569 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_93
		 'keywords_notreserved', 1, undef
#line 11573 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_94
		 'keywords_notreserved', 1, undef
#line 11577 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_95
		 'keywords_notreserved', 1, undef
#line 11581 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_96
		 'keywords_notreserved', 1, undef
#line 11585 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_97
		 'keywords_notreserved', 1, undef
#line 11589 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_98
		 'keywords_notreserved', 1, undef
#line 11593 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_99
		 'keywords_notreserved', 1, undef
#line 11597 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_100
		 'keywords_notreserved', 1, undef
#line 11601 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_101
		 'keywords_notreserved', 1, undef
#line 11605 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_102
		 'keywords_notreserved', 1, undef
#line 11609 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_103
		 'keywords_notreserved', 1, undef
#line 11613 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_104
		 'keywords_notreserved', 1, undef
#line 11617 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_105
		 'keywords_notreserved', 1, undef
#line 11621 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_106
		 'keywords_notreserved', 1, undef
#line 11625 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_107
		 'keywords_notreserved', 1, undef
#line 11629 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_108
		 'keywords_notreserved', 1, undef
#line 11633 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_109
		 'keywords_notreserved', 1, undef
#line 11637 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_110
		 'keywords_notreserved', 1, undef
#line 11641 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_111
		 'keywords_notreserved', 1, undef
#line 11645 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_112
		 'keywords_notreserved', 1, undef
#line 11649 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_113
		 'keywords_notreserved', 1, undef
#line 11653 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_114
		 'keywords_notreserved', 1, undef
#line 11657 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_115
		 'keywords_notreserved', 1, undef
#line 11661 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_116
		 'keywords_notreserved', 1, undef
#line 11665 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_117
		 'keywords_notreserved', 1, undef
#line 11669 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_118
		 'keywords_notreserved', 1, undef
#line 11673 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_119
		 'keywords_notreserved', 1, undef
#line 11677 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_120
		 'keywords_notreserved', 1, undef
#line 11681 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_121
		 'keywords_notreserved', 1, undef
#line 11685 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_122
		 'keywords_notreserved', 1, undef
#line 11689 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_123
		 'keywords_notreserved', 1, undef
#line 11693 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_124
		 'keywords_notreserved', 1, undef
#line 11697 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_125
		 'keywords_notreserved', 1, undef
#line 11701 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_126
		 'keywords_notreserved', 1, undef
#line 11705 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_127
		 'keywords_notreserved', 1, undef
#line 11709 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_128
		 'keywords_notreserved', 1, undef
#line 11713 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_129
		 'keywords_notreserved', 1, undef
#line 11717 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_130
		 'keywords_notreserved', 1, undef
#line 11721 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_131
		 'keywords_notreserved', 1, undef
#line 11725 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_132
		 'keywords_notreserved', 1, undef
#line 11729 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_133
		 'keywords_notreserved', 1, undef
#line 11733 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_134
		 'keywords_notreserved', 1, undef
#line 11737 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_135
		 'keywords_notreserved', 1, undef
#line 11741 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_136
		 'keywords_notreserved', 1, undef
#line 11745 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_137
		 'keywords_notreserved', 1, undef
#line 11749 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_138
		 'keywords_notreserved', 1, undef
#line 11753 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_139
		 'keywords_notreserved', 1, undef
#line 11757 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_140
		 'keywords_notreserved', 1, undef
#line 11761 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_141
		 'keywords_notreserved', 1, undef
#line 11765 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_142
		 'keywords_notreserved', 1, undef
#line 11769 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_143
		 'keywords_notreserved', 1, undef
#line 11773 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_144
		 'keywords_notreserved', 1, undef
#line 11777 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_145
		 'keywords_notreserved', 1, undef
#line 11781 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_146
		 'keywords_notreserved', 1, undef
#line 11785 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_147
		 'keywords_notreserved', 1, undef
#line 11789 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_148
		 'keywords_notreserved', 1, undef
#line 11793 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_149
		 'keywords_notreserved', 1, undef
#line 11797 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_150
		 'keywords_notreserved', 1, undef
#line 11801 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_151
		 'keywords_notreserved', 1, undef
#line 11805 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_152
		 'keywords_notreserved', 1, undef
#line 11809 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_153
		 'keywords_notreserved', 1, undef
#line 11813 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_154
		 'keywords_notreserved', 1, undef
#line 11817 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_155
		 'keywords_notreserved', 1, undef
#line 11821 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_156
		 'keywords_notreserved', 1, undef
#line 11825 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_157
		 'keywords_notreserved', 1, undef
#line 11829 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_158
		 'keywords_notreserved', 1, undef
#line 11833 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_159
		 'keywords_notreserved', 1, undef
#line 11837 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_160
		 'keywords_notreserved', 1, undef
#line 11841 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_161
		 'keywords_notreserved', 1, undef
#line 11845 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_162
		 'keywords_notreserved', 1, undef
#line 11849 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_163
		 'keywords_notreserved', 1, undef
#line 11853 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_164
		 'keywords_notreserved', 1, undef
#line 11857 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_165
		 'keywords_notreserved', 1, undef
#line 11861 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_166
		 'keywords_notreserved', 1, undef
#line 11865 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_167
		 'keywords_notreserved', 1, undef
#line 11869 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_168
		 'keywords_notreserved', 1, undef
#line 11873 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_169
		 'keywords_notreserved', 1, undef
#line 11877 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_170
		 'keywords_notreserved', 1, undef
#line 11881 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_171
		 'keywords_notreserved', 1, undef
#line 11885 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_172
		 'keywords_notreserved', 1, undef
#line 11889 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_173
		 'keywords_notreserved', 1, undef
#line 11893 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_174
		 'keywords_notreserved', 1, undef
#line 11897 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_175
		 'keywords_notreserved', 1, undef
#line 11901 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_176
		 'keywords_notreserved', 1, undef
#line 11905 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_177
		 'keywords_notreserved', 1, undef
#line 11909 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_178
		 'keywords_notreserved', 1, undef
#line 11913 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_179
		 'keywords_notreserved', 1, undef
#line 11917 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_180
		 'keywords_notreserved', 1, undef
#line 11921 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_181
		 'keywords_notreserved', 1, undef
#line 11925 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_182
		 'keywords_notreserved', 1, undef
#line 11929 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_183
		 'keywords_notreserved', 1, undef
#line 11933 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_184
		 'keywords_notreserved', 1, undef
#line 11937 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_185
		 'keywords_notreserved', 1, undef
#line 11941 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_186
		 'keywords_notreserved', 1, undef
#line 11945 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_187
		 'keywords_notreserved', 1, undef
#line 11949 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_188
		 'keywords_notreserved', 1, undef
#line 11953 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_189
		 'keywords_notreserved', 1, undef
#line 11957 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_190
		 'keywords_notreserved', 1, undef
#line 11961 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_191
		 'keywords_notreserved', 1, undef
#line 11965 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_192
		 'keywords_notreserved', 1, undef
#line 11969 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_193
		 'keywords_notreserved', 1, undef
#line 11973 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_194
		 'keywords_notreserved', 1, undef
#line 11977 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_195
		 'keywords_notreserved', 1, undef
#line 11981 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_196
		 'keywords_notreserved', 1, undef
#line 11985 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_197
		 'keywords_notreserved', 1, undef
#line 11989 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_198
		 'keywords_notreserved', 1, undef
#line 11993 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_199
		 'keywords_notreserved', 1, undef
#line 11997 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_200
		 'keywords_notreserved', 1, undef
#line 12001 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_201
		 'keywords_notreserved', 1, undef
#line 12005 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_202
		 'keywords_notreserved', 1, undef
#line 12009 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_203
		 'keywords_notreserved', 1, undef
#line 12013 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_204
		 'keywords_notreserved', 1, undef
#line 12017 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_205
		 'keywords_notreserved', 1, undef
#line 12021 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_206
		 'keywords_notreserved', 1, undef
#line 12025 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_207
		 'keywords_notreserved', 1, undef
#line 12029 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_208
		 'keywords_notreserved', 1, undef
#line 12033 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_209
		 'keywords_notreserved', 1, undef
#line 12037 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_210
		 'keywords_notreserved', 1, undef
#line 12041 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_211
		 'keywords_notreserved', 1, undef
#line 12045 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_212
		 'keywords_notreserved', 1, undef
#line 12049 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_213
		 'keywords_notreserved', 1, undef
#line 12053 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_214
		 'keywords_notreserved', 1, undef
#line 12057 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_215
		 'keywords_notreserved', 1, undef
#line 12061 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_216
		 'keywords_notreserved', 1, undef
#line 12065 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_217
		 'keywords_notreserved', 1, undef
#line 12069 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_218
		 'keywords_notreserved', 1, undef
#line 12073 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_219
		 'keywords_notreserved', 1, undef
#line 12077 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_220
		 'keywords_notreserved', 1, undef
#line 12081 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_221
		 'keywords_notreserved', 1, undef
#line 12085 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_222
		 'keywords_notreserved', 1, undef
#line 12089 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_223
		 'keywords_notreserved', 1, undef
#line 12093 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_224
		 'keywords_notreserved', 1, undef
#line 12097 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_225
		 'keywords_notreserved', 1, undef
#line 12101 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_226
		 'keywords_notreserved', 1, undef
#line 12105 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_227
		 'keywords_notreserved', 1, undef
#line 12109 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_228
		 'keywords_notreserved', 1, undef
#line 12113 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_229
		 'keywords_notreserved', 1, undef
#line 12117 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_230
		 'keywords_notreserved', 1, undef
#line 12121 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_231
		 'keywords_notreserved', 1, undef
#line 12125 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_232
		 'keywords_notreserved', 1, undef
#line 12129 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_233
		 'keywords_notreserved', 1, undef
#line 12133 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_234
		 'keywords_notreserved', 1, undef
#line 12137 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_235
		 'keywords_notreserved', 1, undef
#line 12141 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_236
		 'keywords_notreserved', 1, undef
#line 12145 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_237
		 'keywords_notreserved', 1, undef
#line 12149 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_238
		 'keywords_notreserved', 1, undef
#line 12153 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_239
		 'keywords_notreserved', 1, undef
#line 12157 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_240
		 'keywords_notreserved', 1, undef
#line 12161 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_241
		 'keywords_notreserved', 1, undef
#line 12165 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_242
		 'keywords_notreserved', 1, undef
#line 12169 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_243
		 'keywords_notreserved', 1, undef
#line 12173 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_244
		 'keywords_notreserved', 1, undef
#line 12177 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_245
		 'keywords_notreserved', 1, undef
#line 12181 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_246
		 'keywords_notreserved', 1, undef
#line 12185 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_247
		 'keywords_notreserved', 1, undef
#line 12189 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_248
		 'keywords_notreserved', 1, undef
#line 12193 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_249
		 'keywords_notreserved', 1, undef
#line 12197 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_250
		 'keywords_notreserved', 1, undef
#line 12201 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_251
		 'keywords_notreserved', 1, undef
#line 12205 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_252
		 'keywords_notreserved', 1, undef
#line 12209 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_253
		 'keywords_notreserved', 1, undef
#line 12213 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_254
		 'keywords_notreserved', 1, undef
#line 12217 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_255
		 'keywords_notreserved', 1, undef
#line 12221 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_256
		 'keywords_notreserved', 1, undef
#line 12225 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_257
		 'keywords_notreserved', 1, undef
#line 12229 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_258
		 'keywords_notreserved', 1, undef
#line 12233 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_259
		 'keywords_notreserved', 1, undef
#line 12237 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_260
		 'keywords_notreserved', 1, undef
#line 12241 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_261
		 'keywords_notreserved', 1, undef
#line 12245 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_262
		 'keywords_notreserved', 1, undef
#line 12249 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_263
		 'keywords_notreserved', 1, undef
#line 12253 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_264
		 'keywords_notreserved', 1, undef
#line 12257 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_265
		 'keywords_notreserved', 1, undef
#line 12261 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_266
		 'keywords_notreserved', 1, undef
#line 12265 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_267
		 'keywords_notreserved', 1, undef
#line 12269 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_268
		 'keywords_notreserved', 1, undef
#line 12273 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_269
		 'keywords_notreserved', 1, undef
#line 12277 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_270
		 'keywords_notreserved', 1, undef
#line 12281 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_271
		 'keywords_notreserved', 1, undef
#line 12285 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_272
		 'keywords_notreserved', 1, undef
#line 12289 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_273
		 'keywords_notreserved', 1, undef
#line 12293 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_274
		 'keywords_notreserved', 1, undef
#line 12297 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_275
		 'keywords_notreserved', 1, undef
#line 12301 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_276
		 'keywords_notreserved', 1, undef
#line 12305 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_277
		 'keywords_notreserved', 1, undef
#line 12309 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_278
		 'keywords_notreserved', 1, undef
#line 12313 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_279
		 'keywords_notreserved', 1, undef
#line 12317 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_280
		 'keywords_notreserved', 1, undef
#line 12321 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_281
		 'keywords_notreserved', 1, undef
#line 12325 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_282
		 'keywords_notreserved', 1, undef
#line 12329 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_283
		 'keywords_notreserved', 1, undef
#line 12333 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_284
		 'keywords_notreserved', 1, undef
#line 12337 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_285
		 'keywords_notreserved', 1, undef
#line 12341 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_286
		 'keywords_notreserved', 1, undef
#line 12345 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_287
		 'keywords_notreserved', 1, undef
#line 12349 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_288
		 'keywords_notreserved', 1, undef
#line 12353 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_289
		 'keywords_notreserved', 1, undef
#line 12357 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_290
		 'keywords_notreserved', 1, undef
#line 12361 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_291
		 'keywords_notreserved', 1, undef
#line 12365 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_292
		 'keywords_notreserved', 1, undef
#line 12369 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_293
		 'keywords_notreserved', 1, undef
#line 12373 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_294
		 'keywords_notreserved', 1, undef
#line 12377 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_295
		 'keywords_notreserved', 1, undef
#line 12381 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_296
		 'keywords_notreserved', 1, undef
#line 12385 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_297
		 'keywords_notreserved', 1, undef
#line 12389 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_298
		 'keywords_notreserved', 1, undef
#line 12393 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_299
		 'keywords_notreserved', 1, undef
#line 12397 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_300
		 'keywords_notreserved', 1, undef
#line 12401 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_301
		 'keywords_notreserved', 1, undef
#line 12405 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_302
		 'keywords_notreserved', 1, undef
#line 12409 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_303
		 'keywords_notreserved', 1, undef
#line 12413 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_304
		 'keywords_notreserved', 1, undef
#line 12417 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_305
		 'keywords_notreserved', 1, undef
#line 12421 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_306
		 'keywords_notreserved', 1, undef
#line 12425 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_307
		 'keywords_notreserved', 1, undef
#line 12429 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_308
		 'keywords_notreserved', 1, undef
#line 12433 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_309
		 'keywords_notreserved', 1, undef
#line 12437 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_310
		 'keywords_notreserved', 1, undef
#line 12441 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_311
		 'keywords_notreserved', 1, undef
#line 12445 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_312
		 'keywords_notreserved', 1, undef
#line 12449 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_313
		 'keywords_notreserved', 1, undef
#line 12453 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_314
		 'keywords_notreserved', 1, undef
#line 12457 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_315
		 'keywords_notreserved', 1, undef
#line 12461 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_316
		 'keywords_notreserved', 1, undef
#line 12465 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_317
		 'keywords_notreserved', 1, undef
#line 12469 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_318
		 'keywords_notreserved', 1, undef
#line 12473 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_319
		 'keywords_notreserved', 1, undef
#line 12477 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_320
		 'keywords_notreserved', 1, undef
#line 12481 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_321
		 'keywords_notreserved', 1, undef
#line 12485 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_322
		 'keywords_notreserved', 1, undef
#line 12489 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_323
		 'keywords_notreserved', 1, undef
#line 12493 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_324
		 'keywords_notreserved', 1, undef
#line 12497 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_325
		 'keywords_notreserved', 1, undef
#line 12501 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_326
		 'keywords_notreserved', 1, undef
#line 12505 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_327
		 'keywords_notreserved', 1, undef
#line 12509 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_328
		 'keywords_notreserved', 1, undef
#line 12513 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_329
		 'keywords_notreserved', 1, undef
#line 12517 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_330
		 'keywords_notreserved', 1, undef
#line 12521 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_331
		 'keywords_notreserved', 1, undef
#line 12525 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_332
		 'keywords_notreserved', 1, undef
#line 12529 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_333
		 'keywords_notreserved', 1, undef
#line 12533 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_334
		 'keywords_notreserved', 1, undef
#line 12537 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_335
		 'keywords_notreserved', 1, undef
#line 12541 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_336
		 'keywords_notreserved', 1, undef
#line 12545 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_337
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12549 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_338
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12553 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_339
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12557 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_340
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12561 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_341
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12565 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_342
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12569 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_343
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12573 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_344
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12577 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_345
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12581 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_346
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12585 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_347
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12589 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_348
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12593 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_349
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12597 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_350
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12601 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_351
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12605 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_352
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12609 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_353
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12613 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_354
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12617 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_355
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12621 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_356
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12625 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_357
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12629 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_358
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 12633 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_359
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12637 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_360
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12641 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_361
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12645 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_362
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12649 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_363
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12653 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_364
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12657 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_365
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12661 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_366
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12665 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_367
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12669 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_368
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12673 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_369
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12677 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_370
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12681 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_371
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12685 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_372
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12689 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_373
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12693 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_374
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12697 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_375
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12701 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_376
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12705 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_377
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12709 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_378
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12713 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_379
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12717 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_380
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12721 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_381
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12725 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_382
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12729 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_383
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12733 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_384
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12737 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_385
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12741 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_386
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12745 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_387
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12749 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_388
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12753 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_389
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12757 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_390
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12761 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_391
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12765 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_392
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12769 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_393
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12773 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_394
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12777 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_395
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12781 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_396
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12785 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_397
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12789 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_398
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12793 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_399
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12797 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_400
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12801 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_401
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12805 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_402
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12809 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_403
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12813 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_404
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12817 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_405
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 12821 ../lib/Pg/SQL/Parser/SQL.pm
	]
],
#line 12824 ../lib/Pg/SQL/Parser/SQL.pm
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
         'timestamp_type_59', 
         'timestamp_type_60', 
         'timestamp_type_61', 
         'timestamp_type_62', 
         'timestamp_type_63', 
         'time_type_64', 
         'time_type_65', 
         'time_type_66', 
         'time_type_67', 
         'time_type_68', 
         'interval_type_69', 
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
         'base_interval_type_87', 
         'base_interval_type_88', 
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
         'keywords_reserved_ok_for_functions_or_types_337', 
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
         'keywords_notreserved_not_ok_for_functions_or_types_359', 
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
         'keywords_notreserved_not_ok_for_functions_or_types_405', );
  $self;
}

#line 504 "SQL.eyp"


# vim: set ft=lex:


=for None

=cut


#line 13258 ../lib/Pg/SQL/Parser/SQL.pm



1;
