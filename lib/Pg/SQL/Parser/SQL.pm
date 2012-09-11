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
  [ 'expr_12' => 'expr', [ 'expr', 'BETWEEN', 'expr', 'AND', 'expr' ], 0 ],
  [ 'expr_13' => 'expr', [ 'expr', 'OPERATOR_NAME' ], 0 ],
  [ 'expr_14' => 'expr', [ 'OPERATOR_NAME', 'expr' ], 0 ],
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
  [ 'expr_26' => 'expr', [ 'expr', 'OPERATOR_NAME', 'expr' ], 0 ],
  [ 'expr_27' => 'expr', [ 'expr', '::', 'normal_type' ], 0 ],
  [ 'expr_28' => 'expr', [ 'CAST', '(', 'expr', 'AS', 'normal_type', ')' ], 0 ],
  [ 'expr_simple_29' => 'expr_simple', [ 'literal_value' ], 0 ],
  [ 'expr_simple_30' => 'expr_simple', [ '(', 'expr', ')' ], 0 ],
  [ 'literal_value_31' => 'literal_value', [ 'STRING_CONSTANT' ], 0 ],
  [ 'literal_value_32' => 'literal_value', [ 'USTRING_CONSTANT' ], 0 ],
  [ 'literal_value_33' => 'literal_value', [ 'ESTRING_CONSTANT' ], 0 ],
  [ 'literal_value_34' => 'literal_value', [ 'BITSTRING_CONSTANT' ], 0 ],
  [ 'literal_value_35' => 'literal_value', [ 'XBITSTRING_CONSTANT' ], 0 ],
  [ 'literal_value_36' => 'literal_value', [ 'NUMERIC_CONSTANT' ], 0 ],
  [ 'literal_value_37' => 'literal_value', [ 'INTEGER_CONSTANT' ], 0 ],
  [ 'identifier_38' => 'identifier', [ 'QUOTED_IDENTIFIER' ], 0 ],
  [ 'identifier_39' => 'identifier', [ 'UQUOTED_IDENTIFIER' ], 0 ],
  [ 'identifier_40' => 'identifier', [ 'IDENTIFIER' ], 0 ],
  [ 'identifier_41' => 'identifier', [ 'keywords_notreserved' ], 0 ],
  [ 'normal_type_42' => 'normal_type', [ 'simple_type' ], 0 ],
  [ 'normal_type_43' => 'normal_type', [ 'identifier', '.', 'simple_type' ], 0 ],
  [ 'simple_type_44' => 'simple_type', [ 'identifier' ], 0 ],
  [ 'simple_type_45' => 'simple_type', [ 'keywords_reserved_ok_for_functions_or_types' ], 0 ],
  [ 'simple_type_46' => 'simple_type', [ 'keywords_notreserved_not_ok_for_functions_or_types' ], 0 ],
  [ 'simple_type_47' => 'simple_type', [ 'NUMERIC', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'simple_type_48' => 'simple_type', [ 'NUMERIC', '(', 'INTEGER_CONSTANT', ',', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'simple_type_49' => 'simple_type', [ 'DECIMAL', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'simple_type_50' => 'simple_type', [ 'DECIMAL', '(', 'INTEGER_CONSTANT', ',', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'simple_type_51' => 'simple_type', [ 'VARCHAR', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'simple_type_52' => 'simple_type', [ 'timestamp_type' ], 0 ],
  [ 'simple_type_53' => 'simple_type', [ 'time_type' ], 0 ],
  [ 'simple_type_54' => 'simple_type', [ 'interval_type' ], 0 ],
  [ 'timestamp_type_55' => 'timestamp_type', [ 'TIMESTAMP', 'WITH', 'TIME', 'ZONE' ], 0 ],
  [ 'timestamp_type_56' => 'timestamp_type', [ 'TIMESTAMP', 'WITHOUT', 'TIME', 'ZONE' ], 0 ],
  [ 'timestamp_type_57' => 'timestamp_type', [ 'TIMESTAMP', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'timestamp_type_58' => 'timestamp_type', [ 'TIMESTAMP', '(', 'INTEGER_CONSTANT', ')', 'WITH', 'TIME', 'ZONE' ], 0 ],
  [ 'timestamp_type_59' => 'timestamp_type', [ 'TIMESTAMP', '(', 'INTEGER_CONSTANT', ')', 'WITHOUT', 'TIME', 'ZONE' ], 0 ],
  [ 'time_type_60' => 'time_type', [ 'TIME', 'WITH', 'TIME', 'ZONE' ], 0 ],
  [ 'time_type_61' => 'time_type', [ 'TIME', 'WITHOUT', 'TIME', 'ZONE' ], 0 ],
  [ 'time_type_62' => 'time_type', [ 'TIME', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'time_type_63' => 'time_type', [ 'TIME', '(', 'INTEGER_CONSTANT', ')', 'WITH', 'TIME', 'ZONE' ], 0 ],
  [ 'time_type_64' => 'time_type', [ 'TIME', '(', 'INTEGER_CONSTANT', ')', 'WITHOUT', 'TIME', 'ZONE' ], 0 ],
  [ 'interval_type_65' => 'interval_type', [ 'INTERVAL', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'interval_type_66' => 'interval_type', [ 'base_interval_type', 'YEAR' ], 0 ],
  [ 'interval_type_67' => 'interval_type', [ 'base_interval_type', 'MONTH' ], 0 ],
  [ 'interval_type_68' => 'interval_type', [ 'base_interval_type', 'DAY' ], 0 ],
  [ 'interval_type_69' => 'interval_type', [ 'base_interval_type', 'HOUR' ], 0 ],
  [ 'interval_type_70' => 'interval_type', [ 'base_interval_type', 'MINUTE' ], 0 ],
  [ 'interval_type_71' => 'interval_type', [ 'base_interval_type', 'SECOND' ], 0 ],
  [ 'interval_type_72' => 'interval_type', [ 'base_interval_type', 'YEAR', 'TO', 'MONTH' ], 0 ],
  [ 'interval_type_73' => 'interval_type', [ 'base_interval_type', 'DAY', 'TO', 'HOUR' ], 0 ],
  [ 'interval_type_74' => 'interval_type', [ 'base_interval_type', 'DAY', 'TO', 'MINUTE' ], 0 ],
  [ 'interval_type_75' => 'interval_type', [ 'base_interval_type', 'DAY', 'TO', 'SECOND' ], 0 ],
  [ 'interval_type_76' => 'interval_type', [ 'base_interval_type', 'HOUR', 'TO', 'MINUTE' ], 0 ],
  [ 'interval_type_77' => 'interval_type', [ 'base_interval_type', 'HOUR', 'TO', 'SECOND' ], 0 ],
  [ 'interval_type_78' => 'interval_type', [ 'base_interval_type', 'MINUTE', 'TO', 'SECOND' ], 0 ],
  [ 'interval_type_79' => 'interval_type', [ 'base_interval_type', 'SECOND', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'interval_type_80' => 'interval_type', [ 'base_interval_type', 'DAY', 'TO', 'SECOND', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'interval_type_81' => 'interval_type', [ 'base_interval_type', 'HOUR', 'TO', 'SECOND', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'interval_type_82' => 'interval_type', [ 'base_interval_type', 'MINUTE', 'TO', 'SECOND', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'base_interval_type_83' => 'base_interval_type', [ 'INTERVAL' ], 0 ],
  [ 'base_interval_type_84' => 'base_interval_type', [ 'INTERVAL', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'keywords_notreserved_85' => 'keywords_notreserved', [ 'ABORT' ], 0 ],
  [ 'keywords_notreserved_86' => 'keywords_notreserved', [ 'ABSOLUTE' ], 0 ],
  [ 'keywords_notreserved_87' => 'keywords_notreserved', [ 'ACCESS' ], 0 ],
  [ 'keywords_notreserved_88' => 'keywords_notreserved', [ 'ACTION' ], 0 ],
  [ 'keywords_notreserved_89' => 'keywords_notreserved', [ 'ADD' ], 0 ],
  [ 'keywords_notreserved_90' => 'keywords_notreserved', [ 'ADMIN' ], 0 ],
  [ 'keywords_notreserved_91' => 'keywords_notreserved', [ 'AFTER' ], 0 ],
  [ 'keywords_notreserved_92' => 'keywords_notreserved', [ 'AGGREGATE' ], 0 ],
  [ 'keywords_notreserved_93' => 'keywords_notreserved', [ 'ALSO' ], 0 ],
  [ 'keywords_notreserved_94' => 'keywords_notreserved', [ 'ALTER' ], 0 ],
  [ 'keywords_notreserved_95' => 'keywords_notreserved', [ 'ALWAYS' ], 0 ],
  [ 'keywords_notreserved_96' => 'keywords_notreserved', [ 'ASSERTION' ], 0 ],
  [ 'keywords_notreserved_97' => 'keywords_notreserved', [ 'ASSIGNMENT' ], 0 ],
  [ 'keywords_notreserved_98' => 'keywords_notreserved', [ 'AT' ], 0 ],
  [ 'keywords_notreserved_99' => 'keywords_notreserved', [ 'ATTRIBUTE' ], 0 ],
  [ 'keywords_notreserved_100' => 'keywords_notreserved', [ 'BACKWARD' ], 0 ],
  [ 'keywords_notreserved_101' => 'keywords_notreserved', [ 'BEFORE' ], 0 ],
  [ 'keywords_notreserved_102' => 'keywords_notreserved', [ 'BEGIN' ], 0 ],
  [ 'keywords_notreserved_103' => 'keywords_notreserved', [ 'BY' ], 0 ],
  [ 'keywords_notreserved_104' => 'keywords_notreserved', [ 'CACHE' ], 0 ],
  [ 'keywords_notreserved_105' => 'keywords_notreserved', [ 'CALLED' ], 0 ],
  [ 'keywords_notreserved_106' => 'keywords_notreserved', [ 'CASCADE' ], 0 ],
  [ 'keywords_notreserved_107' => 'keywords_notreserved', [ 'CASCADED' ], 0 ],
  [ 'keywords_notreserved_108' => 'keywords_notreserved', [ 'CATALOG' ], 0 ],
  [ 'keywords_notreserved_109' => 'keywords_notreserved', [ 'CHAIN' ], 0 ],
  [ 'keywords_notreserved_110' => 'keywords_notreserved', [ 'CHARACTERISTICS' ], 0 ],
  [ 'keywords_notreserved_111' => 'keywords_notreserved', [ 'CHECKPOINT' ], 0 ],
  [ 'keywords_notreserved_112' => 'keywords_notreserved', [ 'CLASS' ], 0 ],
  [ 'keywords_notreserved_113' => 'keywords_notreserved', [ 'CLOSE' ], 0 ],
  [ 'keywords_notreserved_114' => 'keywords_notreserved', [ 'CLUSTER' ], 0 ],
  [ 'keywords_notreserved_115' => 'keywords_notreserved', [ 'COLLATION' ], 0 ],
  [ 'keywords_notreserved_116' => 'keywords_notreserved', [ 'COMMENT' ], 0 ],
  [ 'keywords_notreserved_117' => 'keywords_notreserved', [ 'COMMENTS' ], 0 ],
  [ 'keywords_notreserved_118' => 'keywords_notreserved', [ 'COMMIT' ], 0 ],
  [ 'keywords_notreserved_119' => 'keywords_notreserved', [ 'COMMITTED' ], 0 ],
  [ 'keywords_notreserved_120' => 'keywords_notreserved', [ 'CONFIGURATION' ], 0 ],
  [ 'keywords_notreserved_121' => 'keywords_notreserved', [ 'CONNECTION' ], 0 ],
  [ 'keywords_notreserved_122' => 'keywords_notreserved', [ 'CONSTRAINTS' ], 0 ],
  [ 'keywords_notreserved_123' => 'keywords_notreserved', [ 'CONTENT' ], 0 ],
  [ 'keywords_notreserved_124' => 'keywords_notreserved', [ 'CONTINUE' ], 0 ],
  [ 'keywords_notreserved_125' => 'keywords_notreserved', [ 'CONVERSION' ], 0 ],
  [ 'keywords_notreserved_126' => 'keywords_notreserved', [ 'COPY' ], 0 ],
  [ 'keywords_notreserved_127' => 'keywords_notreserved', [ 'COST' ], 0 ],
  [ 'keywords_notreserved_128' => 'keywords_notreserved', [ 'CSV' ], 0 ],
  [ 'keywords_notreserved_129' => 'keywords_notreserved', [ 'CURRENT' ], 0 ],
  [ 'keywords_notreserved_130' => 'keywords_notreserved', [ 'CURSOR' ], 0 ],
  [ 'keywords_notreserved_131' => 'keywords_notreserved', [ 'CYCLE' ], 0 ],
  [ 'keywords_notreserved_132' => 'keywords_notreserved', [ 'DATA' ], 0 ],
  [ 'keywords_notreserved_133' => 'keywords_notreserved', [ 'DATABASE' ], 0 ],
  [ 'keywords_notreserved_134' => 'keywords_notreserved', [ 'DAY' ], 0 ],
  [ 'keywords_notreserved_135' => 'keywords_notreserved', [ 'DEALLOCATE' ], 0 ],
  [ 'keywords_notreserved_136' => 'keywords_notreserved', [ 'DECLARE' ], 0 ],
  [ 'keywords_notreserved_137' => 'keywords_notreserved', [ 'DEFAULTS' ], 0 ],
  [ 'keywords_notreserved_138' => 'keywords_notreserved', [ 'DEFERRED' ], 0 ],
  [ 'keywords_notreserved_139' => 'keywords_notreserved', [ 'DEFINER' ], 0 ],
  [ 'keywords_notreserved_140' => 'keywords_notreserved', [ 'DELETE' ], 0 ],
  [ 'keywords_notreserved_141' => 'keywords_notreserved', [ 'DELIMITER' ], 0 ],
  [ 'keywords_notreserved_142' => 'keywords_notreserved', [ 'DELIMITERS' ], 0 ],
  [ 'keywords_notreserved_143' => 'keywords_notreserved', [ 'DICTIONARY' ], 0 ],
  [ 'keywords_notreserved_144' => 'keywords_notreserved', [ 'DISABLE' ], 0 ],
  [ 'keywords_notreserved_145' => 'keywords_notreserved', [ 'DISCARD' ], 0 ],
  [ 'keywords_notreserved_146' => 'keywords_notreserved', [ 'DOCUMENT' ], 0 ],
  [ 'keywords_notreserved_147' => 'keywords_notreserved', [ 'DOMAIN' ], 0 ],
  [ 'keywords_notreserved_148' => 'keywords_notreserved', [ 'DOUBLE' ], 0 ],
  [ 'keywords_notreserved_149' => 'keywords_notreserved', [ 'DROP' ], 0 ],
  [ 'keywords_notreserved_150' => 'keywords_notreserved', [ 'EACH' ], 0 ],
  [ 'keywords_notreserved_151' => 'keywords_notreserved', [ 'ENABLE' ], 0 ],
  [ 'keywords_notreserved_152' => 'keywords_notreserved', [ 'ENCODING' ], 0 ],
  [ 'keywords_notreserved_153' => 'keywords_notreserved', [ 'ENCRYPTED' ], 0 ],
  [ 'keywords_notreserved_154' => 'keywords_notreserved', [ 'ENUM' ], 0 ],
  [ 'keywords_notreserved_155' => 'keywords_notreserved', [ 'ESCAPE' ], 0 ],
  [ 'keywords_notreserved_156' => 'keywords_notreserved', [ 'EXCLUDE' ], 0 ],
  [ 'keywords_notreserved_157' => 'keywords_notreserved', [ 'EXCLUDING' ], 0 ],
  [ 'keywords_notreserved_158' => 'keywords_notreserved', [ 'EXCLUSIVE' ], 0 ],
  [ 'keywords_notreserved_159' => 'keywords_notreserved', [ 'EXECUTE' ], 0 ],
  [ 'keywords_notreserved_160' => 'keywords_notreserved', [ 'EXPLAIN' ], 0 ],
  [ 'keywords_notreserved_161' => 'keywords_notreserved', [ 'EXTENSION' ], 0 ],
  [ 'keywords_notreserved_162' => 'keywords_notreserved', [ 'EXTERNAL' ], 0 ],
  [ 'keywords_notreserved_163' => 'keywords_notreserved', [ 'FAMILY' ], 0 ],
  [ 'keywords_notreserved_164' => 'keywords_notreserved', [ 'FIRST' ], 0 ],
  [ 'keywords_notreserved_165' => 'keywords_notreserved', [ 'FOLLOWING' ], 0 ],
  [ 'keywords_notreserved_166' => 'keywords_notreserved', [ 'FORCE' ], 0 ],
  [ 'keywords_notreserved_167' => 'keywords_notreserved', [ 'FORWARD' ], 0 ],
  [ 'keywords_notreserved_168' => 'keywords_notreserved', [ 'FUNCTION' ], 0 ],
  [ 'keywords_notreserved_169' => 'keywords_notreserved', [ 'FUNCTIONS' ], 0 ],
  [ 'keywords_notreserved_170' => 'keywords_notreserved', [ 'GLOBAL' ], 0 ],
  [ 'keywords_notreserved_171' => 'keywords_notreserved', [ 'GRANTED' ], 0 ],
  [ 'keywords_notreserved_172' => 'keywords_notreserved', [ 'HANDLER' ], 0 ],
  [ 'keywords_notreserved_173' => 'keywords_notreserved', [ 'HEADER' ], 0 ],
  [ 'keywords_notreserved_174' => 'keywords_notreserved', [ 'HOLD' ], 0 ],
  [ 'keywords_notreserved_175' => 'keywords_notreserved', [ 'HOUR' ], 0 ],
  [ 'keywords_notreserved_176' => 'keywords_notreserved', [ 'IDENTITY' ], 0 ],
  [ 'keywords_notreserved_177' => 'keywords_notreserved', [ 'IF' ], 0 ],
  [ 'keywords_notreserved_178' => 'keywords_notreserved', [ 'IMMEDIATE' ], 0 ],
  [ 'keywords_notreserved_179' => 'keywords_notreserved', [ 'IMMUTABLE' ], 0 ],
  [ 'keywords_notreserved_180' => 'keywords_notreserved', [ 'IMPLICIT' ], 0 ],
  [ 'keywords_notreserved_181' => 'keywords_notreserved', [ 'INCLUDING' ], 0 ],
  [ 'keywords_notreserved_182' => 'keywords_notreserved', [ 'INCREMENT' ], 0 ],
  [ 'keywords_notreserved_183' => 'keywords_notreserved', [ 'INDEX' ], 0 ],
  [ 'keywords_notreserved_184' => 'keywords_notreserved', [ 'INDEXES' ], 0 ],
  [ 'keywords_notreserved_185' => 'keywords_notreserved', [ 'INHERIT' ], 0 ],
  [ 'keywords_notreserved_186' => 'keywords_notreserved', [ 'INHERITS' ], 0 ],
  [ 'keywords_notreserved_187' => 'keywords_notreserved', [ 'INLINE' ], 0 ],
  [ 'keywords_notreserved_188' => 'keywords_notreserved', [ 'INPUT' ], 0 ],
  [ 'keywords_notreserved_189' => 'keywords_notreserved', [ 'INSENSITIVE' ], 0 ],
  [ 'keywords_notreserved_190' => 'keywords_notreserved', [ 'INSERT' ], 0 ],
  [ 'keywords_notreserved_191' => 'keywords_notreserved', [ 'INSTEAD' ], 0 ],
  [ 'keywords_notreserved_192' => 'keywords_notreserved', [ 'INVOKER' ], 0 ],
  [ 'keywords_notreserved_193' => 'keywords_notreserved', [ 'ISOLATION' ], 0 ],
  [ 'keywords_notreserved_194' => 'keywords_notreserved', [ 'KEY' ], 0 ],
  [ 'keywords_notreserved_195' => 'keywords_notreserved', [ 'LABEL' ], 0 ],
  [ 'keywords_notreserved_196' => 'keywords_notreserved', [ 'LANGUAGE' ], 0 ],
  [ 'keywords_notreserved_197' => 'keywords_notreserved', [ 'LARGE' ], 0 ],
  [ 'keywords_notreserved_198' => 'keywords_notreserved', [ 'LAST' ], 0 ],
  [ 'keywords_notreserved_199' => 'keywords_notreserved', [ 'LC_COLLATE' ], 0 ],
  [ 'keywords_notreserved_200' => 'keywords_notreserved', [ 'LC_CTYPE' ], 0 ],
  [ 'keywords_notreserved_201' => 'keywords_notreserved', [ 'LEVEL' ], 0 ],
  [ 'keywords_notreserved_202' => 'keywords_notreserved', [ 'LISTEN' ], 0 ],
  [ 'keywords_notreserved_203' => 'keywords_notreserved', [ 'LOAD' ], 0 ],
  [ 'keywords_notreserved_204' => 'keywords_notreserved', [ 'LOCAL' ], 0 ],
  [ 'keywords_notreserved_205' => 'keywords_notreserved', [ 'LOCATION' ], 0 ],
  [ 'keywords_notreserved_206' => 'keywords_notreserved', [ 'LOCK' ], 0 ],
  [ 'keywords_notreserved_207' => 'keywords_notreserved', [ 'MAPPING' ], 0 ],
  [ 'keywords_notreserved_208' => 'keywords_notreserved', [ 'MATCH' ], 0 ],
  [ 'keywords_notreserved_209' => 'keywords_notreserved', [ 'MAXVALUE' ], 0 ],
  [ 'keywords_notreserved_210' => 'keywords_notreserved', [ 'MINUTE' ], 0 ],
  [ 'keywords_notreserved_211' => 'keywords_notreserved', [ 'MINVALUE' ], 0 ],
  [ 'keywords_notreserved_212' => 'keywords_notreserved', [ 'MODE' ], 0 ],
  [ 'keywords_notreserved_213' => 'keywords_notreserved', [ 'MONTH' ], 0 ],
  [ 'keywords_notreserved_214' => 'keywords_notreserved', [ 'MOVE' ], 0 ],
  [ 'keywords_notreserved_215' => 'keywords_notreserved', [ 'NAME' ], 0 ],
  [ 'keywords_notreserved_216' => 'keywords_notreserved', [ 'NAMES' ], 0 ],
  [ 'keywords_notreserved_217' => 'keywords_notreserved', [ 'NEXT' ], 0 ],
  [ 'keywords_notreserved_218' => 'keywords_notreserved', [ 'NO' ], 0 ],
  [ 'keywords_notreserved_219' => 'keywords_notreserved', [ 'NOTHING' ], 0 ],
  [ 'keywords_notreserved_220' => 'keywords_notreserved', [ 'NOTIFY' ], 0 ],
  [ 'keywords_notreserved_221' => 'keywords_notreserved', [ 'NOWAIT' ], 0 ],
  [ 'keywords_notreserved_222' => 'keywords_notreserved', [ 'NULLS' ], 0 ],
  [ 'keywords_notreserved_223' => 'keywords_notreserved', [ 'OBJECT' ], 0 ],
  [ 'keywords_notreserved_224' => 'keywords_notreserved', [ 'OF' ], 0 ],
  [ 'keywords_notreserved_225' => 'keywords_notreserved', [ 'OFF' ], 0 ],
  [ 'keywords_notreserved_226' => 'keywords_notreserved', [ 'OIDS' ], 0 ],
  [ 'keywords_notreserved_227' => 'keywords_notreserved', [ 'OPERATOR' ], 0 ],
  [ 'keywords_notreserved_228' => 'keywords_notreserved', [ 'OPTION' ], 0 ],
  [ 'keywords_notreserved_229' => 'keywords_notreserved', [ 'OPTIONS' ], 0 ],
  [ 'keywords_notreserved_230' => 'keywords_notreserved', [ 'OWNED' ], 0 ],
  [ 'keywords_notreserved_231' => 'keywords_notreserved', [ 'OWNER' ], 0 ],
  [ 'keywords_notreserved_232' => 'keywords_notreserved', [ 'PARSER' ], 0 ],
  [ 'keywords_notreserved_233' => 'keywords_notreserved', [ 'PARTIAL' ], 0 ],
  [ 'keywords_notreserved_234' => 'keywords_notreserved', [ 'PARTITION' ], 0 ],
  [ 'keywords_notreserved_235' => 'keywords_notreserved', [ 'PASSING' ], 0 ],
  [ 'keywords_notreserved_236' => 'keywords_notreserved', [ 'PASSWORD' ], 0 ],
  [ 'keywords_notreserved_237' => 'keywords_notreserved', [ 'PLANS' ], 0 ],
  [ 'keywords_notreserved_238' => 'keywords_notreserved', [ 'PRECEDING' ], 0 ],
  [ 'keywords_notreserved_239' => 'keywords_notreserved', [ 'PREPARE' ], 0 ],
  [ 'keywords_notreserved_240' => 'keywords_notreserved', [ 'PREPARED' ], 0 ],
  [ 'keywords_notreserved_241' => 'keywords_notreserved', [ 'PRESERVE' ], 0 ],
  [ 'keywords_notreserved_242' => 'keywords_notreserved', [ 'PRIOR' ], 0 ],
  [ 'keywords_notreserved_243' => 'keywords_notreserved', [ 'PRIVILEGES' ], 0 ],
  [ 'keywords_notreserved_244' => 'keywords_notreserved', [ 'PROCEDURAL' ], 0 ],
  [ 'keywords_notreserved_245' => 'keywords_notreserved', [ 'PROCEDURE' ], 0 ],
  [ 'keywords_notreserved_246' => 'keywords_notreserved', [ 'QUOTE' ], 0 ],
  [ 'keywords_notreserved_247' => 'keywords_notreserved', [ 'RANGE' ], 0 ],
  [ 'keywords_notreserved_248' => 'keywords_notreserved', [ 'READ' ], 0 ],
  [ 'keywords_notreserved_249' => 'keywords_notreserved', [ 'REASSIGN' ], 0 ],
  [ 'keywords_notreserved_250' => 'keywords_notreserved', [ 'RECHECK' ], 0 ],
  [ 'keywords_notreserved_251' => 'keywords_notreserved', [ 'RECURSIVE' ], 0 ],
  [ 'keywords_notreserved_252' => 'keywords_notreserved', [ 'REF' ], 0 ],
  [ 'keywords_notreserved_253' => 'keywords_notreserved', [ 'REINDEX' ], 0 ],
  [ 'keywords_notreserved_254' => 'keywords_notreserved', [ 'RELATIVE' ], 0 ],
  [ 'keywords_notreserved_255' => 'keywords_notreserved', [ 'RELEASE' ], 0 ],
  [ 'keywords_notreserved_256' => 'keywords_notreserved', [ 'RENAME' ], 0 ],
  [ 'keywords_notreserved_257' => 'keywords_notreserved', [ 'REPEATABLE' ], 0 ],
  [ 'keywords_notreserved_258' => 'keywords_notreserved', [ 'REPLACE' ], 0 ],
  [ 'keywords_notreserved_259' => 'keywords_notreserved', [ 'REPLICA' ], 0 ],
  [ 'keywords_notreserved_260' => 'keywords_notreserved', [ 'RESET' ], 0 ],
  [ 'keywords_notreserved_261' => 'keywords_notreserved', [ 'RESTART' ], 0 ],
  [ 'keywords_notreserved_262' => 'keywords_notreserved', [ 'RESTRICT' ], 0 ],
  [ 'keywords_notreserved_263' => 'keywords_notreserved', [ 'RETURNS' ], 0 ],
  [ 'keywords_notreserved_264' => 'keywords_notreserved', [ 'REVOKE' ], 0 ],
  [ 'keywords_notreserved_265' => 'keywords_notreserved', [ 'ROLE' ], 0 ],
  [ 'keywords_notreserved_266' => 'keywords_notreserved', [ 'ROLLBACK' ], 0 ],
  [ 'keywords_notreserved_267' => 'keywords_notreserved', [ 'ROWS' ], 0 ],
  [ 'keywords_notreserved_268' => 'keywords_notreserved', [ 'RULE' ], 0 ],
  [ 'keywords_notreserved_269' => 'keywords_notreserved', [ 'SAVEPOINT' ], 0 ],
  [ 'keywords_notreserved_270' => 'keywords_notreserved', [ 'SCHEMA' ], 0 ],
  [ 'keywords_notreserved_271' => 'keywords_notreserved', [ 'SCROLL' ], 0 ],
  [ 'keywords_notreserved_272' => 'keywords_notreserved', [ 'SEARCH' ], 0 ],
  [ 'keywords_notreserved_273' => 'keywords_notreserved', [ 'SECOND' ], 0 ],
  [ 'keywords_notreserved_274' => 'keywords_notreserved', [ 'SECURITY' ], 0 ],
  [ 'keywords_notreserved_275' => 'keywords_notreserved', [ 'SEQUENCE' ], 0 ],
  [ 'keywords_notreserved_276' => 'keywords_notreserved', [ 'SEQUENCES' ], 0 ],
  [ 'keywords_notreserved_277' => 'keywords_notreserved', [ 'SERIALIZABLE' ], 0 ],
  [ 'keywords_notreserved_278' => 'keywords_notreserved', [ 'SERVER' ], 0 ],
  [ 'keywords_notreserved_279' => 'keywords_notreserved', [ 'SESSION' ], 0 ],
  [ 'keywords_notreserved_280' => 'keywords_notreserved', [ 'SET' ], 0 ],
  [ 'keywords_notreserved_281' => 'keywords_notreserved', [ 'SHARE' ], 0 ],
  [ 'keywords_notreserved_282' => 'keywords_notreserved', [ 'SHOW' ], 0 ],
  [ 'keywords_notreserved_283' => 'keywords_notreserved', [ 'SIMPLE' ], 0 ],
  [ 'keywords_notreserved_284' => 'keywords_notreserved', [ 'STABLE' ], 0 ],
  [ 'keywords_notreserved_285' => 'keywords_notreserved', [ 'STANDALONE' ], 0 ],
  [ 'keywords_notreserved_286' => 'keywords_notreserved', [ 'START' ], 0 ],
  [ 'keywords_notreserved_287' => 'keywords_notreserved', [ 'STATEMENT' ], 0 ],
  [ 'keywords_notreserved_288' => 'keywords_notreserved', [ 'STATISTICS' ], 0 ],
  [ 'keywords_notreserved_289' => 'keywords_notreserved', [ 'STDIN' ], 0 ],
  [ 'keywords_notreserved_290' => 'keywords_notreserved', [ 'STDOUT' ], 0 ],
  [ 'keywords_notreserved_291' => 'keywords_notreserved', [ 'STORAGE' ], 0 ],
  [ 'keywords_notreserved_292' => 'keywords_notreserved', [ 'STRICT' ], 0 ],
  [ 'keywords_notreserved_293' => 'keywords_notreserved', [ 'STRIP' ], 0 ],
  [ 'keywords_notreserved_294' => 'keywords_notreserved', [ 'SYSID' ], 0 ],
  [ 'keywords_notreserved_295' => 'keywords_notreserved', [ 'SYSTEM' ], 0 ],
  [ 'keywords_notreserved_296' => 'keywords_notreserved', [ 'TABLES' ], 0 ],
  [ 'keywords_notreserved_297' => 'keywords_notreserved', [ 'TABLESPACE' ], 0 ],
  [ 'keywords_notreserved_298' => 'keywords_notreserved', [ 'TEMP' ], 0 ],
  [ 'keywords_notreserved_299' => 'keywords_notreserved', [ 'TEMPLATE' ], 0 ],
  [ 'keywords_notreserved_300' => 'keywords_notreserved', [ 'TEMPORARY' ], 0 ],
  [ 'keywords_notreserved_301' => 'keywords_notreserved', [ 'TEXT' ], 0 ],
  [ 'keywords_notreserved_302' => 'keywords_notreserved', [ 'TRANSACTION' ], 0 ],
  [ 'keywords_notreserved_303' => 'keywords_notreserved', [ 'TRIGGER' ], 0 ],
  [ 'keywords_notreserved_304' => 'keywords_notreserved', [ 'TRUNCATE' ], 0 ],
  [ 'keywords_notreserved_305' => 'keywords_notreserved', [ 'TRUSTED' ], 0 ],
  [ 'keywords_notreserved_306' => 'keywords_notreserved', [ 'TYPE' ], 0 ],
  [ 'keywords_notreserved_307' => 'keywords_notreserved', [ 'UNBOUNDED' ], 0 ],
  [ 'keywords_notreserved_308' => 'keywords_notreserved', [ 'UNCOMMITTED' ], 0 ],
  [ 'keywords_notreserved_309' => 'keywords_notreserved', [ 'UNENCRYPTED' ], 0 ],
  [ 'keywords_notreserved_310' => 'keywords_notreserved', [ 'UNKNOWN' ], 0 ],
  [ 'keywords_notreserved_311' => 'keywords_notreserved', [ 'UNLISTEN' ], 0 ],
  [ 'keywords_notreserved_312' => 'keywords_notreserved', [ 'UNLOGGED' ], 0 ],
  [ 'keywords_notreserved_313' => 'keywords_notreserved', [ 'UNTIL' ], 0 ],
  [ 'keywords_notreserved_314' => 'keywords_notreserved', [ 'UPDATE' ], 0 ],
  [ 'keywords_notreserved_315' => 'keywords_notreserved', [ 'VACUUM' ], 0 ],
  [ 'keywords_notreserved_316' => 'keywords_notreserved', [ 'VALID' ], 0 ],
  [ 'keywords_notreserved_317' => 'keywords_notreserved', [ 'VALIDATE' ], 0 ],
  [ 'keywords_notreserved_318' => 'keywords_notreserved', [ 'VALIDATOR' ], 0 ],
  [ 'keywords_notreserved_319' => 'keywords_notreserved', [ 'VALUE' ], 0 ],
  [ 'keywords_notreserved_320' => 'keywords_notreserved', [ 'VARYING' ], 0 ],
  [ 'keywords_notreserved_321' => 'keywords_notreserved', [ 'VERSION' ], 0 ],
  [ 'keywords_notreserved_322' => 'keywords_notreserved', [ 'VIEW' ], 0 ],
  [ 'keywords_notreserved_323' => 'keywords_notreserved', [ 'VOLATILE' ], 0 ],
  [ 'keywords_notreserved_324' => 'keywords_notreserved', [ 'WHITESPACE' ], 0 ],
  [ 'keywords_notreserved_325' => 'keywords_notreserved', [ 'WITHOUT' ], 0 ],
  [ 'keywords_notreserved_326' => 'keywords_notreserved', [ 'WORK' ], 0 ],
  [ 'keywords_notreserved_327' => 'keywords_notreserved', [ 'WRAPPER' ], 0 ],
  [ 'keywords_notreserved_328' => 'keywords_notreserved', [ 'WRITE' ], 0 ],
  [ 'keywords_notreserved_329' => 'keywords_notreserved', [ 'XML' ], 0 ],
  [ 'keywords_notreserved_330' => 'keywords_notreserved', [ 'YEAR' ], 0 ],
  [ 'keywords_notreserved_331' => 'keywords_notreserved', [ 'YES' ], 0 ],
  [ 'keywords_notreserved_332' => 'keywords_notreserved', [ 'ZONE' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_333' => 'keywords_reserved_ok_for_functions_or_types', [ 'AUTHORIZATION' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_334' => 'keywords_reserved_ok_for_functions_or_types', [ 'BINARY' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_335' => 'keywords_reserved_ok_for_functions_or_types', [ 'CONCURRENTLY' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_336' => 'keywords_reserved_ok_for_functions_or_types', [ 'CROSS' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_337' => 'keywords_reserved_ok_for_functions_or_types', [ 'CURRENT_SCHEMA' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_338' => 'keywords_reserved_ok_for_functions_or_types', [ 'FREEZE' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_339' => 'keywords_reserved_ok_for_functions_or_types', [ 'FULL' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_340' => 'keywords_reserved_ok_for_functions_or_types', [ 'ILIKE' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_341' => 'keywords_reserved_ok_for_functions_or_types', [ 'INNER' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_342' => 'keywords_reserved_ok_for_functions_or_types', [ 'IS' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_343' => 'keywords_reserved_ok_for_functions_or_types', [ 'ISNULL' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_344' => 'keywords_reserved_ok_for_functions_or_types', [ 'JOIN' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_345' => 'keywords_reserved_ok_for_functions_or_types', [ 'LEFT' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_346' => 'keywords_reserved_ok_for_functions_or_types', [ 'LIKE' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_347' => 'keywords_reserved_ok_for_functions_or_types', [ 'NATURAL' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_348' => 'keywords_reserved_ok_for_functions_or_types', [ 'NOTNULL' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_349' => 'keywords_reserved_ok_for_functions_or_types', [ 'OUTER' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_350' => 'keywords_reserved_ok_for_functions_or_types', [ 'OVER' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_351' => 'keywords_reserved_ok_for_functions_or_types', [ 'OVERLAPS' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_352' => 'keywords_reserved_ok_for_functions_or_types', [ 'RIGHT' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_353' => 'keywords_reserved_ok_for_functions_or_types', [ 'SIMILAR' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_354' => 'keywords_reserved_ok_for_functions_or_types', [ 'VERBOSE' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_355' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'BETWEEN' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_356' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'BIGINT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_357' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'BIT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_358' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'BOOLEAN' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_359' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'CHAR' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_360' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'CHARACTER' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_361' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'COALESCE' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_362' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'DEC' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_363' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'DECIMAL' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_364' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'EXISTS' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_365' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'EXTRACT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_366' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'FLOAT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_367' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'GREATEST' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_368' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'INOUT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_369' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'INT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_370' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'INTEGER' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_371' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'INTERVAL' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_372' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'LEAST' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_373' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'NATIONAL' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_374' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'NCHAR' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_375' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'NONE' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_376' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'NULLIF' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_377' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'NUMERIC' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_378' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'OUT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_379' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'OVERLAY' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_380' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'POSITION' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_381' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'PRECISION' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_382' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'REAL' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_383' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'ROW' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_384' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'SETOF' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_385' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'SMALLINT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_386' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'SUBSTRING' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_387' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'TIME' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_388' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'TIMESTAMP' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_389' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'TREAT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_390' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'TRIM' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_391' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'VALUES' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_392' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'VARCHAR' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_393' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLATTRIBUTES' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_394' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLCONCAT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_395' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLELEMENT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_396' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLEXISTS' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_397' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLFOREST' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_398' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLPARSE' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_399' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLPI' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_400' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLROOT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_401' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLSERIALIZE' ], 0 ],
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
  'expr_27' => 27,
  'expr_28' => 28,
  'expr_simple_29' => 29,
  'expr_simple_30' => 30,
  'literal_value_31' => 31,
  'literal_value_32' => 32,
  'literal_value_33' => 33,
  'literal_value_34' => 34,
  'literal_value_35' => 35,
  'literal_value_36' => 36,
  'literal_value_37' => 37,
  'identifier_38' => 38,
  'identifier_39' => 39,
  'identifier_40' => 40,
  'identifier_41' => 41,
  'normal_type_42' => 42,
  'normal_type_43' => 43,
  'simple_type_44' => 44,
  'simple_type_45' => 45,
  'simple_type_46' => 46,
  'simple_type_47' => 47,
  'simple_type_48' => 48,
  'simple_type_49' => 49,
  'simple_type_50' => 50,
  'simple_type_51' => 51,
  'simple_type_52' => 52,
  'simple_type_53' => 53,
  'simple_type_54' => 54,
  'timestamp_type_55' => 55,
  'timestamp_type_56' => 56,
  'timestamp_type_57' => 57,
  'timestamp_type_58' => 58,
  'timestamp_type_59' => 59,
  'time_type_60' => 60,
  'time_type_61' => 61,
  'time_type_62' => 62,
  'time_type_63' => 63,
  'time_type_64' => 64,
  'interval_type_65' => 65,
  'interval_type_66' => 66,
  'interval_type_67' => 67,
  'interval_type_68' => 68,
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
  'base_interval_type_83' => 83,
  'base_interval_type_84' => 84,
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
  'keywords_reserved_ok_for_functions_or_types_333' => 333,
  'keywords_reserved_ok_for_functions_or_types_334' => 334,
  'keywords_reserved_ok_for_functions_or_types_335' => 335,
  'keywords_reserved_ok_for_functions_or_types_336' => 336,
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
  'keywords_notreserved_not_ok_for_functions_or_types_355' => 355,
  'keywords_notreserved_not_ok_for_functions_or_types_356' => 356,
  'keywords_notreserved_not_ok_for_functions_or_types_357' => 357,
  'keywords_notreserved_not_ok_for_functions_or_types_358' => 358,
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
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'USTRING_CONSTANT' => 12,
			'STRING_CONSTANT' => 14,
			"(" => 15,
			'NUMERIC_CONSTANT' => 16,
			'ESTRING_CONSTANT' => 17,
			'OPERATOR_NAME' => 19,
			'CAST' => 22,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 18,
			'result_column' => 20,
			'result_columns' => 11,
			'expr_simple' => 10
		}
	},
	{#State 6
		ACTIONS => {
			'SELECT' => 5
		},
		DEFAULT => -4,
		GOTOS => {
			'select_stmt' => 1,
			'statement' => 23
		}
	},
	{#State 7
		DEFAULT => 0
	},
	{#State 8
		DEFAULT => -35
	},
	{#State 9
		DEFAULT => -34
	},
	{#State 10
		DEFAULT => -11
	},
	{#State 11
		ACTIONS => {
			"," => 24
		},
		DEFAULT => -6
	},
	{#State 12
		DEFAULT => -32
	},
	{#State 13
		DEFAULT => -29
	},
	{#State 14
		DEFAULT => -31
	},
	{#State 15
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'USTRING_CONSTANT' => 12,
			'STRING_CONSTANT' => 14,
			"(" => 15,
			'NUMERIC_CONSTANT' => 16,
			'ESTRING_CONSTANT' => 17,
			'OPERATOR_NAME' => 19,
			'CAST' => 22,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 25,
			'expr_simple' => 10
		}
	},
	{#State 16
		DEFAULT => -36
	},
	{#State 17
		DEFAULT => -33
	},
	{#State 18
		ACTIONS => {
			"-" => 26,
			"::" => 27,
			"<" => 29,
			"+" => 30,
			'ILIKE' => 31,
			"%" => 33,
			'BETWEEN' => 35,
			"^" => 36,
			'OPERATOR_NAME' => 38,
			"*" => 37,
			'AS' => 39,
			'LIKE' => 28,
			"/" => 32,
			"=" => 34,
			">" => 40
		},
		DEFAULT => -9
	},
	{#State 19
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'USTRING_CONSTANT' => 12,
			'STRING_CONSTANT' => 14,
			"(" => 15,
			'NUMERIC_CONSTANT' => 16,
			'ESTRING_CONSTANT' => 17,
			'OPERATOR_NAME' => 19,
			'CAST' => 22,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 41,
			'expr_simple' => 10
		}
	},
	{#State 20
		DEFAULT => -7
	},
	{#State 21
		DEFAULT => -37
	},
	{#State 22
		ACTIONS => {
			"(" => 42
		}
	},
	{#State 23
		DEFAULT => -3
	},
	{#State 24
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'USTRING_CONSTANT' => 12,
			'STRING_CONSTANT' => 14,
			"(" => 15,
			'NUMERIC_CONSTANT' => 16,
			'ESTRING_CONSTANT' => 17,
			'OPERATOR_NAME' => 19,
			'CAST' => 22,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 18,
			'result_column' => 43,
			'expr_simple' => 10
		}
	},
	{#State 25
		ACTIONS => {
			"-" => 26,
			'LIKE' => 28,
			"::" => 27,
			"<" => 29,
			"+" => 30,
			'ILIKE' => 31,
			"%" => 33,
			"/" => 32,
			"=" => 34,
			'BETWEEN' => 35,
			"^" => 36,
			'OPERATOR_NAME' => 38,
			"*" => 37,
			")" => 44,
			">" => 40
		}
	},
	{#State 26
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'USTRING_CONSTANT' => 12,
			'STRING_CONSTANT' => 14,
			"(" => 15,
			'NUMERIC_CONSTANT' => 16,
			'ESTRING_CONSTANT' => 17,
			'OPERATOR_NAME' => 19,
			'CAST' => 22,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 45,
			'expr_simple' => 10
		}
	},
	{#State 27
		ACTIONS => {
			'INPUT' => 48,
			'SYSID' => 47,
			'JOIN' => 46,
			'REPLACE' => 50,
			'SERIALIZABLE' => 49,
			'AT' => 52,
			'INSENSITIVE' => 51,
			'RETURNS' => 53,
			'NCHAR' => 54,
			'INVOKER' => 55,
			'WORK' => 56,
			'PASSING' => 57,
			'MODE' => 58,
			'INTEGER' => 59,
			'INHERITS' => 60,
			'ESCAPE' => 62,
			'VALUE' => 61,
			'DROP' => 63,
			'MONTH' => 64,
			'ENCODING' => 66,
			'TEMPLATE' => 67,
			'DICTIONARY' => 68,
			'SEARCH' => 69,
			'PREPARE' => 70,
			'LOCK' => 71,
			'DEFAULTS' => 72,
			'FULL' => 73,
			'TREAT' => 74,
			'BY' => 75,
			'NO' => 76,
			'MINUTE' => 77,
			'DATA' => 81,
			'DAY' => 80,
			'PARTITION' => 79,
			'RANGE' => 78,
			'REF' => 84,
			'SHARE' => 83,
			'REAL' => 82,
			'OVER' => 85,
			'LARGE' => 87,
			'CURRENT_SCHEMA' => 86,
			'DELETE' => 88,
			'NULLIF' => 89,
			'CONNECTION' => 90,
			'BACKWARD' => 92,
			'CLOSE' => 91,
			'COST' => 93,
			'REPLICA' => 94,
			'PRIVILEGES' => 95,
			'ZONE' => 96,
			'LEAST' => 97,
			'STATISTICS' => 98,
			'ISNULL' => 99,
			'CALLED' => 100,
			'SECURITY' => 101,
			'INCREMENT' => 103,
			'BINARY' => 104,
			'LEVEL' => 105,
			'FORCE' => 106,
			'CONCURRENTLY' => 107,
			'UPDATE' => 109,
			'PRESERVE' => 110,
			'XMLPI' => 111,
			'CHARACTERISTICS' => 112,
			'VALIDATE' => 113,
			'STRICT' => 114,
			'VARYING' => 115,
			'AUTHORIZATION' => 116,
			'REASSIGN' => 117,
			'LABEL' => 119,
			'ROLLBACK' => 118,
			'OBJECT' => 120,
			'TIMESTAMP' => 123,
			'DELIMITERS' => 122,
			'PROCEDURE' => 121,
			'RULE' => 124,
			'INSERT' => 125,
			'HANDLER' => 126,
			'LOCATION' => 128,
			'EXISTS' => 127,
			'IMMUTABLE' => 129,
			'RELEASE' => 131,
			'BOOLEAN' => 130,
			'NULLS' => 132,
			'TYPE' => 133,
			'RESET' => 134,
			'NOWAIT' => 135,
			'PRIOR' => 136,
			'OFF' => 139,
			'BIGINT' => 138,
			'XMLSERIALIZE' => 137,
			'VERBOSE' => 140,
			'SET' => 141,
			'COMMENT' => 142,
			'IMMEDIATE' => 143,
			'DELIMITER' => 144,
			'SETOF' => 145,
			'INNER' => 146,
			'EXTRACT' => 147,
			'REINDEX' => 148,
			'PRECISION' => 149,
			'ACCESS' => 150,
			'OPTION' => 151,
			'COMMENTS' => 152,
			'INOUT' => 153,
			'DEALLOCATE' => 154,
			'CATALOG' => 155,
			'OUT' => 156,
			'RESTART' => 157,
			'MAPPING' => 158,
			'OF' => 159,
			'UNLOGGED' => 160,
			'CONTINUE' => 161,
			'XMLEXISTS' => 162,
			'UNBOUNDED' => 163,
			'READ' => 164,
			'LEFT' => 165,
			'PRECEDING' => 166,
			'STABLE' => 167,
			'DEC' => 168,
			'XMLELEMENT' => 169,
			'XML' => 170,
			'SCROLL' => 171,
			'TEXT' => 172,
			'ALSO' => 173,
			'FUNCTION' => 174,
			'SYSTEM' => 175,
			'AGGREGATE' => 176,
			'FLOAT' => 177,
			'ATTRIBUTE' => 178,
			'ADD' => 180,
			'STRIP' => 181,
			'TABLESPACE' => 182,
			'OVERLAPS' => 183,
			'DEFERRED' => 185,
			'VIEW' => 184,
			'REPEATABLE' => 186,
			'ALWAYS' => 187,
			'FORWARD' => 189,
			'CONSTRAINTS' => 188,
			'NOTHING' => 190,
			'EXCLUDING' => 191,
			'DECIMAL' => 192,
			'INDEXES' => 194,
			'CHECKPOINT' => 193,
			'CACHE' => 195,
			'COMMIT' => 196,
			'DECLARE' => 197,
			'UNLISTEN' => 198,
			'LOAD' => 199,
			'FAMILY' => 200,
			'SMALLINT' => 201,
			'ASSERTION' => 202,
			'ILIKE' => 203,
			'GLOBAL' => 204,
			'EXTERNAL' => 205,
			'SIMILAR' => 206,
			'STDOUT' => 207,
			'REVOKE' => 208,
			'INHERIT' => 209,
			'OUTER' => 210,
			'EXPLAIN' => 211,
			'VARCHAR' => 213,
			'OIDS' => 212,
			'AFTER' => 214,
			'DISABLE' => 216,
			'CSV' => 215,
			'VACUUM' => 217,
			'SCHEMA' => 218,
			'ROW' => 219,
			'LC_COLLATE' => 220,
			'FREEZE' => 221,
			'INDEX' => 222,
			'DEFINER' => 223,
			'XMLPARSE' => 224,
			'ADMIN' => 225,
			'INCLUDING' => 226,
			'OWNED' => 227,
			'CROSS' => 228,
			'INSTEAD' => 229,
			'NATIONAL' => 230,
			'EACH' => 231,
			'TRUSTED' => 232,
			'EXCLUSIVE' => 233,
			'OWNER' => 234,
			'CHARACTER' => 235,
			'CASCADE' => 236,
			'STATEMENT' => 237,
			'ASSIGNMENT' => 238,
			'MATCH' => 240,
			'CLASS' => 241,
			'DOUBLE' => 242,
			'MOVE' => 243,
			'TIME' => 244,
			'NUMERIC' => 245,
			'CURSOR' => 246,
			'INLINE' => 247,
			'ENCRYPTED' => 248,
			'EXTENSION' => 249,
			'CHAIN' => 250,
			'RECURSIVE' => 251,
			'VALIDATOR' => 252,
			'XMLROOT' => 253,
			'UQUOTED_IDENTIFIER' => 254,
			'SUBSTRING' => 255,
			'CASCADED' => 256,
			'DISCARD' => 257,
			'BETWEEN' => 258,
			'ABORT' => 259,
			'XMLATTRIBUTES' => 260,
			'VALUES' => 261,
			'BEFORE' => 263,
			'TRUNCATE' => 264,
			'ABSOLUTE' => 265,
			'IDENTIFIER' => 266,
			'SHOW' => 267,
			'GREATEST' => 268,
			'PLANS' => 269,
			'PARTIAL' => 270,
			'SEQUENCES' => 271,
			'EXCLUDE' => 272,
			'WHITESPACE' => 273,
			'SECOND' => 275,
			'HOUR' => 276,
			'XMLFOREST' => 277,
			'FOLLOWING' => 279,
			'WRAPPER' => 280,
			'LISTEN' => 281,
			'VOLATILE' => 282,
			'LANGUAGE' => 283,
			'YEAR' => 284,
			'STANDALONE' => 285,
			'TEMP' => 286,
			'COPY' => 287,
			'WITHOUT' => 288,
			'OPTIONS' => 289,
			'YES' => 290,
			'PROCEDURAL' => 291,
			'SEQUENCE' => 292,
			'LIKE' => 293,
			'SIMPLE' => 294,
			'IDENTITY' => 295,
			'QUOTE' => 296,
			'POSITION' => 297,
			'DOMAIN' => 298,
			'EXECUTE' => 299,
			'UNKNOWN' => 300,
			'CONTENT' => 301,
			'QUOTED_IDENTIFIER' => 302,
			'SERVER' => 303,
			'RELATIVE' => 304,
			'TRANSACTION' => 305,
			'CONFIGURATION' => 306,
			'NAMES' => 307,
			'PARSER' => 308,
			'RENAME' => 309,
			'ALTER' => 312,
			'CURRENT' => 311,
			'RIGHT' => 310,
			'IMPLICIT' => 313,
			'CLUSTER' => 315,
			'NATURAL' => 316,
			'XMLCONCAT' => 317,
			'PASSWORD' => 318,
			'CHAR' => 319,
			'RECHECK' => 320,
			'PREPARED' => 322,
			'NEXT' => 321,
			'TEMPORARY' => 323,
			'COMMITTED' => 324,
			'GRANTED' => 326,
			'BIT' => 325,
			'NOTIFY' => 328,
			'BEGIN' => 327,
			'HEADER' => 329,
			'INTERVAL' => 330,
			'LC_CTYPE' => 331,
			'NAME' => 332,
			'STORAGE' => 335,
			'FUNCTIONS' => 334,
			'ISOLATION' => 333,
			'STDIN' => 336,
			'RESTRICT' => 337,
			'UNCOMMITTED' => 341,
			'CYCLE' => 340,
			'IS' => 339,
			'TRIM' => 338,
			'MAXVALUE' => 342,
			'START' => 343,
			'SAVEPOINT' => 346,
			'DOCUMENT' => 345,
			'IF' => 344,
			'ROWS' => 347,
			'MINVALUE' => 349,
			'LAST' => 348,
			'KEY' => 350,
			'UNTIL' => 352,
			'OPERATOR' => 351,
			'HOLD' => 353,
			'ACTION' => 354,
			'WRITE' => 355,
			'ROLE' => 356,
			'NOTNULL' => 357,
			'SESSION' => 358,
			'CONVERSION' => 359,
			'DATABASE' => 361,
			'ENUM' => 360,
			'ENABLE' => 362,
			'LOCAL' => 363,
			'NONE' => 364,
			'VALID' => 367,
			'TABLES' => 366,
			'INT' => 365,
			'TRIGGER' => 369,
			'COLLATION' => 370,
			'UNENCRYPTED' => 371,
			'OVERLAY' => 372,
			'FIRST' => 374,
			'COALESCE' => 373,
			'VERSION' => 375
		},
		GOTOS => {
			'time_type' => 179,
			'keywords_reserved_ok_for_functions_or_types' => 108,
			'base_interval_type' => 368,
			'keywords_notreserved_not_ok_for_functions_or_types' => 274,
			'normal_type' => 65,
			'interval_type' => 314,
			'identifier' => 102,
			'timestamp_type' => 262,
			'simple_type' => 239,
			'keywords_notreserved' => 278
		}
	},
	{#State 28
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'STRING_CONSTANT' => 14,
			'USTRING_CONSTANT' => 12,
			"(" => 15,
			'ESTRING_CONSTANT' => 17,
			'NUMERIC_CONSTANT' => 16,
			'OPERATOR_NAME' => 19,
			'CAST' => 22,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 376,
			'expr_simple' => 10
		}
	},
	{#State 29
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'STRING_CONSTANT' => 14,
			'USTRING_CONSTANT' => 12,
			"(" => 15,
			'ESTRING_CONSTANT' => 17,
			'NUMERIC_CONSTANT' => 16,
			'OPERATOR_NAME' => 19,
			'CAST' => 22,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 377,
			'expr_simple' => 10
		}
	},
	{#State 30
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'STRING_CONSTANT' => 14,
			'USTRING_CONSTANT' => 12,
			"(" => 15,
			'ESTRING_CONSTANT' => 17,
			'NUMERIC_CONSTANT' => 16,
			'OPERATOR_NAME' => 19,
			'CAST' => 22,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 378,
			'expr_simple' => 10
		}
	},
	{#State 31
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'STRING_CONSTANT' => 14,
			'USTRING_CONSTANT' => 12,
			"(" => 15,
			'ESTRING_CONSTANT' => 17,
			'NUMERIC_CONSTANT' => 16,
			'OPERATOR_NAME' => 19,
			'CAST' => 22,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 379,
			'expr_simple' => 10
		}
	},
	{#State 32
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'STRING_CONSTANT' => 14,
			'USTRING_CONSTANT' => 12,
			"(" => 15,
			'ESTRING_CONSTANT' => 17,
			'NUMERIC_CONSTANT' => 16,
			'OPERATOR_NAME' => 19,
			'CAST' => 22,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 380,
			'expr_simple' => 10
		}
	},
	{#State 33
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'STRING_CONSTANT' => 14,
			'USTRING_CONSTANT' => 12,
			"(" => 15,
			'ESTRING_CONSTANT' => 17,
			'NUMERIC_CONSTANT' => 16,
			'OPERATOR_NAME' => 19,
			'CAST' => 22,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 381,
			'expr_simple' => 10
		}
	},
	{#State 34
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'STRING_CONSTANT' => 14,
			'USTRING_CONSTANT' => 12,
			"(" => 15,
			'ESTRING_CONSTANT' => 17,
			'NUMERIC_CONSTANT' => 16,
			'OPERATOR_NAME' => 19,
			'CAST' => 22,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 382,
			'expr_simple' => 10
		}
	},
	{#State 35
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'STRING_CONSTANT' => 14,
			'USTRING_CONSTANT' => 12,
			"(" => 15,
			'ESTRING_CONSTANT' => 17,
			'NUMERIC_CONSTANT' => 16,
			'OPERATOR_NAME' => 19,
			'CAST' => 22,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 383,
			'expr_simple' => 10
		}
	},
	{#State 36
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'STRING_CONSTANT' => 14,
			'USTRING_CONSTANT' => 12,
			"(" => 15,
			'ESTRING_CONSTANT' => 17,
			'NUMERIC_CONSTANT' => 16,
			'OPERATOR_NAME' => 19,
			'CAST' => 22,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 384,
			'expr_simple' => 10
		}
	},
	{#State 37
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'STRING_CONSTANT' => 14,
			'USTRING_CONSTANT' => 12,
			"(" => 15,
			'ESTRING_CONSTANT' => 17,
			'NUMERIC_CONSTANT' => 16,
			'OPERATOR_NAME' => 19,
			'CAST' => 22,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 385,
			'expr_simple' => 10
		}
	},
	{#State 38
		ACTIONS => {
			'STRING_CONSTANT' => 14,
			'USTRING_CONSTANT' => 12,
			'NUMERIC_CONSTANT' => 16,
			'CAST' => 22,
			'XBITSTRING_CONSTANT' => 8,
			'BITSTRING_CONSTANT' => 9,
			"(" => 15,
			'ESTRING_CONSTANT' => 17,
			'INTEGER_CONSTANT' => 21
		},
		DEFAULT => -13,
		GOTOS => {
			'literal_value' => 13,
			'expr' => 386,
			'expr_simple' => 10
		}
	},
	{#State 39
		ACTIONS => {
			'VACUUM' => 217,
			'INPUT' => 48,
			'SYSID' => 47,
			'REPLACE' => 50,
			'SERIALIZABLE' => 49,
			'SCHEMA' => 218,
			'AT' => 52,
			'INSENSITIVE' => 51,
			'RETURNS' => 53,
			'LC_COLLATE' => 220,
			'INDEX' => 222,
			'DEFINER' => 223,
			'INVOKER' => 55,
			'WORK' => 56,
			'ADMIN' => 225,
			'INCLUDING' => 226,
			'OWNED' => 227,
			'PASSING' => 57,
			'INSTEAD' => 229,
			'MODE' => 58,
			'INHERITS' => 60,
			'VALUE' => 61,
			'ESCAPE' => 62,
			'DROP' => 63,
			'MONTH' => 64,
			'EACH' => 231,
			'ENCODING' => 66,
			'TRUSTED' => 232,
			'EXCLUSIVE' => 233,
			'OWNER' => 234,
			'TEMPLATE' => 67,
			'DICTIONARY' => 68,
			'SEARCH' => 69,
			'PREPARE' => 70,
			'LOCK' => 71,
			'DEFAULTS' => 72,
			'CASCADE' => 236,
			'STATEMENT' => 237,
			'BY' => 75,
			'NO' => 76,
			'MINUTE' => 77,
			'ASSIGNMENT' => 238,
			'RANGE' => 78,
			'PARTITION' => 79,
			'DAY' => 80,
			'DATA' => 81,
			'SHARE' => 83,
			'REF' => 84,
			'MATCH' => 240,
			'CLASS' => 241,
			'DOUBLE' => 242,
			'MOVE' => 243,
			'LARGE' => 87,
			'DELETE' => 88,
			'CURSOR' => 246,
			'INLINE' => 247,
			'CONNECTION' => 90,
			'BACKWARD' => 92,
			'CLOSE' => 91,
			'COST' => 93,
			'ENCRYPTED' => 248,
			'EXTENSION' => 249,
			'REPLICA' => 94,
			'CHAIN' => 250,
			'RECURSIVE' => 251,
			'PRIVILEGES' => 95,
			'VALIDATOR' => 252,
			'UQUOTED_IDENTIFIER' => 254,
			'ZONE' => 96,
			'CASCADED' => 256,
			'DISCARD' => 257,
			'STATISTICS' => 98,
			'CALLED' => 100,
			'SECURITY' => 101,
			'ABORT' => 259,
			'INCREMENT' => 103,
			'LEVEL' => 105,
			'FORCE' => 106,
			'BEFORE' => 263,
			'TRUNCATE' => 264,
			'IDENTIFIER' => 266,
			'ABSOLUTE' => 265,
			'SHOW' => 267,
			'PLANS' => 269,
			'PARTIAL' => 270,
			'SEQUENCES' => 271,
			'EXCLUDE' => 272,
			'UPDATE' => 109,
			'PRESERVE' => 110,
			'SECOND' => 275,
			'WHITESPACE' => 273,
			'CHARACTERISTICS' => 112,
			'VALIDATE' => 113,
			'STRICT' => 114,
			'HOUR' => 276,
			'VARYING' => 115,
			'FOLLOWING' => 279,
			'LISTEN' => 281,
			'WRAPPER' => 280,
			'REASSIGN' => 117,
			'VOLATILE' => 282,
			'LANGUAGE' => 283,
			'STANDALONE' => 285,
			'TEMP' => 286,
			'YEAR' => 284,
			'ROLLBACK' => 118,
			'LABEL' => 119,
			'COPY' => 287,
			'WITHOUT' => 288,
			'OBJECT' => 120,
			'PROCEDURE' => 121,
			'DELIMITERS' => 122,
			'RULE' => 124,
			'OPTIONS' => 289,
			'INSERT' => 125,
			'PROCEDURAL' => 291,
			'YES' => 290,
			'HANDLER' => 126,
			'SEQUENCE' => 292,
			'SIMPLE' => 294,
			'LOCATION' => 128,
			'IMMUTABLE' => 129,
			'RELEASE' => 131,
			'NULLS' => 132,
			'TYPE' => 133,
			'IDENTITY' => 295,
			'QUOTE' => 296,
			'RESET' => 134,
			'NOWAIT' => 135,
			'DOMAIN' => 298,
			'EXECUTE' => 299,
			'PRIOR' => 136,
			'UNKNOWN' => 300,
			'OFF' => 139,
			'SET' => 141,
			'IMMEDIATE' => 143,
			'COMMENT' => 142,
			'DELIMITER' => 144,
			'CONTENT' => 301,
			'QUOTED_IDENTIFIER' => 302,
			'REINDEX' => 148,
			'SERVER' => 303,
			'ACCESS' => 150,
			'RELATIVE' => 304,
			'TRANSACTION' => 305,
			'OPTION' => 151,
			'COMMENTS' => 152,
			'CONFIGURATION' => 306,
			'NAMES' => 307,
			'DEALLOCATE' => 154,
			'PARSER' => 308,
			'RENAME' => 309,
			'CATALOG' => 155,
			'ALTER' => 312,
			'CURRENT' => 311,
			'RESTART' => 157,
			'MAPPING' => 158,
			'OF' => 159,
			'IMPLICIT' => 313,
			'UNLOGGED' => 160,
			'CONTINUE' => 161,
			'CLUSTER' => 315,
			'UNBOUNDED' => 163,
			'READ' => 164,
			'PRECEDING' => 166,
			'STABLE' => 167,
			'PASSWORD' => 318,
			'RECHECK' => 320,
			'NEXT' => 321,
			'PREPARED' => 322,
			'XML' => 170,
			'TEMPORARY' => 323,
			'COMMITTED' => 324,
			'SCROLL' => 171,
			'TEXT' => 172,
			'GRANTED' => 326,
			'BEGIN' => 327,
			'NOTIFY' => 328,
			'FUNCTION' => 174,
			'ALSO' => 173,
			'HEADER' => 329,
			'SYSTEM' => 175,
			'AGGREGATE' => 176,
			'ATTRIBUTE' => 178,
			'LC_CTYPE' => 331,
			'NAME' => 332,
			'ADD' => 180,
			'STRIP' => 181,
			'TABLESPACE' => 182,
			'FUNCTIONS' => 334,
			'ISOLATION' => 333,
			'STORAGE' => 335,
			'STDIN' => 336,
			'VIEW' => 184,
			'DEFERRED' => 185,
			'REPEATABLE' => 186,
			'RESTRICT' => 337,
			'CYCLE' => 340,
			'UNCOMMITTED' => 341,
			'ALWAYS' => 187,
			'MAXVALUE' => 342,
			'FORWARD' => 189,
			'CONSTRAINTS' => 188,
			'START' => 343,
			'NOTHING' => 190,
			'DOCUMENT' => 345,
			'IF' => 344,
			'SAVEPOINT' => 346,
			'EXCLUDING' => 191,
			'ROWS' => 347,
			'LAST' => 348,
			'MINVALUE' => 349,
			'INDEXES' => 194,
			'CHECKPOINT' => 193,
			'KEY' => 350,
			'CACHE' => 195,
			'OPERATOR' => 351,
			'UNTIL' => 352,
			'HOLD' => 353,
			'COMMIT' => 196,
			'DECLARE' => 197,
			'ACTION' => 354,
			'UNLISTEN' => 198,
			'WRITE' => 355,
			'LOAD' => 199,
			'ROLE' => 356,
			'SESSION' => 358,
			'FAMILY' => 200,
			'CONVERSION' => 359,
			'DATABASE' => 361,
			'ENUM' => 360,
			'ASSERTION' => 202,
			'GLOBAL' => 204,
			'EXTERNAL' => 205,
			'ENABLE' => 362,
			'LOCAL' => 363,
			'STDOUT' => 207,
			'REVOKE' => 208,
			'TABLES' => 366,
			'VALID' => 367,
			'INHERIT' => 209,
			'TRIGGER' => 369,
			'COLLATION' => 370,
			'EXPLAIN' => 211,
			'UNENCRYPTED' => 371,
			'OIDS' => 212,
			'FIRST' => 374,
			'AFTER' => 214,
			'DISABLE' => 216,
			'CSV' => 215,
			'VERSION' => 375
		},
		GOTOS => {
			'identifier' => 387,
			'keywords_notreserved' => 278
		}
	},
	{#State 40
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'STRING_CONSTANT' => 14,
			'USTRING_CONSTANT' => 12,
			"(" => 15,
			'ESTRING_CONSTANT' => 17,
			'NUMERIC_CONSTANT' => 16,
			'OPERATOR_NAME' => 19,
			'CAST' => 22,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 388,
			'expr_simple' => 10
		}
	},
	{#State 41
		ACTIONS => {
			"-" => 26,
			"::" => 27,
			"+" => 30,
			"%" => 33,
			"^" => 36,
			"*" => 37,
			"/" => 32
		},
		DEFAULT => -14
	},
	{#State 42
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'STRING_CONSTANT' => 14,
			'USTRING_CONSTANT' => 12,
			"(" => 15,
			'ESTRING_CONSTANT' => 17,
			'NUMERIC_CONSTANT' => 16,
			'OPERATOR_NAME' => 19,
			'CAST' => 22,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 389,
			'expr_simple' => 10
		}
	},
	{#State 43
		DEFAULT => -8
	},
	{#State 44
		DEFAULT => -30
	},
	{#State 45
		ACTIONS => {
			"::" => 27,
			"%" => 33,
			"^" => 36,
			"*" => 37,
			"/" => 32
		},
		DEFAULT => -16
	},
	{#State 46
		DEFAULT => -344
	},
	{#State 47
		DEFAULT => -294
	},
	{#State 48
		DEFAULT => -188
	},
	{#State 49
		DEFAULT => -277
	},
	{#State 50
		DEFAULT => -258
	},
	{#State 51
		DEFAULT => -189
	},
	{#State 52
		DEFAULT => -98
	},
	{#State 53
		DEFAULT => -263
	},
	{#State 54
		DEFAULT => -374
	},
	{#State 55
		DEFAULT => -192
	},
	{#State 56
		DEFAULT => -326
	},
	{#State 57
		DEFAULT => -235
	},
	{#State 58
		DEFAULT => -212
	},
	{#State 59
		DEFAULT => -370
	},
	{#State 60
		DEFAULT => -186
	},
	{#State 61
		DEFAULT => -319
	},
	{#State 62
		DEFAULT => -155
	},
	{#State 63
		DEFAULT => -149
	},
	{#State 64
		DEFAULT => -213
	},
	{#State 65
		DEFAULT => -27
	},
	{#State 66
		DEFAULT => -152
	},
	{#State 67
		DEFAULT => -299
	},
	{#State 68
		DEFAULT => -143
	},
	{#State 69
		DEFAULT => -272
	},
	{#State 70
		DEFAULT => -239
	},
	{#State 71
		DEFAULT => -206
	},
	{#State 72
		DEFAULT => -137
	},
	{#State 73
		DEFAULT => -339
	},
	{#State 74
		DEFAULT => -389
	},
	{#State 75
		DEFAULT => -103
	},
	{#State 76
		DEFAULT => -218
	},
	{#State 77
		DEFAULT => -210
	},
	{#State 78
		DEFAULT => -247
	},
	{#State 79
		DEFAULT => -234
	},
	{#State 80
		DEFAULT => -134
	},
	{#State 81
		DEFAULT => -132
	},
	{#State 82
		DEFAULT => -382
	},
	{#State 83
		DEFAULT => -281
	},
	{#State 84
		DEFAULT => -252
	},
	{#State 85
		DEFAULT => -350
	},
	{#State 86
		DEFAULT => -337
	},
	{#State 87
		DEFAULT => -197
	},
	{#State 88
		DEFAULT => -140
	},
	{#State 89
		DEFAULT => -376
	},
	{#State 90
		DEFAULT => -121
	},
	{#State 91
		DEFAULT => -113
	},
	{#State 92
		DEFAULT => -100
	},
	{#State 93
		DEFAULT => -127
	},
	{#State 94
		DEFAULT => -259
	},
	{#State 95
		DEFAULT => -243
	},
	{#State 96
		DEFAULT => -332
	},
	{#State 97
		DEFAULT => -372
	},
	{#State 98
		DEFAULT => -288
	},
	{#State 99
		DEFAULT => -343
	},
	{#State 100
		DEFAULT => -105
	},
	{#State 101
		DEFAULT => -274
	},
	{#State 102
		ACTIONS => {
			"." => 390
		},
		DEFAULT => -44
	},
	{#State 103
		DEFAULT => -182
	},
	{#State 104
		DEFAULT => -334
	},
	{#State 105
		DEFAULT => -201
	},
	{#State 106
		DEFAULT => -166
	},
	{#State 107
		DEFAULT => -335
	},
	{#State 108
		DEFAULT => -45
	},
	{#State 109
		DEFAULT => -314
	},
	{#State 110
		DEFAULT => -241
	},
	{#State 111
		DEFAULT => -399
	},
	{#State 112
		DEFAULT => -110
	},
	{#State 113
		DEFAULT => -317
	},
	{#State 114
		DEFAULT => -292
	},
	{#State 115
		DEFAULT => -320
	},
	{#State 116
		DEFAULT => -333
	},
	{#State 117
		DEFAULT => -249
	},
	{#State 118
		DEFAULT => -266
	},
	{#State 119
		DEFAULT => -195
	},
	{#State 120
		DEFAULT => -223
	},
	{#State 121
		DEFAULT => -245
	},
	{#State 122
		DEFAULT => -142
	},
	{#State 123
		ACTIONS => {
			'WITHOUT' => 393,
			'WITH' => 392,
			"(" => 391
		},
		DEFAULT => -388
	},
	{#State 124
		DEFAULT => -268
	},
	{#State 125
		DEFAULT => -190
	},
	{#State 126
		DEFAULT => -172
	},
	{#State 127
		DEFAULT => -364
	},
	{#State 128
		DEFAULT => -205
	},
	{#State 129
		DEFAULT => -179
	},
	{#State 130
		DEFAULT => -358
	},
	{#State 131
		DEFAULT => -255
	},
	{#State 132
		DEFAULT => -222
	},
	{#State 133
		DEFAULT => -306
	},
	{#State 134
		DEFAULT => -260
	},
	{#State 135
		DEFAULT => -221
	},
	{#State 136
		DEFAULT => -242
	},
	{#State 137
		DEFAULT => -401
	},
	{#State 138
		DEFAULT => -356
	},
	{#State 139
		DEFAULT => -225
	},
	{#State 140
		DEFAULT => -354
	},
	{#State 141
		DEFAULT => -280
	},
	{#State 142
		DEFAULT => -116
	},
	{#State 143
		DEFAULT => -178
	},
	{#State 144
		DEFAULT => -141
	},
	{#State 145
		DEFAULT => -384
	},
	{#State 146
		DEFAULT => -341
	},
	{#State 147
		DEFAULT => -365
	},
	{#State 148
		DEFAULT => -253
	},
	{#State 149
		DEFAULT => -381
	},
	{#State 150
		DEFAULT => -87
	},
	{#State 151
		DEFAULT => -228
	},
	{#State 152
		DEFAULT => -117
	},
	{#State 153
		DEFAULT => -368
	},
	{#State 154
		DEFAULT => -135
	},
	{#State 155
		DEFAULT => -108
	},
	{#State 156
		DEFAULT => -378
	},
	{#State 157
		DEFAULT => -261
	},
	{#State 158
		DEFAULT => -207
	},
	{#State 159
		DEFAULT => -224
	},
	{#State 160
		DEFAULT => -312
	},
	{#State 161
		DEFAULT => -124
	},
	{#State 162
		DEFAULT => -396
	},
	{#State 163
		DEFAULT => -307
	},
	{#State 164
		DEFAULT => -248
	},
	{#State 165
		DEFAULT => -345
	},
	{#State 166
		DEFAULT => -238
	},
	{#State 167
		DEFAULT => -284
	},
	{#State 168
		DEFAULT => -362
	},
	{#State 169
		DEFAULT => -395
	},
	{#State 170
		DEFAULT => -329
	},
	{#State 171
		DEFAULT => -271
	},
	{#State 172
		DEFAULT => -301
	},
	{#State 173
		DEFAULT => -93
	},
	{#State 174
		DEFAULT => -168
	},
	{#State 175
		DEFAULT => -295
	},
	{#State 176
		DEFAULT => -92
	},
	{#State 177
		DEFAULT => -366
	},
	{#State 178
		DEFAULT => -99
	},
	{#State 179
		DEFAULT => -53
	},
	{#State 180
		DEFAULT => -89
	},
	{#State 181
		DEFAULT => -293
	},
	{#State 182
		DEFAULT => -297
	},
	{#State 183
		DEFAULT => -351
	},
	{#State 184
		DEFAULT => -322
	},
	{#State 185
		DEFAULT => -138
	},
	{#State 186
		DEFAULT => -257
	},
	{#State 187
		DEFAULT => -95
	},
	{#State 188
		DEFAULT => -122
	},
	{#State 189
		DEFAULT => -167
	},
	{#State 190
		DEFAULT => -219
	},
	{#State 191
		DEFAULT => -157
	},
	{#State 192
		ACTIONS => {
			"(" => 394
		},
		DEFAULT => -363
	},
	{#State 193
		DEFAULT => -111
	},
	{#State 194
		DEFAULT => -184
	},
	{#State 195
		DEFAULT => -104
	},
	{#State 196
		DEFAULT => -118
	},
	{#State 197
		DEFAULT => -136
	},
	{#State 198
		DEFAULT => -311
	},
	{#State 199
		DEFAULT => -203
	},
	{#State 200
		DEFAULT => -163
	},
	{#State 201
		DEFAULT => -385
	},
	{#State 202
		DEFAULT => -96
	},
	{#State 203
		DEFAULT => -340
	},
	{#State 204
		DEFAULT => -170
	},
	{#State 205
		DEFAULT => -162
	},
	{#State 206
		DEFAULT => -353
	},
	{#State 207
		DEFAULT => -290
	},
	{#State 208
		DEFAULT => -264
	},
	{#State 209
		DEFAULT => -185
	},
	{#State 210
		DEFAULT => -349
	},
	{#State 211
		DEFAULT => -160
	},
	{#State 212
		DEFAULT => -226
	},
	{#State 213
		ACTIONS => {
			"(" => 395
		},
		DEFAULT => -392
	},
	{#State 214
		DEFAULT => -91
	},
	{#State 215
		DEFAULT => -128
	},
	{#State 216
		DEFAULT => -144
	},
	{#State 217
		DEFAULT => -315
	},
	{#State 218
		DEFAULT => -270
	},
	{#State 219
		DEFAULT => -383
	},
	{#State 220
		DEFAULT => -199
	},
	{#State 221
		DEFAULT => -338
	},
	{#State 222
		DEFAULT => -183
	},
	{#State 223
		DEFAULT => -139
	},
	{#State 224
		DEFAULT => -398
	},
	{#State 225
		DEFAULT => -90
	},
	{#State 226
		DEFAULT => -181
	},
	{#State 227
		DEFAULT => -230
	},
	{#State 228
		DEFAULT => -336
	},
	{#State 229
		DEFAULT => -191
	},
	{#State 230
		DEFAULT => -373
	},
	{#State 231
		DEFAULT => -150
	},
	{#State 232
		DEFAULT => -305
	},
	{#State 233
		DEFAULT => -158
	},
	{#State 234
		DEFAULT => -231
	},
	{#State 235
		DEFAULT => -360
	},
	{#State 236
		DEFAULT => -106
	},
	{#State 237
		DEFAULT => -287
	},
	{#State 238
		DEFAULT => -97
	},
	{#State 239
		DEFAULT => -42
	},
	{#State 240
		DEFAULT => -208
	},
	{#State 241
		DEFAULT => -112
	},
	{#State 242
		DEFAULT => -148
	},
	{#State 243
		DEFAULT => -214
	},
	{#State 244
		ACTIONS => {
			'WITHOUT' => 398,
			'WITH' => 397,
			"(" => 396
		},
		DEFAULT => -387
	},
	{#State 245
		ACTIONS => {
			"(" => 399
		},
		DEFAULT => -377
	},
	{#State 246
		DEFAULT => -130
	},
	{#State 247
		DEFAULT => -187
	},
	{#State 248
		DEFAULT => -153
	},
	{#State 249
		DEFAULT => -161
	},
	{#State 250
		DEFAULT => -109
	},
	{#State 251
		DEFAULT => -251
	},
	{#State 252
		DEFAULT => -318
	},
	{#State 253
		DEFAULT => -400
	},
	{#State 254
		DEFAULT => -39
	},
	{#State 255
		DEFAULT => -386
	},
	{#State 256
		DEFAULT => -107
	},
	{#State 257
		DEFAULT => -145
	},
	{#State 258
		DEFAULT => -355
	},
	{#State 259
		DEFAULT => -85
	},
	{#State 260
		DEFAULT => -393
	},
	{#State 261
		DEFAULT => -391
	},
	{#State 262
		DEFAULT => -52
	},
	{#State 263
		DEFAULT => -101
	},
	{#State 264
		DEFAULT => -304
	},
	{#State 265
		DEFAULT => -86
	},
	{#State 266
		DEFAULT => -40
	},
	{#State 267
		DEFAULT => -282
	},
	{#State 268
		DEFAULT => -367
	},
	{#State 269
		DEFAULT => -237
	},
	{#State 270
		DEFAULT => -233
	},
	{#State 271
		DEFAULT => -276
	},
	{#State 272
		DEFAULT => -156
	},
	{#State 273
		DEFAULT => -324
	},
	{#State 274
		DEFAULT => -46
	},
	{#State 275
		DEFAULT => -273
	},
	{#State 276
		DEFAULT => -175
	},
	{#State 277
		DEFAULT => -397
	},
	{#State 278
		DEFAULT => -41
	},
	{#State 279
		DEFAULT => -165
	},
	{#State 280
		DEFAULT => -327
	},
	{#State 281
		DEFAULT => -202
	},
	{#State 282
		DEFAULT => -323
	},
	{#State 283
		DEFAULT => -196
	},
	{#State 284
		DEFAULT => -330
	},
	{#State 285
		DEFAULT => -285
	},
	{#State 286
		DEFAULT => -298
	},
	{#State 287
		DEFAULT => -126
	},
	{#State 288
		DEFAULT => -325
	},
	{#State 289
		DEFAULT => -229
	},
	{#State 290
		DEFAULT => -331
	},
	{#State 291
		DEFAULT => -244
	},
	{#State 292
		DEFAULT => -275
	},
	{#State 293
		DEFAULT => -346
	},
	{#State 294
		DEFAULT => -283
	},
	{#State 295
		DEFAULT => -176
	},
	{#State 296
		DEFAULT => -246
	},
	{#State 297
		DEFAULT => -380
	},
	{#State 298
		DEFAULT => -147
	},
	{#State 299
		DEFAULT => -159
	},
	{#State 300
		DEFAULT => -310
	},
	{#State 301
		DEFAULT => -123
	},
	{#State 302
		DEFAULT => -38
	},
	{#State 303
		DEFAULT => -278
	},
	{#State 304
		DEFAULT => -254
	},
	{#State 305
		DEFAULT => -302
	},
	{#State 306
		DEFAULT => -120
	},
	{#State 307
		DEFAULT => -216
	},
	{#State 308
		DEFAULT => -232
	},
	{#State 309
		DEFAULT => -256
	},
	{#State 310
		DEFAULT => -352
	},
	{#State 311
		DEFAULT => -129
	},
	{#State 312
		DEFAULT => -94
	},
	{#State 313
		DEFAULT => -180
	},
	{#State 314
		DEFAULT => -54
	},
	{#State 315
		DEFAULT => -114
	},
	{#State 316
		DEFAULT => -347
	},
	{#State 317
		DEFAULT => -394
	},
	{#State 318
		DEFAULT => -236
	},
	{#State 319
		DEFAULT => -359
	},
	{#State 320
		DEFAULT => -250
	},
	{#State 321
		DEFAULT => -217
	},
	{#State 322
		DEFAULT => -240
	},
	{#State 323
		DEFAULT => -300
	},
	{#State 324
		DEFAULT => -119
	},
	{#State 325
		DEFAULT => -357
	},
	{#State 326
		DEFAULT => -171
	},
	{#State 327
		DEFAULT => -102
	},
	{#State 328
		DEFAULT => -220
	},
	{#State 329
		DEFAULT => -173
	},
	{#State 330
		ACTIONS => {
			'YEAR' => -83,
			'MINUTE' => -83,
			'DAY' => -83,
			'MONTH' => -83,
			'SECOND' => -83,
			"(" => 400,
			'HOUR' => -83
		},
		DEFAULT => -371
	},
	{#State 331
		DEFAULT => -200
	},
	{#State 332
		DEFAULT => -215
	},
	{#State 333
		DEFAULT => -193
	},
	{#State 334
		DEFAULT => -169
	},
	{#State 335
		DEFAULT => -291
	},
	{#State 336
		DEFAULT => -289
	},
	{#State 337
		DEFAULT => -262
	},
	{#State 338
		DEFAULT => -390
	},
	{#State 339
		DEFAULT => -342
	},
	{#State 340
		DEFAULT => -131
	},
	{#State 341
		DEFAULT => -308
	},
	{#State 342
		DEFAULT => -209
	},
	{#State 343
		DEFAULT => -286
	},
	{#State 344
		DEFAULT => -177
	},
	{#State 345
		DEFAULT => -146
	},
	{#State 346
		DEFAULT => -269
	},
	{#State 347
		DEFAULT => -267
	},
	{#State 348
		DEFAULT => -198
	},
	{#State 349
		DEFAULT => -211
	},
	{#State 350
		DEFAULT => -194
	},
	{#State 351
		DEFAULT => -227
	},
	{#State 352
		DEFAULT => -313
	},
	{#State 353
		DEFAULT => -174
	},
	{#State 354
		DEFAULT => -88
	},
	{#State 355
		DEFAULT => -328
	},
	{#State 356
		DEFAULT => -265
	},
	{#State 357
		DEFAULT => -348
	},
	{#State 358
		DEFAULT => -279
	},
	{#State 359
		DEFAULT => -125
	},
	{#State 360
		DEFAULT => -154
	},
	{#State 361
		DEFAULT => -133
	},
	{#State 362
		DEFAULT => -151
	},
	{#State 363
		DEFAULT => -204
	},
	{#State 364
		DEFAULT => -375
	},
	{#State 365
		DEFAULT => -369
	},
	{#State 366
		DEFAULT => -296
	},
	{#State 367
		DEFAULT => -316
	},
	{#State 368
		ACTIONS => {
			'YEAR' => 406,
			'MINUTE' => 402,
			'HOUR' => 405,
			'MONTH' => 401,
			'DAY' => 403,
			'SECOND' => 404
		}
	},
	{#State 369
		DEFAULT => -303
	},
	{#State 370
		DEFAULT => -115
	},
	{#State 371
		DEFAULT => -309
	},
	{#State 372
		DEFAULT => -379
	},
	{#State 373
		DEFAULT => -361
	},
	{#State 374
		DEFAULT => -164
	},
	{#State 375
		DEFAULT => -321
	},
	{#State 376
		ACTIONS => {
			"-" => 26,
			"::" => 27,
			"+" => 30,
			"%" => 33,
			'BETWEEN' => 35,
			"^" => 36,
			"*" => 37,
			'OPERATOR_NAME' => 38,
			"/" => 32
		},
		DEFAULT => -24
	},
	{#State 377
		ACTIONS => {
			"-" => 26,
			"::" => 27,
			"+" => 30,
			'ILIKE' => 31,
			"%" => 33,
			'BETWEEN' => 35,
			"^" => 36,
			"*" => 37,
			'OPERATOR_NAME' => 38,
			'LIKE' => 28,
			"/" => 32
		},
		DEFAULT => -20
	},
	{#State 378
		ACTIONS => {
			"::" => 27,
			"%" => 33,
			"^" => 36,
			"*" => 37,
			"/" => 32
		},
		DEFAULT => -15
	},
	{#State 379
		ACTIONS => {
			"-" => 26,
			"::" => 27,
			"+" => 30,
			"%" => 33,
			'BETWEEN' => 35,
			"^" => 36,
			"*" => 37,
			'OPERATOR_NAME' => 38,
			"/" => 32
		},
		DEFAULT => -25
	},
	{#State 380
		ACTIONS => {
			"::" => 27,
			"^" => 36
		},
		DEFAULT => -19
	},
	{#State 381
		ACTIONS => {
			"::" => 27,
			"^" => 36
		},
		DEFAULT => -18
	},
	{#State 382
		ACTIONS => {
			"-" => 26,
			"::" => 27,
			"<" => 29,
			"+" => 30,
			'ILIKE' => 31,
			"%" => 33,
			'BETWEEN' => 35,
			"^" => 36,
			"*" => 37,
			'OPERATOR_NAME' => 38,
			'LIKE' => 28,
			"/" => 32,
			"=" => 34,
			">" => 40
		},
		DEFAULT => -22
	},
	{#State 383
		ACTIONS => {
			"-" => 26,
			'LIKE' => 28,
			"::" => 27,
			"<" => 29,
			"+" => 30,
			'ILIKE' => 31,
			"%" => 33,
			"/" => 32,
			"=" => 34,
			'AND' => 407,
			'BETWEEN' => 35,
			"^" => 36,
			"*" => 37,
			'OPERATOR_NAME' => 38,
			">" => 40
		}
	},
	{#State 384
		ACTIONS => {
			"::" => 27
		},
		DEFAULT => -23
	},
	{#State 385
		ACTIONS => {
			"::" => 27,
			"^" => 36
		},
		DEFAULT => -17
	},
	{#State 386
		ACTIONS => {
			"-" => 26,
			"::" => 27,
			"+" => 30,
			"%" => 33,
			"^" => 36,
			"*" => 37,
			"/" => 32
		},
		DEFAULT => -26
	},
	{#State 387
		DEFAULT => -10
	},
	{#State 388
		ACTIONS => {
			"-" => 26,
			"::" => 27,
			"+" => 30,
			'ILIKE' => 31,
			"%" => 33,
			'BETWEEN' => 35,
			"^" => 36,
			"*" => 37,
			'OPERATOR_NAME' => 38,
			'LIKE' => 28,
			"/" => 32
		},
		DEFAULT => -21
	},
	{#State 389
		ACTIONS => {
			"-" => 26,
			'LIKE' => 28,
			"::" => 27,
			"<" => 29,
			"+" => 30,
			'ILIKE' => 31,
			"%" => 33,
			"/" => 32,
			"=" => 34,
			'BETWEEN' => 35,
			"^" => 36,
			"*" => 37,
			'OPERATOR_NAME' => 38,
			'AS' => 408,
			">" => 40
		}
	},
	{#State 390
		ACTIONS => {
			'INPUT' => 48,
			'SYSID' => 47,
			'JOIN' => 46,
			'REPLACE' => 50,
			'SERIALIZABLE' => 49,
			'AT' => 52,
			'INSENSITIVE' => 51,
			'RETURNS' => 53,
			'NCHAR' => 54,
			'INVOKER' => 55,
			'WORK' => 56,
			'PASSING' => 57,
			'MODE' => 58,
			'INTEGER' => 59,
			'INHERITS' => 60,
			'ESCAPE' => 62,
			'VALUE' => 61,
			'DROP' => 63,
			'MONTH' => 64,
			'ENCODING' => 66,
			'TEMPLATE' => 67,
			'DICTIONARY' => 68,
			'SEARCH' => 69,
			'PREPARE' => 70,
			'LOCK' => 71,
			'DEFAULTS' => 72,
			'FULL' => 73,
			'TREAT' => 74,
			'BY' => 75,
			'NO' => 76,
			'MINUTE' => 77,
			'DATA' => 81,
			'DAY' => 80,
			'PARTITION' => 79,
			'RANGE' => 78,
			'REF' => 84,
			'SHARE' => 83,
			'REAL' => 82,
			'OVER' => 85,
			'LARGE' => 87,
			'CURRENT_SCHEMA' => 86,
			'DELETE' => 88,
			'NULLIF' => 89,
			'CONNECTION' => 90,
			'BACKWARD' => 92,
			'CLOSE' => 91,
			'COST' => 93,
			'REPLICA' => 94,
			'PRIVILEGES' => 95,
			'ZONE' => 96,
			'LEAST' => 97,
			'STATISTICS' => 98,
			'ISNULL' => 99,
			'CALLED' => 100,
			'SECURITY' => 101,
			'INCREMENT' => 103,
			'BINARY' => 104,
			'LEVEL' => 105,
			'FORCE' => 106,
			'CONCURRENTLY' => 107,
			'UPDATE' => 109,
			'PRESERVE' => 110,
			'XMLPI' => 111,
			'CHARACTERISTICS' => 112,
			'VALIDATE' => 113,
			'STRICT' => 114,
			'VARYING' => 115,
			'AUTHORIZATION' => 116,
			'REASSIGN' => 117,
			'LABEL' => 119,
			'ROLLBACK' => 118,
			'OBJECT' => 120,
			'TIMESTAMP' => 123,
			'DELIMITERS' => 122,
			'PROCEDURE' => 121,
			'RULE' => 124,
			'INSERT' => 125,
			'HANDLER' => 126,
			'LOCATION' => 128,
			'EXISTS' => 127,
			'IMMUTABLE' => 129,
			'RELEASE' => 131,
			'BOOLEAN' => 130,
			'NULLS' => 132,
			'TYPE' => 133,
			'RESET' => 134,
			'NOWAIT' => 135,
			'PRIOR' => 136,
			'OFF' => 139,
			'BIGINT' => 138,
			'XMLSERIALIZE' => 137,
			'VERBOSE' => 140,
			'SET' => 141,
			'IMMEDIATE' => 143,
			'COMMENT' => 142,
			'DELIMITER' => 144,
			'SETOF' => 145,
			'INNER' => 146,
			'EXTRACT' => 147,
			'REINDEX' => 148,
			'PRECISION' => 149,
			'ACCESS' => 150,
			'OPTION' => 151,
			'COMMENTS' => 152,
			'INOUT' => 153,
			'DEALLOCATE' => 154,
			'CATALOG' => 155,
			'OUT' => 156,
			'RESTART' => 157,
			'MAPPING' => 158,
			'OF' => 159,
			'UNLOGGED' => 160,
			'CONTINUE' => 161,
			'XMLEXISTS' => 162,
			'UNBOUNDED' => 163,
			'READ' => 164,
			'LEFT' => 165,
			'PRECEDING' => 166,
			'STABLE' => 167,
			'DEC' => 168,
			'XMLELEMENT' => 169,
			'XML' => 170,
			'SCROLL' => 171,
			'TEXT' => 172,
			'FUNCTION' => 174,
			'ALSO' => 173,
			'SYSTEM' => 175,
			'AGGREGATE' => 176,
			'FLOAT' => 177,
			'ATTRIBUTE' => 178,
			'ADD' => 180,
			'STRIP' => 181,
			'TABLESPACE' => 182,
			'OVERLAPS' => 183,
			'DEFERRED' => 185,
			'VIEW' => 184,
			'REPEATABLE' => 186,
			'ALWAYS' => 187,
			'CONSTRAINTS' => 188,
			'FORWARD' => 189,
			'NOTHING' => 190,
			'EXCLUDING' => 191,
			'DECIMAL' => 192,
			'CHECKPOINT' => 193,
			'INDEXES' => 194,
			'CACHE' => 195,
			'COMMIT' => 196,
			'DECLARE' => 197,
			'UNLISTEN' => 198,
			'LOAD' => 199,
			'FAMILY' => 200,
			'SMALLINT' => 201,
			'ASSERTION' => 202,
			'ILIKE' => 203,
			'GLOBAL' => 204,
			'EXTERNAL' => 205,
			'SIMILAR' => 206,
			'STDOUT' => 207,
			'REVOKE' => 208,
			'INHERIT' => 209,
			'OUTER' => 210,
			'EXPLAIN' => 211,
			'VARCHAR' => 213,
			'OIDS' => 212,
			'AFTER' => 214,
			'CSV' => 215,
			'DISABLE' => 216,
			'VACUUM' => 217,
			'SCHEMA' => 218,
			'ROW' => 219,
			'LC_COLLATE' => 220,
			'FREEZE' => 221,
			'INDEX' => 222,
			'DEFINER' => 223,
			'XMLPARSE' => 224,
			'OWNED' => 227,
			'INCLUDING' => 226,
			'ADMIN' => 225,
			'CROSS' => 228,
			'INSTEAD' => 229,
			'NATIONAL' => 230,
			'EACH' => 231,
			'TRUSTED' => 232,
			'OWNER' => 234,
			'EXCLUSIVE' => 233,
			'CHARACTER' => 235,
			'STATEMENT' => 237,
			'CASCADE' => 236,
			'ASSIGNMENT' => 238,
			'MATCH' => 240,
			'MOVE' => 243,
			'DOUBLE' => 242,
			'CLASS' => 241,
			'TIME' => 244,
			'NUMERIC' => 245,
			'INLINE' => 247,
			'CURSOR' => 246,
			'EXTENSION' => 249,
			'ENCRYPTED' => 248,
			'CHAIN' => 250,
			'RECURSIVE' => 251,
			'VALIDATOR' => 252,
			'XMLROOT' => 253,
			'UQUOTED_IDENTIFIER' => 254,
			'SUBSTRING' => 255,
			'CASCADED' => 256,
			'DISCARD' => 257,
			'BETWEEN' => 258,
			'ABORT' => 259,
			'XMLATTRIBUTES' => 260,
			'VALUES' => 261,
			'TRUNCATE' => 264,
			'BEFORE' => 263,
			'SHOW' => 267,
			'ABSOLUTE' => 265,
			'IDENTIFIER' => 266,
			'GREATEST' => 268,
			'PLANS' => 269,
			'PARTIAL' => 270,
			'SEQUENCES' => 271,
			'EXCLUDE' => 272,
			'WHITESPACE' => 273,
			'SECOND' => 275,
			'HOUR' => 276,
			'XMLFOREST' => 277,
			'FOLLOWING' => 279,
			'WRAPPER' => 280,
			'LISTEN' => 281,
			'VOLATILE' => 282,
			'LANGUAGE' => 283,
			'YEAR' => 284,
			'TEMP' => 286,
			'STANDALONE' => 285,
			'COPY' => 287,
			'WITHOUT' => 288,
			'OPTIONS' => 289,
			'YES' => 290,
			'PROCEDURAL' => 291,
			'SEQUENCE' => 292,
			'LIKE' => 293,
			'SIMPLE' => 294,
			'QUOTE' => 296,
			'IDENTITY' => 295,
			'POSITION' => 297,
			'EXECUTE' => 299,
			'DOMAIN' => 298,
			'UNKNOWN' => 300,
			'CONTENT' => 301,
			'QUOTED_IDENTIFIER' => 302,
			'SERVER' => 303,
			'RELATIVE' => 304,
			'TRANSACTION' => 305,
			'NAMES' => 307,
			'CONFIGURATION' => 306,
			'RENAME' => 309,
			'PARSER' => 308,
			'ALTER' => 312,
			'CURRENT' => 311,
			'RIGHT' => 310,
			'IMPLICIT' => 313,
			'CLUSTER' => 315,
			'NATURAL' => 316,
			'XMLCONCAT' => 317,
			'PASSWORD' => 318,
			'CHAR' => 319,
			'RECHECK' => 320,
			'NEXT' => 321,
			'PREPARED' => 322,
			'TEMPORARY' => 323,
			'COMMITTED' => 324,
			'GRANTED' => 326,
			'BIT' => 325,
			'BEGIN' => 327,
			'NOTIFY' => 328,
			'HEADER' => 329,
			'INTERVAL' => 330,
			'LC_CTYPE' => 331,
			'NAME' => 332,
			'FUNCTIONS' => 334,
			'ISOLATION' => 333,
			'STORAGE' => 335,
			'STDIN' => 336,
			'RESTRICT' => 337,
			'CYCLE' => 340,
			'UNCOMMITTED' => 341,
			'IS' => 339,
			'TRIM' => 338,
			'MAXVALUE' => 342,
			'START' => 343,
			'DOCUMENT' => 345,
			'IF' => 344,
			'SAVEPOINT' => 346,
			'ROWS' => 347,
			'LAST' => 348,
			'MINVALUE' => 349,
			'KEY' => 350,
			'OPERATOR' => 351,
			'UNTIL' => 352,
			'HOLD' => 353,
			'ACTION' => 354,
			'WRITE' => 355,
			'ROLE' => 356,
			'NOTNULL' => 357,
			'SESSION' => 358,
			'CONVERSION' => 359,
			'DATABASE' => 361,
			'ENUM' => 360,
			'ENABLE' => 362,
			'LOCAL' => 363,
			'NONE' => 364,
			'TABLES' => 366,
			'VALID' => 367,
			'INT' => 365,
			'TRIGGER' => 369,
			'COLLATION' => 370,
			'UNENCRYPTED' => 371,
			'OVERLAY' => 372,
			'FIRST' => 374,
			'COALESCE' => 373,
			'VERSION' => 375
		},
		GOTOS => {
			'time_type' => 179,
			'keywords_reserved_ok_for_functions_or_types' => 108,
			'base_interval_type' => 368,
			'keywords_notreserved_not_ok_for_functions_or_types' => 274,
			'interval_type' => 314,
			'identifier' => 409,
			'timestamp_type' => 262,
			'simple_type' => 410,
			'keywords_notreserved' => 278
		}
	},
	{#State 391
		ACTIONS => {
			'INTEGER_CONSTANT' => 411
		}
	},
	{#State 392
		ACTIONS => {
			'TIME' => 412
		}
	},
	{#State 393
		ACTIONS => {
			'TIME' => 413
		}
	},
	{#State 394
		ACTIONS => {
			'INTEGER_CONSTANT' => 414
		}
	},
	{#State 395
		ACTIONS => {
			'INTEGER_CONSTANT' => 415
		}
	},
	{#State 396
		ACTIONS => {
			'INTEGER_CONSTANT' => 416
		}
	},
	{#State 397
		ACTIONS => {
			'TIME' => 417
		}
	},
	{#State 398
		ACTIONS => {
			'TIME' => 418
		}
	},
	{#State 399
		ACTIONS => {
			'INTEGER_CONSTANT' => 419
		}
	},
	{#State 400
		ACTIONS => {
			'INTEGER_CONSTANT' => 420
		}
	},
	{#State 401
		DEFAULT => -67
	},
	{#State 402
		ACTIONS => {
			'TO' => 421
		},
		DEFAULT => -70
	},
	{#State 403
		ACTIONS => {
			'TO' => 422
		},
		DEFAULT => -68
	},
	{#State 404
		ACTIONS => {
			"(" => 423
		},
		DEFAULT => -71
	},
	{#State 405
		ACTIONS => {
			'TO' => 424
		},
		DEFAULT => -69
	},
	{#State 406
		ACTIONS => {
			'TO' => 425
		},
		DEFAULT => -66
	},
	{#State 407
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'STRING_CONSTANT' => 14,
			'USTRING_CONSTANT' => 12,
			"(" => 15,
			'ESTRING_CONSTANT' => 17,
			'NUMERIC_CONSTANT' => 16,
			'OPERATOR_NAME' => 19,
			'CAST' => 22,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 426,
			'expr_simple' => 10
		}
	},
	{#State 408
		ACTIONS => {
			'INPUT' => 48,
			'SYSID' => 47,
			'JOIN' => 46,
			'REPLACE' => 50,
			'SERIALIZABLE' => 49,
			'AT' => 52,
			'INSENSITIVE' => 51,
			'RETURNS' => 53,
			'NCHAR' => 54,
			'INVOKER' => 55,
			'WORK' => 56,
			'PASSING' => 57,
			'MODE' => 58,
			'INTEGER' => 59,
			'INHERITS' => 60,
			'ESCAPE' => 62,
			'VALUE' => 61,
			'DROP' => 63,
			'MONTH' => 64,
			'ENCODING' => 66,
			'TEMPLATE' => 67,
			'DICTIONARY' => 68,
			'SEARCH' => 69,
			'PREPARE' => 70,
			'LOCK' => 71,
			'DEFAULTS' => 72,
			'FULL' => 73,
			'TREAT' => 74,
			'BY' => 75,
			'NO' => 76,
			'MINUTE' => 77,
			'DATA' => 81,
			'DAY' => 80,
			'PARTITION' => 79,
			'RANGE' => 78,
			'REF' => 84,
			'SHARE' => 83,
			'REAL' => 82,
			'OVER' => 85,
			'LARGE' => 87,
			'CURRENT_SCHEMA' => 86,
			'DELETE' => 88,
			'NULLIF' => 89,
			'CONNECTION' => 90,
			'BACKWARD' => 92,
			'CLOSE' => 91,
			'COST' => 93,
			'REPLICA' => 94,
			'PRIVILEGES' => 95,
			'ZONE' => 96,
			'LEAST' => 97,
			'STATISTICS' => 98,
			'ISNULL' => 99,
			'CALLED' => 100,
			'SECURITY' => 101,
			'INCREMENT' => 103,
			'BINARY' => 104,
			'LEVEL' => 105,
			'FORCE' => 106,
			'CONCURRENTLY' => 107,
			'UPDATE' => 109,
			'PRESERVE' => 110,
			'XMLPI' => 111,
			'CHARACTERISTICS' => 112,
			'VALIDATE' => 113,
			'STRICT' => 114,
			'VARYING' => 115,
			'AUTHORIZATION' => 116,
			'REASSIGN' => 117,
			'LABEL' => 119,
			'ROLLBACK' => 118,
			'OBJECT' => 120,
			'TIMESTAMP' => 123,
			'DELIMITERS' => 122,
			'PROCEDURE' => 121,
			'RULE' => 124,
			'INSERT' => 125,
			'HANDLER' => 126,
			'LOCATION' => 128,
			'EXISTS' => 127,
			'IMMUTABLE' => 129,
			'RELEASE' => 131,
			'BOOLEAN' => 130,
			'NULLS' => 132,
			'TYPE' => 133,
			'RESET' => 134,
			'NOWAIT' => 135,
			'PRIOR' => 136,
			'OFF' => 139,
			'BIGINT' => 138,
			'XMLSERIALIZE' => 137,
			'VERBOSE' => 140,
			'SET' => 141,
			'IMMEDIATE' => 143,
			'COMMENT' => 142,
			'DELIMITER' => 144,
			'SETOF' => 145,
			'INNER' => 146,
			'EXTRACT' => 147,
			'REINDEX' => 148,
			'PRECISION' => 149,
			'ACCESS' => 150,
			'OPTION' => 151,
			'COMMENTS' => 152,
			'INOUT' => 153,
			'DEALLOCATE' => 154,
			'CATALOG' => 155,
			'OUT' => 156,
			'RESTART' => 157,
			'MAPPING' => 158,
			'OF' => 159,
			'UNLOGGED' => 160,
			'CONTINUE' => 161,
			'XMLEXISTS' => 162,
			'UNBOUNDED' => 163,
			'READ' => 164,
			'LEFT' => 165,
			'PRECEDING' => 166,
			'STABLE' => 167,
			'DEC' => 168,
			'XMLELEMENT' => 169,
			'XML' => 170,
			'SCROLL' => 171,
			'TEXT' => 172,
			'FUNCTION' => 174,
			'ALSO' => 173,
			'SYSTEM' => 175,
			'AGGREGATE' => 176,
			'FLOAT' => 177,
			'ATTRIBUTE' => 178,
			'ADD' => 180,
			'STRIP' => 181,
			'TABLESPACE' => 182,
			'OVERLAPS' => 183,
			'DEFERRED' => 185,
			'VIEW' => 184,
			'REPEATABLE' => 186,
			'ALWAYS' => 187,
			'CONSTRAINTS' => 188,
			'FORWARD' => 189,
			'NOTHING' => 190,
			'EXCLUDING' => 191,
			'DECIMAL' => 192,
			'CHECKPOINT' => 193,
			'INDEXES' => 194,
			'CACHE' => 195,
			'COMMIT' => 196,
			'DECLARE' => 197,
			'UNLISTEN' => 198,
			'LOAD' => 199,
			'FAMILY' => 200,
			'SMALLINT' => 201,
			'ASSERTION' => 202,
			'ILIKE' => 203,
			'GLOBAL' => 204,
			'EXTERNAL' => 205,
			'SIMILAR' => 206,
			'STDOUT' => 207,
			'REVOKE' => 208,
			'INHERIT' => 209,
			'OUTER' => 210,
			'EXPLAIN' => 211,
			'VARCHAR' => 213,
			'OIDS' => 212,
			'AFTER' => 214,
			'CSV' => 215,
			'DISABLE' => 216,
			'VACUUM' => 217,
			'SCHEMA' => 218,
			'ROW' => 219,
			'LC_COLLATE' => 220,
			'FREEZE' => 221,
			'INDEX' => 222,
			'DEFINER' => 223,
			'XMLPARSE' => 224,
			'OWNED' => 227,
			'INCLUDING' => 226,
			'ADMIN' => 225,
			'CROSS' => 228,
			'INSTEAD' => 229,
			'NATIONAL' => 230,
			'EACH' => 231,
			'TRUSTED' => 232,
			'OWNER' => 234,
			'EXCLUSIVE' => 233,
			'CHARACTER' => 235,
			'STATEMENT' => 237,
			'CASCADE' => 236,
			'ASSIGNMENT' => 238,
			'MATCH' => 240,
			'MOVE' => 243,
			'DOUBLE' => 242,
			'CLASS' => 241,
			'TIME' => 244,
			'NUMERIC' => 245,
			'INLINE' => 247,
			'CURSOR' => 246,
			'EXTENSION' => 249,
			'ENCRYPTED' => 248,
			'CHAIN' => 250,
			'RECURSIVE' => 251,
			'VALIDATOR' => 252,
			'XMLROOT' => 253,
			'UQUOTED_IDENTIFIER' => 254,
			'SUBSTRING' => 255,
			'CASCADED' => 256,
			'DISCARD' => 257,
			'BETWEEN' => 258,
			'ABORT' => 259,
			'XMLATTRIBUTES' => 260,
			'VALUES' => 261,
			'TRUNCATE' => 264,
			'BEFORE' => 263,
			'SHOW' => 267,
			'ABSOLUTE' => 265,
			'IDENTIFIER' => 266,
			'GREATEST' => 268,
			'PLANS' => 269,
			'PARTIAL' => 270,
			'SEQUENCES' => 271,
			'EXCLUDE' => 272,
			'WHITESPACE' => 273,
			'SECOND' => 275,
			'HOUR' => 276,
			'XMLFOREST' => 277,
			'FOLLOWING' => 279,
			'WRAPPER' => 280,
			'LISTEN' => 281,
			'VOLATILE' => 282,
			'LANGUAGE' => 283,
			'YEAR' => 284,
			'TEMP' => 286,
			'STANDALONE' => 285,
			'COPY' => 287,
			'WITHOUT' => 288,
			'OPTIONS' => 289,
			'YES' => 290,
			'PROCEDURAL' => 291,
			'SEQUENCE' => 292,
			'LIKE' => 293,
			'SIMPLE' => 294,
			'QUOTE' => 296,
			'IDENTITY' => 295,
			'POSITION' => 297,
			'EXECUTE' => 299,
			'DOMAIN' => 298,
			'UNKNOWN' => 300,
			'CONTENT' => 301,
			'QUOTED_IDENTIFIER' => 302,
			'SERVER' => 303,
			'RELATIVE' => 304,
			'TRANSACTION' => 305,
			'NAMES' => 307,
			'CONFIGURATION' => 306,
			'RENAME' => 309,
			'PARSER' => 308,
			'ALTER' => 312,
			'CURRENT' => 311,
			'RIGHT' => 310,
			'IMPLICIT' => 313,
			'CLUSTER' => 315,
			'NATURAL' => 316,
			'XMLCONCAT' => 317,
			'PASSWORD' => 318,
			'CHAR' => 319,
			'RECHECK' => 320,
			'NEXT' => 321,
			'PREPARED' => 322,
			'TEMPORARY' => 323,
			'COMMITTED' => 324,
			'GRANTED' => 326,
			'BIT' => 325,
			'BEGIN' => 327,
			'NOTIFY' => 328,
			'HEADER' => 329,
			'INTERVAL' => 330,
			'LC_CTYPE' => 331,
			'NAME' => 332,
			'FUNCTIONS' => 334,
			'ISOLATION' => 333,
			'STORAGE' => 335,
			'STDIN' => 336,
			'RESTRICT' => 337,
			'CYCLE' => 340,
			'UNCOMMITTED' => 341,
			'IS' => 339,
			'TRIM' => 338,
			'MAXVALUE' => 342,
			'START' => 343,
			'DOCUMENT' => 345,
			'IF' => 344,
			'SAVEPOINT' => 346,
			'ROWS' => 347,
			'LAST' => 348,
			'MINVALUE' => 349,
			'KEY' => 350,
			'OPERATOR' => 351,
			'UNTIL' => 352,
			'HOLD' => 353,
			'ACTION' => 354,
			'WRITE' => 355,
			'ROLE' => 356,
			'NOTNULL' => 357,
			'SESSION' => 358,
			'CONVERSION' => 359,
			'DATABASE' => 361,
			'ENUM' => 360,
			'ENABLE' => 362,
			'LOCAL' => 363,
			'NONE' => 364,
			'TABLES' => 366,
			'VALID' => 367,
			'INT' => 365,
			'TRIGGER' => 369,
			'COLLATION' => 370,
			'UNENCRYPTED' => 371,
			'OVERLAY' => 372,
			'FIRST' => 374,
			'COALESCE' => 373,
			'VERSION' => 375
		},
		GOTOS => {
			'time_type' => 179,
			'keywords_reserved_ok_for_functions_or_types' => 108,
			'base_interval_type' => 368,
			'keywords_notreserved_not_ok_for_functions_or_types' => 274,
			'normal_type' => 427,
			'interval_type' => 314,
			'identifier' => 102,
			'timestamp_type' => 262,
			'simple_type' => 239,
			'keywords_notreserved' => 278
		}
	},
	{#State 409
		DEFAULT => -44
	},
	{#State 410
		DEFAULT => -43
	},
	{#State 411
		ACTIONS => {
			")" => 428
		}
	},
	{#State 412
		ACTIONS => {
			'ZONE' => 429
		}
	},
	{#State 413
		ACTIONS => {
			'ZONE' => 430
		}
	},
	{#State 414
		ACTIONS => {
			"," => 431,
			")" => 432
		}
	},
	{#State 415
		ACTIONS => {
			")" => 433
		}
	},
	{#State 416
		ACTIONS => {
			")" => 434
		}
	},
	{#State 417
		ACTIONS => {
			'ZONE' => 435
		}
	},
	{#State 418
		ACTIONS => {
			'ZONE' => 436
		}
	},
	{#State 419
		ACTIONS => {
			"," => 437,
			")" => 438
		}
	},
	{#State 420
		ACTIONS => {
			")" => 439
		}
	},
	{#State 421
		ACTIONS => {
			'SECOND' => 440
		}
	},
	{#State 422
		ACTIONS => {
			'MINUTE' => 441,
			'HOUR' => 443,
			'SECOND' => 442
		}
	},
	{#State 423
		ACTIONS => {
			'INTEGER_CONSTANT' => 444
		}
	},
	{#State 424
		ACTIONS => {
			'MINUTE' => 445,
			'SECOND' => 446
		}
	},
	{#State 425
		ACTIONS => {
			'MONTH' => 447
		}
	},
	{#State 426
		ACTIONS => {
			"-" => 26,
			"::" => 27,
			"<" => 29,
			"+" => 30,
			'ILIKE' => 31,
			"%" => 33,
			'BETWEEN' => 35,
			"^" => 36,
			"*" => 37,
			'OPERATOR_NAME' => 38,
			'LIKE' => 28,
			"/" => 32,
			"=" => 34,
			">" => 40
		},
		DEFAULT => -12
	},
	{#State 427
		ACTIONS => {
			")" => 448
		}
	},
	{#State 428
		ACTIONS => {
			'WITHOUT' => 450,
			'WITH' => 449
		},
		DEFAULT => -57
	},
	{#State 429
		DEFAULT => -55
	},
	{#State 430
		DEFAULT => -56
	},
	{#State 431
		ACTIONS => {
			'INTEGER_CONSTANT' => 451
		}
	},
	{#State 432
		DEFAULT => -49
	},
	{#State 433
		DEFAULT => -51
	},
	{#State 434
		ACTIONS => {
			'WITHOUT' => 453,
			'WITH' => 452
		},
		DEFAULT => -62
	},
	{#State 435
		DEFAULT => -60
	},
	{#State 436
		DEFAULT => -61
	},
	{#State 437
		ACTIONS => {
			'INTEGER_CONSTANT' => 454
		}
	},
	{#State 438
		DEFAULT => -47
	},
	{#State 439
		ACTIONS => {
			'YEAR' => -84,
			'MINUTE' => -84,
			'DAY' => -84,
			'MONTH' => -84,
			'SECOND' => -84,
			'HOUR' => -84
		},
		DEFAULT => -65
	},
	{#State 440
		ACTIONS => {
			"(" => 455
		},
		DEFAULT => -78
	},
	{#State 441
		DEFAULT => -74
	},
	{#State 442
		ACTIONS => {
			"(" => 456
		},
		DEFAULT => -75
	},
	{#State 443
		DEFAULT => -73
	},
	{#State 444
		ACTIONS => {
			")" => 457
		}
	},
	{#State 445
		DEFAULT => -76
	},
	{#State 446
		ACTIONS => {
			"(" => 458
		},
		DEFAULT => -77
	},
	{#State 447
		DEFAULT => -72
	},
	{#State 448
		DEFAULT => -28
	},
	{#State 449
		ACTIONS => {
			'TIME' => 459
		}
	},
	{#State 450
		ACTIONS => {
			'TIME' => 460
		}
	},
	{#State 451
		ACTIONS => {
			")" => 461
		}
	},
	{#State 452
		ACTIONS => {
			'TIME' => 462
		}
	},
	{#State 453
		ACTIONS => {
			'TIME' => 463
		}
	},
	{#State 454
		ACTIONS => {
			")" => 464
		}
	},
	{#State 455
		ACTIONS => {
			'INTEGER_CONSTANT' => 465
		}
	},
	{#State 456
		ACTIONS => {
			'INTEGER_CONSTANT' => 466
		}
	},
	{#State 457
		DEFAULT => -79
	},
	{#State 458
		ACTIONS => {
			'INTEGER_CONSTANT' => 467
		}
	},
	{#State 459
		ACTIONS => {
			'ZONE' => 468
		}
	},
	{#State 460
		ACTIONS => {
			'ZONE' => 469
		}
	},
	{#State 461
		DEFAULT => -50
	},
	{#State 462
		ACTIONS => {
			'ZONE' => 470
		}
	},
	{#State 463
		ACTIONS => {
			'ZONE' => 471
		}
	},
	{#State 464
		DEFAULT => -48
	},
	{#State 465
		ACTIONS => {
			")" => 472
		}
	},
	{#State 466
		ACTIONS => {
			")" => 473
		}
	},
	{#State 467
		ACTIONS => {
			")" => 474
		}
	},
	{#State 468
		DEFAULT => -58
	},
	{#State 469
		DEFAULT => -59
	},
	{#State 470
		DEFAULT => -63
	},
	{#State 471
		DEFAULT => -64
	},
	{#State 472
		DEFAULT => -82
	},
	{#State 473
		DEFAULT => -80
	},
	{#State 474
		DEFAULT => -81
	}
],
    yyrules  =>
[
	[#Rule _SUPERSTART
		 '$start', 2, undef
#line 4625 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule top_1
		 'top', 1,
sub {
#line 22 "SQL.eyp"
 $_[1] }
#line 4632 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_2
		 'statements', 1,
sub {
#line 25 "SQL.eyp"
 [ $_[1] ] }
#line 4639 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_3
		 'statements', 3,
sub {
#line 26 "SQL.eyp"
 push @{ $_[1] }, $_[3]; $_[1] }
#line 4646 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_4
		 'statements', 2,
sub {
#line 27 "SQL.eyp"
 $_[1] }
#line 4653 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statement_5
		 'statement', 1,
sub {
#line 30 "SQL.eyp"
 $_[1] }
#line 4660 ../lib/Pg/SQL/Parser/SQL.pm
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
#line 4676 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_columns_7
		 'result_columns', 1,
sub {
#line 45 "SQL.eyp"
 [ $_[1] ] }
#line 4683 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_columns_8
		 'result_columns', 3,
sub {
#line 46 "SQL.eyp"
 push @{ $_[1] }, $_[3]; $_[1] }
#line 4690 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_column_9
		 'result_column', 1,
sub {
#line 49 "SQL.eyp"
 [ $_[1], undef ] }
#line 4697 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_column_10
		 'result_column', 3,
sub {
#line 50 "SQL.eyp"
 [ $_[1], $_[3] ] }
#line 4704 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_11
		 'expr', 1,
sub {
#line 53 "SQL.eyp"
 $_[1] }
#line 4711 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_12
		 'expr', 5,
sub {
#line 54 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => [ $_[3], $_[5] ] ) }
#line 4718 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_13
		 'expr', 2,
sub {
#line 55 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1] ) }
#line 4725 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_14
		 'expr', 2,
sub {
#line 56 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[1], 'right' => $_[2] ) }
#line 4732 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_15
		 'expr', 3,
sub {
#line 57 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 4739 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_16
		 'expr', 3,
sub {
#line 58 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 4746 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_17
		 'expr', 3,
sub {
#line 59 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 4753 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_18
		 'expr', 3,
sub {
#line 60 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 4760 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_19
		 'expr', 3,
sub {
#line 61 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 4767 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_20
		 'expr', 3,
sub {
#line 62 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 4774 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_21
		 'expr', 3,
sub {
#line 63 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 4781 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_22
		 'expr', 3,
sub {
#line 64 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 4788 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_23
		 'expr', 3,
sub {
#line 65 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 4795 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_24
		 'expr', 3,
sub {
#line 66 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 4802 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_25
		 'expr', 3,
sub {
#line 67 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 4809 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_26
		 'expr', 3,
sub {
#line 68 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 4816 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_27
		 'expr', 3,
sub {
#line 69 "SQL.eyp"
 $factory->make( 'Cast', 'method' => '::', 'value' => $_[1], 'final_type' => $_[3] ) }
#line 4823 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_28
		 'expr', 6,
sub {
#line 70 "SQL.eyp"
 $factory->make( 'Cast', 'method' => 'sql', 'value' => $_[3], 'final_type' => $_[5] ) }
#line 4830 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_simple_29
		 'expr_simple', 1,
sub {
#line 73 "SQL.eyp"
 $_[1] }
#line 4837 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_simple_30
		 'expr_simple', 3,
sub {
#line 74 "SQL.eyp"
 $_[2] }
#line 4844 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_31
		 'literal_value', 1,
sub {
#line 77 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'STRING_CONSTANT',     'value' => $_[1] ) }
#line 4851 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_32
		 'literal_value', 1,
sub {
#line 78 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'USTRING_CONSTANT',    'value' => $_[1] ) }
#line 4858 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_33
		 'literal_value', 1,
sub {
#line 79 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'ESTRING_CONSTANT',    'value' => $_[1] ) }
#line 4865 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_34
		 'literal_value', 1,
sub {
#line 80 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'BITSTRING_CONSTANT',  'value' => $_[1] ) }
#line 4872 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_35
		 'literal_value', 1,
sub {
#line 81 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'XBITSTRING_CONSTANT', 'value' => $_[1] ) }
#line 4879 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_36
		 'literal_value', 1,
sub {
#line 82 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'NUMERIC_CONSTANT',    'value' => $_[1] ) }
#line 4886 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_37
		 'literal_value', 1,
sub {
#line 83 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'INTEGER_CONSTANT',    'value' => $_[1] ) }
#line 4893 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_38
		 'identifier', 1,
sub {
#line 86 "SQL.eyp"
 $_[1] }
#line 4900 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_39
		 'identifier', 1,
sub {
#line 87 "SQL.eyp"
 $_[1] }
#line 4907 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_40
		 'identifier', 1,
sub {
#line 88 "SQL.eyp"
 $_[1] }
#line 4914 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_41
		 'identifier', 1,
sub {
#line 89 "SQL.eyp"
 $_[1] }
#line 4921 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule normal_type_42
		 'normal_type', 1,
sub {
#line 92 "SQL.eyp"
 $_[1] }
#line 4928 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule normal_type_43
		 'normal_type', 3,
sub {
#line 93 "SQL.eyp"
 $_[3]->schema( $_[1] ); $_[3] }
#line 4935 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_44
		 'simple_type', 1,
sub {
#line 96 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1] ) }
#line 4942 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_45
		 'simple_type', 1,
sub {
#line 97 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1] ) }
#line 4949 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_46
		 'simple_type', 1,
sub {
#line 98 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1] ) }
#line 4956 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_47
		 'simple_type', 4,
sub {
#line 99 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1], 'limits' => [ $_[3] ] ) }
#line 4963 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_48
		 'simple_type', 6,
sub {
#line 100 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1], 'limits' => [ $_[3], $_[5] ] ) }
#line 4970 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_49
		 'simple_type', 4,
sub {
#line 101 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1], 'limits' => [ $_[3] ] ) }
#line 4977 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_50
		 'simple_type', 6,
sub {
#line 102 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1], 'limits' => [ $_[3], $_[5] ] ) }
#line 4984 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_51
		 'simple_type', 4,
sub {
#line 103 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1], 'limits' => [ $_[3] ] ) }
#line 4991 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_52
		 'simple_type', 1,
sub {
#line 104 "SQL.eyp"
 $_[1] }
#line 4998 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_53
		 'simple_type', 1,
sub {
#line 105 "SQL.eyp"
 $_[1] }
#line 5005 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_54
		 'simple_type', 1,
sub {
#line 106 "SQL.eyp"
 $_[1] }
#line 5012 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule timestamp_type_55
		 'timestamp_type', 4,
sub {
#line 109 "SQL.eyp"
 $factory->make( 'Type', 'name' => 'timestamp with time zone' ) }
#line 5019 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule timestamp_type_56
		 'timestamp_type', 4,
sub {
#line 110 "SQL.eyp"
 $factory->make( 'Type', 'name' => 'timestamp without time zone' ) }
#line 5026 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule timestamp_type_57
		 'timestamp_type', 4,
sub {
#line 111 "SQL.eyp"
 $factory->make( 'Type', 'limits' => [ $_[3] ], 'name' => 'timestamp' ) }
#line 5033 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule timestamp_type_58
		 'timestamp_type', 7,
sub {
#line 112 "SQL.eyp"
 $factory->make( 'Type', 'limits' => [ $_[3] ], 'name' => 'timestamp with time zone' ) }
#line 5040 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule timestamp_type_59
		 'timestamp_type', 7,
sub {
#line 113 "SQL.eyp"
 $factory->make( 'Type', 'limits' => [ $_[3] ], 'name' => 'timestamp without time zone' ) }
#line 5047 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule time_type_60
		 'time_type', 4,
sub {
#line 116 "SQL.eyp"
 $factory->make( 'Type', 'name' => 'time with time zone' ) }
#line 5054 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule time_type_61
		 'time_type', 4,
sub {
#line 117 "SQL.eyp"
 $factory->make( 'Type', 'name' => 'time without time zone' ) }
#line 5061 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule time_type_62
		 'time_type', 4,
sub {
#line 118 "SQL.eyp"
 $factory->make( 'Type', 'limits' => [ $_[3] ], 'name' => 'time' ) }
#line 5068 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule time_type_63
		 'time_type', 7,
sub {
#line 119 "SQL.eyp"
 $factory->make( 'Type', 'limits' => [ $_[3] ], 'name' => 'time with time zone' ) }
#line 5075 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule time_type_64
		 'time_type', 7,
sub {
#line 120 "SQL.eyp"
 $factory->make( 'Type', 'limits' => [ $_[3] ], 'name' => 'time without time zone' ) }
#line 5082 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_65
		 'interval_type', 4,
sub {
#line 123 "SQL.eyp"
 $factory->make( 'Type', 'name' => 'interval', 'limits' => [ $_[3] ] ) }
#line 5089 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_66
		 'interval_type', 2,
sub {
#line 124 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' year' ); $_[1] }
#line 5096 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_67
		 'interval_type', 2,
sub {
#line 125 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' month' ); $_[1] }
#line 5103 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_68
		 'interval_type', 2,
sub {
#line 126 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' day' ); $_[1] }
#line 5110 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_69
		 'interval_type', 2,
sub {
#line 127 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' hour' ); $_[1] }
#line 5117 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_70
		 'interval_type', 2,
sub {
#line 128 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' minute' ); $_[1] }
#line 5124 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_71
		 'interval_type', 2,
sub {
#line 129 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' second' ); $_[1] }
#line 5131 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_72
		 'interval_type', 4,
sub {
#line 130 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' year to month' ); $_[1] }
#line 5138 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_73
		 'interval_type', 4,
sub {
#line 131 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' day to hour' ); $_[1] }
#line 5145 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_74
		 'interval_type', 4,
sub {
#line 132 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' day to minute' ); $_[1] }
#line 5152 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_75
		 'interval_type', 4,
sub {
#line 133 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' day to second' ); $_[1] }
#line 5159 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_76
		 'interval_type', 4,
sub {
#line 134 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' hour to minute' ); $_[1] }
#line 5166 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_77
		 'interval_type', 4,
sub {
#line 135 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' hour to second' ); $_[1] }
#line 5173 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_78
		 'interval_type', 4,
sub {
#line 136 "SQL.eyp"
 $_[1]->name( $_[1]->name() . ' minute to second' ); $_[1] }
#line 5180 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_79
		 'interval_type', 5,
sub {
#line 137 "SQL.eyp"

                                                                        my $l = $_[1]->limits() // [];
                                                                        $l->[1] = $_[4];
                                                                        $_[1]->limits( $l );
                                                                        $_[1]->name( $_[1]->name() . ' second' );
                                                                        $_[1]
                                                                    }
#line 5193 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_80
		 'interval_type', 7,
sub {
#line 144 "SQL.eyp"

                                                                        my $l = $_[1]->limits() // [];
                                                                        $l->[1] = $_[6];
                                                                        $_[1]->limits( $l );
                                                                        $_[1]->name( $_[1]->name() . ' day to second' );
                                                                        $_[1]
                                                                    }
#line 5206 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_81
		 'interval_type', 7,
sub {
#line 151 "SQL.eyp"

                                                                        my $l = $_[1]->limits() // [];
                                                                        $l->[1] = $_[6];
                                                                        $_[1]->limits( $l );
                                                                        $_[1]->name( $_[1]->name() . ' hour to second' );
                                                                        $_[1]
                                                                    }
#line 5219 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule interval_type_82
		 'interval_type', 7,
sub {
#line 158 "SQL.eyp"

                                                                        my $l = $_[1]->limits() // [];
                                                                        $l->[1] = $_[6];
                                                                        $_[1]->limits( $l );
                                                                        $_[1]->name( $_[1]->name() . ' minute to second' );
                                                                        $_[1]
                                                                    }
#line 5232 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule base_interval_type_83
		 'base_interval_type', 1,
sub {
#line 167 "SQL.eyp"
 $factory->make( 'Type', 'name' => 'interval' ) }
#line 5239 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule base_interval_type_84
		 'base_interval_type', 4,
sub {
#line 168 "SQL.eyp"
 $factory->make( 'Type', 'name' => 'interval', 'limits' => [ $_[3] ] ) }
#line 5246 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_85
		 'keywords_notreserved', 1, undef
#line 5250 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_86
		 'keywords_notreserved', 1, undef
#line 5254 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_87
		 'keywords_notreserved', 1, undef
#line 5258 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_88
		 'keywords_notreserved', 1, undef
#line 5262 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_89
		 'keywords_notreserved', 1, undef
#line 5266 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_90
		 'keywords_notreserved', 1, undef
#line 5270 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_91
		 'keywords_notreserved', 1, undef
#line 5274 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_92
		 'keywords_notreserved', 1, undef
#line 5278 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_93
		 'keywords_notreserved', 1, undef
#line 5282 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_94
		 'keywords_notreserved', 1, undef
#line 5286 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_95
		 'keywords_notreserved', 1, undef
#line 5290 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_96
		 'keywords_notreserved', 1, undef
#line 5294 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_97
		 'keywords_notreserved', 1, undef
#line 5298 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_98
		 'keywords_notreserved', 1, undef
#line 5302 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_99
		 'keywords_notreserved', 1, undef
#line 5306 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_100
		 'keywords_notreserved', 1, undef
#line 5310 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_101
		 'keywords_notreserved', 1, undef
#line 5314 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_102
		 'keywords_notreserved', 1, undef
#line 5318 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_103
		 'keywords_notreserved', 1, undef
#line 5322 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_104
		 'keywords_notreserved', 1, undef
#line 5326 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_105
		 'keywords_notreserved', 1, undef
#line 5330 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_106
		 'keywords_notreserved', 1, undef
#line 5334 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_107
		 'keywords_notreserved', 1, undef
#line 5338 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_108
		 'keywords_notreserved', 1, undef
#line 5342 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_109
		 'keywords_notreserved', 1, undef
#line 5346 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_110
		 'keywords_notreserved', 1, undef
#line 5350 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_111
		 'keywords_notreserved', 1, undef
#line 5354 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_112
		 'keywords_notreserved', 1, undef
#line 5358 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_113
		 'keywords_notreserved', 1, undef
#line 5362 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_114
		 'keywords_notreserved', 1, undef
#line 5366 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_115
		 'keywords_notreserved', 1, undef
#line 5370 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_116
		 'keywords_notreserved', 1, undef
#line 5374 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_117
		 'keywords_notreserved', 1, undef
#line 5378 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_118
		 'keywords_notreserved', 1, undef
#line 5382 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_119
		 'keywords_notreserved', 1, undef
#line 5386 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_120
		 'keywords_notreserved', 1, undef
#line 5390 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_121
		 'keywords_notreserved', 1, undef
#line 5394 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_122
		 'keywords_notreserved', 1, undef
#line 5398 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_123
		 'keywords_notreserved', 1, undef
#line 5402 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_124
		 'keywords_notreserved', 1, undef
#line 5406 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_125
		 'keywords_notreserved', 1, undef
#line 5410 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_126
		 'keywords_notreserved', 1, undef
#line 5414 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_127
		 'keywords_notreserved', 1, undef
#line 5418 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_128
		 'keywords_notreserved', 1, undef
#line 5422 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_129
		 'keywords_notreserved', 1, undef
#line 5426 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_130
		 'keywords_notreserved', 1, undef
#line 5430 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_131
		 'keywords_notreserved', 1, undef
#line 5434 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_132
		 'keywords_notreserved', 1, undef
#line 5438 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_133
		 'keywords_notreserved', 1, undef
#line 5442 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_134
		 'keywords_notreserved', 1, undef
#line 5446 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_135
		 'keywords_notreserved', 1, undef
#line 5450 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_136
		 'keywords_notreserved', 1, undef
#line 5454 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_137
		 'keywords_notreserved', 1, undef
#line 5458 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_138
		 'keywords_notreserved', 1, undef
#line 5462 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_139
		 'keywords_notreserved', 1, undef
#line 5466 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_140
		 'keywords_notreserved', 1, undef
#line 5470 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_141
		 'keywords_notreserved', 1, undef
#line 5474 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_142
		 'keywords_notreserved', 1, undef
#line 5478 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_143
		 'keywords_notreserved', 1, undef
#line 5482 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_144
		 'keywords_notreserved', 1, undef
#line 5486 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_145
		 'keywords_notreserved', 1, undef
#line 5490 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_146
		 'keywords_notreserved', 1, undef
#line 5494 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_147
		 'keywords_notreserved', 1, undef
#line 5498 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_148
		 'keywords_notreserved', 1, undef
#line 5502 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_149
		 'keywords_notreserved', 1, undef
#line 5506 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_150
		 'keywords_notreserved', 1, undef
#line 5510 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_151
		 'keywords_notreserved', 1, undef
#line 5514 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_152
		 'keywords_notreserved', 1, undef
#line 5518 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_153
		 'keywords_notreserved', 1, undef
#line 5522 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_154
		 'keywords_notreserved', 1, undef
#line 5526 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_155
		 'keywords_notreserved', 1, undef
#line 5530 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_156
		 'keywords_notreserved', 1, undef
#line 5534 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_157
		 'keywords_notreserved', 1, undef
#line 5538 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_158
		 'keywords_notreserved', 1, undef
#line 5542 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_159
		 'keywords_notreserved', 1, undef
#line 5546 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_160
		 'keywords_notreserved', 1, undef
#line 5550 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_161
		 'keywords_notreserved', 1, undef
#line 5554 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_162
		 'keywords_notreserved', 1, undef
#line 5558 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_163
		 'keywords_notreserved', 1, undef
#line 5562 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_164
		 'keywords_notreserved', 1, undef
#line 5566 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_165
		 'keywords_notreserved', 1, undef
#line 5570 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_166
		 'keywords_notreserved', 1, undef
#line 5574 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_167
		 'keywords_notreserved', 1, undef
#line 5578 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_168
		 'keywords_notreserved', 1, undef
#line 5582 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_169
		 'keywords_notreserved', 1, undef
#line 5586 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_170
		 'keywords_notreserved', 1, undef
#line 5590 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_171
		 'keywords_notreserved', 1, undef
#line 5594 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_172
		 'keywords_notreserved', 1, undef
#line 5598 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_173
		 'keywords_notreserved', 1, undef
#line 5602 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_174
		 'keywords_notreserved', 1, undef
#line 5606 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_175
		 'keywords_notreserved', 1, undef
#line 5610 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_176
		 'keywords_notreserved', 1, undef
#line 5614 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_177
		 'keywords_notreserved', 1, undef
#line 5618 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_178
		 'keywords_notreserved', 1, undef
#line 5622 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_179
		 'keywords_notreserved', 1, undef
#line 5626 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_180
		 'keywords_notreserved', 1, undef
#line 5630 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_181
		 'keywords_notreserved', 1, undef
#line 5634 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_182
		 'keywords_notreserved', 1, undef
#line 5638 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_183
		 'keywords_notreserved', 1, undef
#line 5642 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_184
		 'keywords_notreserved', 1, undef
#line 5646 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_185
		 'keywords_notreserved', 1, undef
#line 5650 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_186
		 'keywords_notreserved', 1, undef
#line 5654 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_187
		 'keywords_notreserved', 1, undef
#line 5658 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_188
		 'keywords_notreserved', 1, undef
#line 5662 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_189
		 'keywords_notreserved', 1, undef
#line 5666 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_190
		 'keywords_notreserved', 1, undef
#line 5670 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_191
		 'keywords_notreserved', 1, undef
#line 5674 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_192
		 'keywords_notreserved', 1, undef
#line 5678 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_193
		 'keywords_notreserved', 1, undef
#line 5682 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_194
		 'keywords_notreserved', 1, undef
#line 5686 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_195
		 'keywords_notreserved', 1, undef
#line 5690 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_196
		 'keywords_notreserved', 1, undef
#line 5694 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_197
		 'keywords_notreserved', 1, undef
#line 5698 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_198
		 'keywords_notreserved', 1, undef
#line 5702 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_199
		 'keywords_notreserved', 1, undef
#line 5706 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_200
		 'keywords_notreserved', 1, undef
#line 5710 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_201
		 'keywords_notreserved', 1, undef
#line 5714 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_202
		 'keywords_notreserved', 1, undef
#line 5718 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_203
		 'keywords_notreserved', 1, undef
#line 5722 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_204
		 'keywords_notreserved', 1, undef
#line 5726 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_205
		 'keywords_notreserved', 1, undef
#line 5730 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_206
		 'keywords_notreserved', 1, undef
#line 5734 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_207
		 'keywords_notreserved', 1, undef
#line 5738 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_208
		 'keywords_notreserved', 1, undef
#line 5742 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_209
		 'keywords_notreserved', 1, undef
#line 5746 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_210
		 'keywords_notreserved', 1, undef
#line 5750 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_211
		 'keywords_notreserved', 1, undef
#line 5754 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_212
		 'keywords_notreserved', 1, undef
#line 5758 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_213
		 'keywords_notreserved', 1, undef
#line 5762 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_214
		 'keywords_notreserved', 1, undef
#line 5766 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_215
		 'keywords_notreserved', 1, undef
#line 5770 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_216
		 'keywords_notreserved', 1, undef
#line 5774 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_217
		 'keywords_notreserved', 1, undef
#line 5778 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_218
		 'keywords_notreserved', 1, undef
#line 5782 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_219
		 'keywords_notreserved', 1, undef
#line 5786 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_220
		 'keywords_notreserved', 1, undef
#line 5790 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_221
		 'keywords_notreserved', 1, undef
#line 5794 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_222
		 'keywords_notreserved', 1, undef
#line 5798 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_223
		 'keywords_notreserved', 1, undef
#line 5802 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_224
		 'keywords_notreserved', 1, undef
#line 5806 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_225
		 'keywords_notreserved', 1, undef
#line 5810 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_226
		 'keywords_notreserved', 1, undef
#line 5814 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_227
		 'keywords_notreserved', 1, undef
#line 5818 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_228
		 'keywords_notreserved', 1, undef
#line 5822 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_229
		 'keywords_notreserved', 1, undef
#line 5826 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_230
		 'keywords_notreserved', 1, undef
#line 5830 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_231
		 'keywords_notreserved', 1, undef
#line 5834 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_232
		 'keywords_notreserved', 1, undef
#line 5838 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_233
		 'keywords_notreserved', 1, undef
#line 5842 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_234
		 'keywords_notreserved', 1, undef
#line 5846 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_235
		 'keywords_notreserved', 1, undef
#line 5850 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_236
		 'keywords_notreserved', 1, undef
#line 5854 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_237
		 'keywords_notreserved', 1, undef
#line 5858 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_238
		 'keywords_notreserved', 1, undef
#line 5862 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_239
		 'keywords_notreserved', 1, undef
#line 5866 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_240
		 'keywords_notreserved', 1, undef
#line 5870 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_241
		 'keywords_notreserved', 1, undef
#line 5874 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_242
		 'keywords_notreserved', 1, undef
#line 5878 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_243
		 'keywords_notreserved', 1, undef
#line 5882 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_244
		 'keywords_notreserved', 1, undef
#line 5886 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_245
		 'keywords_notreserved', 1, undef
#line 5890 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_246
		 'keywords_notreserved', 1, undef
#line 5894 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_247
		 'keywords_notreserved', 1, undef
#line 5898 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_248
		 'keywords_notreserved', 1, undef
#line 5902 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_249
		 'keywords_notreserved', 1, undef
#line 5906 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_250
		 'keywords_notreserved', 1, undef
#line 5910 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_251
		 'keywords_notreserved', 1, undef
#line 5914 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_252
		 'keywords_notreserved', 1, undef
#line 5918 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_253
		 'keywords_notreserved', 1, undef
#line 5922 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_254
		 'keywords_notreserved', 1, undef
#line 5926 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_255
		 'keywords_notreserved', 1, undef
#line 5930 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_256
		 'keywords_notreserved', 1, undef
#line 5934 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_257
		 'keywords_notreserved', 1, undef
#line 5938 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_258
		 'keywords_notreserved', 1, undef
#line 5942 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_259
		 'keywords_notreserved', 1, undef
#line 5946 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_260
		 'keywords_notreserved', 1, undef
#line 5950 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_261
		 'keywords_notreserved', 1, undef
#line 5954 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_262
		 'keywords_notreserved', 1, undef
#line 5958 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_263
		 'keywords_notreserved', 1, undef
#line 5962 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_264
		 'keywords_notreserved', 1, undef
#line 5966 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_265
		 'keywords_notreserved', 1, undef
#line 5970 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_266
		 'keywords_notreserved', 1, undef
#line 5974 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_267
		 'keywords_notreserved', 1, undef
#line 5978 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_268
		 'keywords_notreserved', 1, undef
#line 5982 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_269
		 'keywords_notreserved', 1, undef
#line 5986 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_270
		 'keywords_notreserved', 1, undef
#line 5990 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_271
		 'keywords_notreserved', 1, undef
#line 5994 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_272
		 'keywords_notreserved', 1, undef
#line 5998 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_273
		 'keywords_notreserved', 1, undef
#line 6002 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_274
		 'keywords_notreserved', 1, undef
#line 6006 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_275
		 'keywords_notreserved', 1, undef
#line 6010 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_276
		 'keywords_notreserved', 1, undef
#line 6014 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_277
		 'keywords_notreserved', 1, undef
#line 6018 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_278
		 'keywords_notreserved', 1, undef
#line 6022 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_279
		 'keywords_notreserved', 1, undef
#line 6026 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_280
		 'keywords_notreserved', 1, undef
#line 6030 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_281
		 'keywords_notreserved', 1, undef
#line 6034 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_282
		 'keywords_notreserved', 1, undef
#line 6038 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_283
		 'keywords_notreserved', 1, undef
#line 6042 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_284
		 'keywords_notreserved', 1, undef
#line 6046 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_285
		 'keywords_notreserved', 1, undef
#line 6050 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_286
		 'keywords_notreserved', 1, undef
#line 6054 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_287
		 'keywords_notreserved', 1, undef
#line 6058 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_288
		 'keywords_notreserved', 1, undef
#line 6062 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_289
		 'keywords_notreserved', 1, undef
#line 6066 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_290
		 'keywords_notreserved', 1, undef
#line 6070 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_291
		 'keywords_notreserved', 1, undef
#line 6074 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_292
		 'keywords_notreserved', 1, undef
#line 6078 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_293
		 'keywords_notreserved', 1, undef
#line 6082 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_294
		 'keywords_notreserved', 1, undef
#line 6086 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_295
		 'keywords_notreserved', 1, undef
#line 6090 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_296
		 'keywords_notreserved', 1, undef
#line 6094 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_297
		 'keywords_notreserved', 1, undef
#line 6098 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_298
		 'keywords_notreserved', 1, undef
#line 6102 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_299
		 'keywords_notreserved', 1, undef
#line 6106 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_300
		 'keywords_notreserved', 1, undef
#line 6110 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_301
		 'keywords_notreserved', 1, undef
#line 6114 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_302
		 'keywords_notreserved', 1, undef
#line 6118 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_303
		 'keywords_notreserved', 1, undef
#line 6122 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_304
		 'keywords_notreserved', 1, undef
#line 6126 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_305
		 'keywords_notreserved', 1, undef
#line 6130 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_306
		 'keywords_notreserved', 1, undef
#line 6134 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_307
		 'keywords_notreserved', 1, undef
#line 6138 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_308
		 'keywords_notreserved', 1, undef
#line 6142 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_309
		 'keywords_notreserved', 1, undef
#line 6146 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_310
		 'keywords_notreserved', 1, undef
#line 6150 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_311
		 'keywords_notreserved', 1, undef
#line 6154 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_312
		 'keywords_notreserved', 1, undef
#line 6158 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_313
		 'keywords_notreserved', 1, undef
#line 6162 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_314
		 'keywords_notreserved', 1, undef
#line 6166 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_315
		 'keywords_notreserved', 1, undef
#line 6170 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_316
		 'keywords_notreserved', 1, undef
#line 6174 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_317
		 'keywords_notreserved', 1, undef
#line 6178 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_318
		 'keywords_notreserved', 1, undef
#line 6182 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_319
		 'keywords_notreserved', 1, undef
#line 6186 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_320
		 'keywords_notreserved', 1, undef
#line 6190 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_321
		 'keywords_notreserved', 1, undef
#line 6194 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_322
		 'keywords_notreserved', 1, undef
#line 6198 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_323
		 'keywords_notreserved', 1, undef
#line 6202 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_324
		 'keywords_notreserved', 1, undef
#line 6206 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_325
		 'keywords_notreserved', 1, undef
#line 6210 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_326
		 'keywords_notreserved', 1, undef
#line 6214 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_327
		 'keywords_notreserved', 1, undef
#line 6218 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_328
		 'keywords_notreserved', 1, undef
#line 6222 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_329
		 'keywords_notreserved', 1, undef
#line 6226 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_330
		 'keywords_notreserved', 1, undef
#line 6230 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_331
		 'keywords_notreserved', 1, undef
#line 6234 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_332
		 'keywords_notreserved', 1, undef
#line 6238 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_333
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 6242 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_334
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 6246 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_335
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 6250 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_336
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 6254 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_337
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 6258 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_338
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 6262 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_339
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 6266 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_340
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 6270 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_341
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 6274 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_342
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 6278 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_343
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 6282 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_344
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 6286 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_345
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 6290 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_346
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 6294 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_347
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 6298 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_348
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 6302 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_349
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 6306 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_350
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 6310 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_351
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 6314 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_352
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 6318 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_353
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 6322 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_354
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 6326 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_355
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6330 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_356
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6334 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_357
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6338 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_358
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6342 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_359
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6346 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_360
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6350 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_361
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6354 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_362
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6358 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_363
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6362 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_364
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6366 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_365
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6370 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_366
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6374 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_367
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6378 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_368
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6382 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_369
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6386 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_370
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6390 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_371
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6394 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_372
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6398 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_373
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6402 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_374
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6406 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_375
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6410 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_376
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6414 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_377
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6418 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_378
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6422 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_379
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6426 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_380
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6430 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_381
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6434 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_382
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6438 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_383
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6442 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_384
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6446 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_385
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6450 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_386
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6454 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_387
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6458 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_388
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6462 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_389
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6466 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_390
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6470 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_391
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6474 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_392
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6478 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_393
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6482 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_394
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6486 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_395
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6490 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_396
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6494 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_397
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6498 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_398
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6502 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_399
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6506 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_400
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6510 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_401
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 6514 ../lib/Pg/SQL/Parser/SQL.pm
	]
],
#line 6517 ../lib/Pg/SQL/Parser/SQL.pm
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
         'expr_27', 
         'expr_28', 
         'expr_simple_29', 
         'expr_simple_30', 
         'literal_value_31', 
         'literal_value_32', 
         'literal_value_33', 
         'literal_value_34', 
         'literal_value_35', 
         'literal_value_36', 
         'literal_value_37', 
         'identifier_38', 
         'identifier_39', 
         'identifier_40', 
         'identifier_41', 
         'normal_type_42', 
         'normal_type_43', 
         'simple_type_44', 
         'simple_type_45', 
         'simple_type_46', 
         'simple_type_47', 
         'simple_type_48', 
         'simple_type_49', 
         'simple_type_50', 
         'simple_type_51', 
         'simple_type_52', 
         'simple_type_53', 
         'simple_type_54', 
         'timestamp_type_55', 
         'timestamp_type_56', 
         'timestamp_type_57', 
         'timestamp_type_58', 
         'timestamp_type_59', 
         'time_type_60', 
         'time_type_61', 
         'time_type_62', 
         'time_type_63', 
         'time_type_64', 
         'interval_type_65', 
         'interval_type_66', 
         'interval_type_67', 
         'interval_type_68', 
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
         'base_interval_type_83', 
         'base_interval_type_84', 
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
         'keywords_reserved_ok_for_functions_or_types_333', 
         'keywords_reserved_ok_for_functions_or_types_334', 
         'keywords_reserved_ok_for_functions_or_types_335', 
         'keywords_reserved_ok_for_functions_or_types_336', 
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
         'keywords_notreserved_not_ok_for_functions_or_types_355', 
         'keywords_notreserved_not_ok_for_functions_or_types_356', 
         'keywords_notreserved_not_ok_for_functions_or_types_357', 
         'keywords_notreserved_not_ok_for_functions_or_types_358', 
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
         'keywords_notreserved_not_ok_for_functions_or_types_401', );
  $self;
}

#line 494 "SQL.eyp"


# vim: set ft=lex:


=for None

=cut


#line 6947 ../lib/Pg/SQL/Parser/SQL.pm



1;
