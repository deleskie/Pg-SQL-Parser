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

      m{\G(XBITSTRING_CONSTANT|BITSTRING_CONSTANT|UQUOTED_IDENTIFIER|QUOTED_IDENTIFIER|USTRING_CONSTANT|ESTRING_CONSTANT|NUMERIC_CONSTANT|INTEGER_CONSTANT|STRING_CONSTANT|CHARACTERISTICS|CURRENT_SCHEMA|AUTHORIZATION|OPERATOR_NAME|XMLATTRIBUTES|CONFIGURATION|SERIALIZABLE|CONCURRENTLY|XMLSERIALIZE|INSENSITIVE|CONSTRAINTS|TRANSACTION|UNCOMMITTED|UNENCRYPTED|DICTIONARY|CONNECTION|PRIVILEGES|STATISTICS|DELIMITERS|DEALLOCATE|XMLELEMENT|TABLESPACE|REPEATABLE|CHECKPOINT|LC_COLLATE|ASSIGNMENT|IDENTIFIER|WHITESPACE|STANDALONE|PROCEDURAL|CONVERSION|PARTITION|INCREMENT|PROCEDURE|TIMESTAMP|IMMUTABLE|IMMEDIATE|DELIMITER|PRECISION|UNBOUNDED|XMLEXISTS|PRECEDING|AGGREGATE|ATTRIBUTE|EXCLUDING|ASSERTION|INCLUDING|EXCLUSIVE|CHARACTER|STATEMENT|EXTENSION|ENCRYPTED|RECURSIVE|VALIDATOR|SUBSTRING|SEQUENCES|XMLFOREST|FOLLOWING|XMLCONCAT|TEMPORARY|COMMITTED|ISOLATION|FUNCTIONS|SAVEPOINT|COLLATION|INHERITS|ENCODING|TEMPLATE|DEFAULTS|BACKWARD|SECURITY|PRESERVE|VALIDATE|REASSIGN|ROLLBACK|LOCATION|COMMENTS|CONTINUE|UNLOGGED|FUNCTION|OVERLAPS|DEFERRED|UNLISTEN|SMALLINT|EXTERNAL|XMLPARSE|NATIONAL|CASCADED|TRUNCATE|ABSOLUTE|GREATEST|VOLATILE|LANGUAGE|SEQUENCE|IDENTITY|POSITION|RELATIVE|IMPLICIT|PASSWORD|PREPARED|INTERVAL|LC_CTYPE|RESTRICT|MAXVALUE|DOCUMENT|MINVALUE|OPERATOR|DATABASE|COALESCE|REPLACE|RETURNS|INVOKER|PASSING|INTEGER|PREPARE|REPLICA|VARYING|HANDLER|RELEASE|BOOLEAN|VERBOSE|COMMENT|REINDEX|EXTRACT|CATALOG|MAPPING|RESTART|FORWARD|NOTHING|DECIMAL|INDEXES|DECLARE|SIMILAR|INHERIT|EXPLAIN|VARCHAR|DISABLE|DEFINER|INSTEAD|TRUSTED|CASCADE|NUMERIC|XMLROOT|DISCARD|BETWEEN|PARTIAL|EXCLUDE|WRAPPER|WITHOUT|OPTIONS|EXECUTE|UNKNOWN|CONTENT|CURRENT|CLUSTER|NATURAL|RECHECK|GRANTED|STORAGE|NOTNULL|SESSION|TRIGGER|OVERLAY|VERSION|ESCAPE|SEARCH|MINUTE|DELETE|NULLIF|CALLED|ISNULL|BINARY|UPDATE|STRICT|OBJECT|INSERT|EXISTS|NOWAIT|BIGINT|ACCESS|OPTION|STABLE|SCROLL|SYSTEM|ALWAYS|COMMIT|FAMILY|GLOBAL|STDOUT|REVOKE|VACUUM|SCHEMA|FREEZE|DOUBLE|INLINE|CURSOR|VALUES|BEFORE|SECOND|SELECT|LISTEN|SIMPLE|DOMAIN|SERVER|RENAME|PARSER|NOTIFY|HEADER|ACTION|ENABLE|TABLES|INPUT|SYSID|NCHAR|VALUE|MONTH|TREAT|RANGE|SHARE|LARGE|CLOSE|LEAST|FORCE|LEVEL|XMLPI|LABEL|NULLS|RESET|PRIOR|INNER|SETOF|INOUT|FLOAT|STRIP|CACHE|ILIKE|OUTER|AFTER|INDEX|OWNED|ADMIN|CROSS|OWNER|MATCH|CLASS|CHAIN|ABORT|PLANS|QUOTE|NAMES|ALTER|RIGHT|BEGIN|STDIN|CYCLE|START|UNTIL|WRITE|LOCAL|VALID|FIRST|JOIN|WORK|MODE|DROP|LOCK|FULL|DATA|REAL|OVER|COST|ZONE|RULE|TYPE|READ|LEFT|TEXT|ALSO|VIEW|LOAD|OIDS|EACH|MOVE|TIME|SHOW|HOUR|TEMP|YEAR|COPY|LIKE|CHAR|NEXT|NAME|TRIM|ROWS|LAST|HOLD|ROLE|ENUM|NONE|DAY|REF|OFF|SET|OUT|DEC|XML|ADD|CSV|ROW|AND|YES|BIT|KEY|INT|AT|BY|NO|\:\:|OF|AS|IS|IF|\+|\(|\^|\/|\,|\-|\<|\)|\;|\=|\%|\*|\.|\>)}gc and return ($1, $1);



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
  [ 'expr_simple_28' => 'expr_simple', [ 'literal_value' ], 0 ],
  [ 'expr_simple_29' => 'expr_simple', [ '(', 'expr', ')' ], 0 ],
  [ 'literal_value_30' => 'literal_value', [ 'STRING_CONSTANT' ], 0 ],
  [ 'literal_value_31' => 'literal_value', [ 'USTRING_CONSTANT' ], 0 ],
  [ 'literal_value_32' => 'literal_value', [ 'ESTRING_CONSTANT' ], 0 ],
  [ 'literal_value_33' => 'literal_value', [ 'BITSTRING_CONSTANT' ], 0 ],
  [ 'literal_value_34' => 'literal_value', [ 'XBITSTRING_CONSTANT' ], 0 ],
  [ 'literal_value_35' => 'literal_value', [ 'NUMERIC_CONSTANT' ], 0 ],
  [ 'literal_value_36' => 'literal_value', [ 'INTEGER_CONSTANT' ], 0 ],
  [ 'identifier_37' => 'identifier', [ 'QUOTED_IDENTIFIER' ], 0 ],
  [ 'identifier_38' => 'identifier', [ 'UQUOTED_IDENTIFIER' ], 0 ],
  [ 'identifier_39' => 'identifier', [ 'IDENTIFIER' ], 0 ],
  [ 'identifier_40' => 'identifier', [ 'keywords_notreserved' ], 0 ],
  [ 'normal_type_41' => 'normal_type', [ 'simple_type' ], 0 ],
  [ 'normal_type_42' => 'normal_type', [ 'identifier', '.', 'simple_type' ], 0 ],
  [ 'simple_type_43' => 'simple_type', [ 'identifier' ], 0 ],
  [ 'simple_type_44' => 'simple_type', [ 'keywords_reserved_ok_for_functions_or_types' ], 0 ],
  [ 'simple_type_45' => 'simple_type', [ 'keywords_notreserved_not_ok_for_functions_or_types' ], 0 ],
  [ 'simple_type_46' => 'simple_type', [ 'NUMERIC', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'simple_type_47' => 'simple_type', [ 'NUMERIC', '(', 'INTEGER_CONSTANT', ',', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'simple_type_48' => 'simple_type', [ 'DECIMAL', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'simple_type_49' => 'simple_type', [ 'DECIMAL', '(', 'INTEGER_CONSTANT', ',', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'simple_type_50' => 'simple_type', [ 'VARCHAR', '(', 'INTEGER_CONSTANT', ')' ], 0 ],
  [ 'keywords_notreserved_51' => 'keywords_notreserved', [ 'ABORT' ], 0 ],
  [ 'keywords_notreserved_52' => 'keywords_notreserved', [ 'ABSOLUTE' ], 0 ],
  [ 'keywords_notreserved_53' => 'keywords_notreserved', [ 'ACCESS' ], 0 ],
  [ 'keywords_notreserved_54' => 'keywords_notreserved', [ 'ACTION' ], 0 ],
  [ 'keywords_notreserved_55' => 'keywords_notreserved', [ 'ADD' ], 0 ],
  [ 'keywords_notreserved_56' => 'keywords_notreserved', [ 'ADMIN' ], 0 ],
  [ 'keywords_notreserved_57' => 'keywords_notreserved', [ 'AFTER' ], 0 ],
  [ 'keywords_notreserved_58' => 'keywords_notreserved', [ 'AGGREGATE' ], 0 ],
  [ 'keywords_notreserved_59' => 'keywords_notreserved', [ 'ALSO' ], 0 ],
  [ 'keywords_notreserved_60' => 'keywords_notreserved', [ 'ALTER' ], 0 ],
  [ 'keywords_notreserved_61' => 'keywords_notreserved', [ 'ALWAYS' ], 0 ],
  [ 'keywords_notreserved_62' => 'keywords_notreserved', [ 'ASSERTION' ], 0 ],
  [ 'keywords_notreserved_63' => 'keywords_notreserved', [ 'ASSIGNMENT' ], 0 ],
  [ 'keywords_notreserved_64' => 'keywords_notreserved', [ 'AT' ], 0 ],
  [ 'keywords_notreserved_65' => 'keywords_notreserved', [ 'ATTRIBUTE' ], 0 ],
  [ 'keywords_notreserved_66' => 'keywords_notreserved', [ 'BACKWARD' ], 0 ],
  [ 'keywords_notreserved_67' => 'keywords_notreserved', [ 'BEFORE' ], 0 ],
  [ 'keywords_notreserved_68' => 'keywords_notreserved', [ 'BEGIN' ], 0 ],
  [ 'keywords_notreserved_69' => 'keywords_notreserved', [ 'BY' ], 0 ],
  [ 'keywords_notreserved_70' => 'keywords_notreserved', [ 'CACHE' ], 0 ],
  [ 'keywords_notreserved_71' => 'keywords_notreserved', [ 'CALLED' ], 0 ],
  [ 'keywords_notreserved_72' => 'keywords_notreserved', [ 'CASCADE' ], 0 ],
  [ 'keywords_notreserved_73' => 'keywords_notreserved', [ 'CASCADED' ], 0 ],
  [ 'keywords_notreserved_74' => 'keywords_notreserved', [ 'CATALOG' ], 0 ],
  [ 'keywords_notreserved_75' => 'keywords_notreserved', [ 'CHAIN' ], 0 ],
  [ 'keywords_notreserved_76' => 'keywords_notreserved', [ 'CHARACTERISTICS' ], 0 ],
  [ 'keywords_notreserved_77' => 'keywords_notreserved', [ 'CHECKPOINT' ], 0 ],
  [ 'keywords_notreserved_78' => 'keywords_notreserved', [ 'CLASS' ], 0 ],
  [ 'keywords_notreserved_79' => 'keywords_notreserved', [ 'CLOSE' ], 0 ],
  [ 'keywords_notreserved_80' => 'keywords_notreserved', [ 'CLUSTER' ], 0 ],
  [ 'keywords_notreserved_81' => 'keywords_notreserved', [ 'COLLATION' ], 0 ],
  [ 'keywords_notreserved_82' => 'keywords_notreserved', [ 'COMMENT' ], 0 ],
  [ 'keywords_notreserved_83' => 'keywords_notreserved', [ 'COMMENTS' ], 0 ],
  [ 'keywords_notreserved_84' => 'keywords_notreserved', [ 'COMMIT' ], 0 ],
  [ 'keywords_notreserved_85' => 'keywords_notreserved', [ 'COMMITTED' ], 0 ],
  [ 'keywords_notreserved_86' => 'keywords_notreserved', [ 'CONFIGURATION' ], 0 ],
  [ 'keywords_notreserved_87' => 'keywords_notreserved', [ 'CONNECTION' ], 0 ],
  [ 'keywords_notreserved_88' => 'keywords_notreserved', [ 'CONSTRAINTS' ], 0 ],
  [ 'keywords_notreserved_89' => 'keywords_notreserved', [ 'CONTENT' ], 0 ],
  [ 'keywords_notreserved_90' => 'keywords_notreserved', [ 'CONTINUE' ], 0 ],
  [ 'keywords_notreserved_91' => 'keywords_notreserved', [ 'CONVERSION' ], 0 ],
  [ 'keywords_notreserved_92' => 'keywords_notreserved', [ 'COPY' ], 0 ],
  [ 'keywords_notreserved_93' => 'keywords_notreserved', [ 'COST' ], 0 ],
  [ 'keywords_notreserved_94' => 'keywords_notreserved', [ 'CSV' ], 0 ],
  [ 'keywords_notreserved_95' => 'keywords_notreserved', [ 'CURRENT' ], 0 ],
  [ 'keywords_notreserved_96' => 'keywords_notreserved', [ 'CURSOR' ], 0 ],
  [ 'keywords_notreserved_97' => 'keywords_notreserved', [ 'CYCLE' ], 0 ],
  [ 'keywords_notreserved_98' => 'keywords_notreserved', [ 'DATA' ], 0 ],
  [ 'keywords_notreserved_99' => 'keywords_notreserved', [ 'DATABASE' ], 0 ],
  [ 'keywords_notreserved_100' => 'keywords_notreserved', [ 'DAY' ], 0 ],
  [ 'keywords_notreserved_101' => 'keywords_notreserved', [ 'DEALLOCATE' ], 0 ],
  [ 'keywords_notreserved_102' => 'keywords_notreserved', [ 'DECLARE' ], 0 ],
  [ 'keywords_notreserved_103' => 'keywords_notreserved', [ 'DEFAULTS' ], 0 ],
  [ 'keywords_notreserved_104' => 'keywords_notreserved', [ 'DEFERRED' ], 0 ],
  [ 'keywords_notreserved_105' => 'keywords_notreserved', [ 'DEFINER' ], 0 ],
  [ 'keywords_notreserved_106' => 'keywords_notreserved', [ 'DELETE' ], 0 ],
  [ 'keywords_notreserved_107' => 'keywords_notreserved', [ 'DELIMITER' ], 0 ],
  [ 'keywords_notreserved_108' => 'keywords_notreserved', [ 'DELIMITERS' ], 0 ],
  [ 'keywords_notreserved_109' => 'keywords_notreserved', [ 'DICTIONARY' ], 0 ],
  [ 'keywords_notreserved_110' => 'keywords_notreserved', [ 'DISABLE' ], 0 ],
  [ 'keywords_notreserved_111' => 'keywords_notreserved', [ 'DISCARD' ], 0 ],
  [ 'keywords_notreserved_112' => 'keywords_notreserved', [ 'DOCUMENT' ], 0 ],
  [ 'keywords_notreserved_113' => 'keywords_notreserved', [ 'DOMAIN' ], 0 ],
  [ 'keywords_notreserved_114' => 'keywords_notreserved', [ 'DOUBLE' ], 0 ],
  [ 'keywords_notreserved_115' => 'keywords_notreserved', [ 'DROP' ], 0 ],
  [ 'keywords_notreserved_116' => 'keywords_notreserved', [ 'EACH' ], 0 ],
  [ 'keywords_notreserved_117' => 'keywords_notreserved', [ 'ENABLE' ], 0 ],
  [ 'keywords_notreserved_118' => 'keywords_notreserved', [ 'ENCODING' ], 0 ],
  [ 'keywords_notreserved_119' => 'keywords_notreserved', [ 'ENCRYPTED' ], 0 ],
  [ 'keywords_notreserved_120' => 'keywords_notreserved', [ 'ENUM' ], 0 ],
  [ 'keywords_notreserved_121' => 'keywords_notreserved', [ 'ESCAPE' ], 0 ],
  [ 'keywords_notreserved_122' => 'keywords_notreserved', [ 'EXCLUDE' ], 0 ],
  [ 'keywords_notreserved_123' => 'keywords_notreserved', [ 'EXCLUDING' ], 0 ],
  [ 'keywords_notreserved_124' => 'keywords_notreserved', [ 'EXCLUSIVE' ], 0 ],
  [ 'keywords_notreserved_125' => 'keywords_notreserved', [ 'EXECUTE' ], 0 ],
  [ 'keywords_notreserved_126' => 'keywords_notreserved', [ 'EXPLAIN' ], 0 ],
  [ 'keywords_notreserved_127' => 'keywords_notreserved', [ 'EXTENSION' ], 0 ],
  [ 'keywords_notreserved_128' => 'keywords_notreserved', [ 'EXTERNAL' ], 0 ],
  [ 'keywords_notreserved_129' => 'keywords_notreserved', [ 'FAMILY' ], 0 ],
  [ 'keywords_notreserved_130' => 'keywords_notreserved', [ 'FIRST' ], 0 ],
  [ 'keywords_notreserved_131' => 'keywords_notreserved', [ 'FOLLOWING' ], 0 ],
  [ 'keywords_notreserved_132' => 'keywords_notreserved', [ 'FORCE' ], 0 ],
  [ 'keywords_notreserved_133' => 'keywords_notreserved', [ 'FORWARD' ], 0 ],
  [ 'keywords_notreserved_134' => 'keywords_notreserved', [ 'FUNCTION' ], 0 ],
  [ 'keywords_notreserved_135' => 'keywords_notreserved', [ 'FUNCTIONS' ], 0 ],
  [ 'keywords_notreserved_136' => 'keywords_notreserved', [ 'GLOBAL' ], 0 ],
  [ 'keywords_notreserved_137' => 'keywords_notreserved', [ 'GRANTED' ], 0 ],
  [ 'keywords_notreserved_138' => 'keywords_notreserved', [ 'HANDLER' ], 0 ],
  [ 'keywords_notreserved_139' => 'keywords_notreserved', [ 'HEADER' ], 0 ],
  [ 'keywords_notreserved_140' => 'keywords_notreserved', [ 'HOLD' ], 0 ],
  [ 'keywords_notreserved_141' => 'keywords_notreserved', [ 'HOUR' ], 0 ],
  [ 'keywords_notreserved_142' => 'keywords_notreserved', [ 'IDENTITY' ], 0 ],
  [ 'keywords_notreserved_143' => 'keywords_notreserved', [ 'IF' ], 0 ],
  [ 'keywords_notreserved_144' => 'keywords_notreserved', [ 'IMMEDIATE' ], 0 ],
  [ 'keywords_notreserved_145' => 'keywords_notreserved', [ 'IMMUTABLE' ], 0 ],
  [ 'keywords_notreserved_146' => 'keywords_notreserved', [ 'IMPLICIT' ], 0 ],
  [ 'keywords_notreserved_147' => 'keywords_notreserved', [ 'INCLUDING' ], 0 ],
  [ 'keywords_notreserved_148' => 'keywords_notreserved', [ 'INCREMENT' ], 0 ],
  [ 'keywords_notreserved_149' => 'keywords_notreserved', [ 'INDEX' ], 0 ],
  [ 'keywords_notreserved_150' => 'keywords_notreserved', [ 'INDEXES' ], 0 ],
  [ 'keywords_notreserved_151' => 'keywords_notreserved', [ 'INHERIT' ], 0 ],
  [ 'keywords_notreserved_152' => 'keywords_notreserved', [ 'INHERITS' ], 0 ],
  [ 'keywords_notreserved_153' => 'keywords_notreserved', [ 'INLINE' ], 0 ],
  [ 'keywords_notreserved_154' => 'keywords_notreserved', [ 'INPUT' ], 0 ],
  [ 'keywords_notreserved_155' => 'keywords_notreserved', [ 'INSENSITIVE' ], 0 ],
  [ 'keywords_notreserved_156' => 'keywords_notreserved', [ 'INSERT' ], 0 ],
  [ 'keywords_notreserved_157' => 'keywords_notreserved', [ 'INSTEAD' ], 0 ],
  [ 'keywords_notreserved_158' => 'keywords_notreserved', [ 'INVOKER' ], 0 ],
  [ 'keywords_notreserved_159' => 'keywords_notreserved', [ 'ISOLATION' ], 0 ],
  [ 'keywords_notreserved_160' => 'keywords_notreserved', [ 'KEY' ], 0 ],
  [ 'keywords_notreserved_161' => 'keywords_notreserved', [ 'LABEL' ], 0 ],
  [ 'keywords_notreserved_162' => 'keywords_notreserved', [ 'LANGUAGE' ], 0 ],
  [ 'keywords_notreserved_163' => 'keywords_notreserved', [ 'LARGE' ], 0 ],
  [ 'keywords_notreserved_164' => 'keywords_notreserved', [ 'LAST' ], 0 ],
  [ 'keywords_notreserved_165' => 'keywords_notreserved', [ 'LC_COLLATE' ], 0 ],
  [ 'keywords_notreserved_166' => 'keywords_notreserved', [ 'LC_CTYPE' ], 0 ],
  [ 'keywords_notreserved_167' => 'keywords_notreserved', [ 'LEVEL' ], 0 ],
  [ 'keywords_notreserved_168' => 'keywords_notreserved', [ 'LISTEN' ], 0 ],
  [ 'keywords_notreserved_169' => 'keywords_notreserved', [ 'LOAD' ], 0 ],
  [ 'keywords_notreserved_170' => 'keywords_notreserved', [ 'LOCAL' ], 0 ],
  [ 'keywords_notreserved_171' => 'keywords_notreserved', [ 'LOCATION' ], 0 ],
  [ 'keywords_notreserved_172' => 'keywords_notreserved', [ 'LOCK' ], 0 ],
  [ 'keywords_notreserved_173' => 'keywords_notreserved', [ 'MAPPING' ], 0 ],
  [ 'keywords_notreserved_174' => 'keywords_notreserved', [ 'MATCH' ], 0 ],
  [ 'keywords_notreserved_175' => 'keywords_notreserved', [ 'MAXVALUE' ], 0 ],
  [ 'keywords_notreserved_176' => 'keywords_notreserved', [ 'MINUTE' ], 0 ],
  [ 'keywords_notreserved_177' => 'keywords_notreserved', [ 'MINVALUE' ], 0 ],
  [ 'keywords_notreserved_178' => 'keywords_notreserved', [ 'MODE' ], 0 ],
  [ 'keywords_notreserved_179' => 'keywords_notreserved', [ 'MONTH' ], 0 ],
  [ 'keywords_notreserved_180' => 'keywords_notreserved', [ 'MOVE' ], 0 ],
  [ 'keywords_notreserved_181' => 'keywords_notreserved', [ 'NAME' ], 0 ],
  [ 'keywords_notreserved_182' => 'keywords_notreserved', [ 'NAMES' ], 0 ],
  [ 'keywords_notreserved_183' => 'keywords_notreserved', [ 'NEXT' ], 0 ],
  [ 'keywords_notreserved_184' => 'keywords_notreserved', [ 'NO' ], 0 ],
  [ 'keywords_notreserved_185' => 'keywords_notreserved', [ 'NOTHING' ], 0 ],
  [ 'keywords_notreserved_186' => 'keywords_notreserved', [ 'NOTIFY' ], 0 ],
  [ 'keywords_notreserved_187' => 'keywords_notreserved', [ 'NOWAIT' ], 0 ],
  [ 'keywords_notreserved_188' => 'keywords_notreserved', [ 'NULLS' ], 0 ],
  [ 'keywords_notreserved_189' => 'keywords_notreserved', [ 'OBJECT' ], 0 ],
  [ 'keywords_notreserved_190' => 'keywords_notreserved', [ 'OF' ], 0 ],
  [ 'keywords_notreserved_191' => 'keywords_notreserved', [ 'OFF' ], 0 ],
  [ 'keywords_notreserved_192' => 'keywords_notreserved', [ 'OIDS' ], 0 ],
  [ 'keywords_notreserved_193' => 'keywords_notreserved', [ 'OPERATOR' ], 0 ],
  [ 'keywords_notreserved_194' => 'keywords_notreserved', [ 'OPTION' ], 0 ],
  [ 'keywords_notreserved_195' => 'keywords_notreserved', [ 'OPTIONS' ], 0 ],
  [ 'keywords_notreserved_196' => 'keywords_notreserved', [ 'OWNED' ], 0 ],
  [ 'keywords_notreserved_197' => 'keywords_notreserved', [ 'OWNER' ], 0 ],
  [ 'keywords_notreserved_198' => 'keywords_notreserved', [ 'PARSER' ], 0 ],
  [ 'keywords_notreserved_199' => 'keywords_notreserved', [ 'PARTIAL' ], 0 ],
  [ 'keywords_notreserved_200' => 'keywords_notreserved', [ 'PARTITION' ], 0 ],
  [ 'keywords_notreserved_201' => 'keywords_notreserved', [ 'PASSING' ], 0 ],
  [ 'keywords_notreserved_202' => 'keywords_notreserved', [ 'PASSWORD' ], 0 ],
  [ 'keywords_notreserved_203' => 'keywords_notreserved', [ 'PLANS' ], 0 ],
  [ 'keywords_notreserved_204' => 'keywords_notreserved', [ 'PRECEDING' ], 0 ],
  [ 'keywords_notreserved_205' => 'keywords_notreserved', [ 'PREPARE' ], 0 ],
  [ 'keywords_notreserved_206' => 'keywords_notreserved', [ 'PREPARED' ], 0 ],
  [ 'keywords_notreserved_207' => 'keywords_notreserved', [ 'PRESERVE' ], 0 ],
  [ 'keywords_notreserved_208' => 'keywords_notreserved', [ 'PRIOR' ], 0 ],
  [ 'keywords_notreserved_209' => 'keywords_notreserved', [ 'PRIVILEGES' ], 0 ],
  [ 'keywords_notreserved_210' => 'keywords_notreserved', [ 'PROCEDURAL' ], 0 ],
  [ 'keywords_notreserved_211' => 'keywords_notreserved', [ 'PROCEDURE' ], 0 ],
  [ 'keywords_notreserved_212' => 'keywords_notreserved', [ 'QUOTE' ], 0 ],
  [ 'keywords_notreserved_213' => 'keywords_notreserved', [ 'RANGE' ], 0 ],
  [ 'keywords_notreserved_214' => 'keywords_notreserved', [ 'READ' ], 0 ],
  [ 'keywords_notreserved_215' => 'keywords_notreserved', [ 'REASSIGN' ], 0 ],
  [ 'keywords_notreserved_216' => 'keywords_notreserved', [ 'RECHECK' ], 0 ],
  [ 'keywords_notreserved_217' => 'keywords_notreserved', [ 'RECURSIVE' ], 0 ],
  [ 'keywords_notreserved_218' => 'keywords_notreserved', [ 'REF' ], 0 ],
  [ 'keywords_notreserved_219' => 'keywords_notreserved', [ 'REINDEX' ], 0 ],
  [ 'keywords_notreserved_220' => 'keywords_notreserved', [ 'RELATIVE' ], 0 ],
  [ 'keywords_notreserved_221' => 'keywords_notreserved', [ 'RELEASE' ], 0 ],
  [ 'keywords_notreserved_222' => 'keywords_notreserved', [ 'RENAME' ], 0 ],
  [ 'keywords_notreserved_223' => 'keywords_notreserved', [ 'REPEATABLE' ], 0 ],
  [ 'keywords_notreserved_224' => 'keywords_notreserved', [ 'REPLACE' ], 0 ],
  [ 'keywords_notreserved_225' => 'keywords_notreserved', [ 'REPLICA' ], 0 ],
  [ 'keywords_notreserved_226' => 'keywords_notreserved', [ 'RESET' ], 0 ],
  [ 'keywords_notreserved_227' => 'keywords_notreserved', [ 'RESTART' ], 0 ],
  [ 'keywords_notreserved_228' => 'keywords_notreserved', [ 'RESTRICT' ], 0 ],
  [ 'keywords_notreserved_229' => 'keywords_notreserved', [ 'RETURNS' ], 0 ],
  [ 'keywords_notreserved_230' => 'keywords_notreserved', [ 'REVOKE' ], 0 ],
  [ 'keywords_notreserved_231' => 'keywords_notreserved', [ 'ROLE' ], 0 ],
  [ 'keywords_notreserved_232' => 'keywords_notreserved', [ 'ROLLBACK' ], 0 ],
  [ 'keywords_notreserved_233' => 'keywords_notreserved', [ 'ROWS' ], 0 ],
  [ 'keywords_notreserved_234' => 'keywords_notreserved', [ 'RULE' ], 0 ],
  [ 'keywords_notreserved_235' => 'keywords_notreserved', [ 'SAVEPOINT' ], 0 ],
  [ 'keywords_notreserved_236' => 'keywords_notreserved', [ 'SCHEMA' ], 0 ],
  [ 'keywords_notreserved_237' => 'keywords_notreserved', [ 'SCROLL' ], 0 ],
  [ 'keywords_notreserved_238' => 'keywords_notreserved', [ 'SEARCH' ], 0 ],
  [ 'keywords_notreserved_239' => 'keywords_notreserved', [ 'SECOND' ], 0 ],
  [ 'keywords_notreserved_240' => 'keywords_notreserved', [ 'SECURITY' ], 0 ],
  [ 'keywords_notreserved_241' => 'keywords_notreserved', [ 'SEQUENCE' ], 0 ],
  [ 'keywords_notreserved_242' => 'keywords_notreserved', [ 'SEQUENCES' ], 0 ],
  [ 'keywords_notreserved_243' => 'keywords_notreserved', [ 'SERIALIZABLE' ], 0 ],
  [ 'keywords_notreserved_244' => 'keywords_notreserved', [ 'SERVER' ], 0 ],
  [ 'keywords_notreserved_245' => 'keywords_notreserved', [ 'SESSION' ], 0 ],
  [ 'keywords_notreserved_246' => 'keywords_notreserved', [ 'SET' ], 0 ],
  [ 'keywords_notreserved_247' => 'keywords_notreserved', [ 'SHARE' ], 0 ],
  [ 'keywords_notreserved_248' => 'keywords_notreserved', [ 'SHOW' ], 0 ],
  [ 'keywords_notreserved_249' => 'keywords_notreserved', [ 'SIMPLE' ], 0 ],
  [ 'keywords_notreserved_250' => 'keywords_notreserved', [ 'STABLE' ], 0 ],
  [ 'keywords_notreserved_251' => 'keywords_notreserved', [ 'STANDALONE' ], 0 ],
  [ 'keywords_notreserved_252' => 'keywords_notreserved', [ 'START' ], 0 ],
  [ 'keywords_notreserved_253' => 'keywords_notreserved', [ 'STATEMENT' ], 0 ],
  [ 'keywords_notreserved_254' => 'keywords_notreserved', [ 'STATISTICS' ], 0 ],
  [ 'keywords_notreserved_255' => 'keywords_notreserved', [ 'STDIN' ], 0 ],
  [ 'keywords_notreserved_256' => 'keywords_notreserved', [ 'STDOUT' ], 0 ],
  [ 'keywords_notreserved_257' => 'keywords_notreserved', [ 'STORAGE' ], 0 ],
  [ 'keywords_notreserved_258' => 'keywords_notreserved', [ 'STRICT' ], 0 ],
  [ 'keywords_notreserved_259' => 'keywords_notreserved', [ 'STRIP' ], 0 ],
  [ 'keywords_notreserved_260' => 'keywords_notreserved', [ 'SYSID' ], 0 ],
  [ 'keywords_notreserved_261' => 'keywords_notreserved', [ 'SYSTEM' ], 0 ],
  [ 'keywords_notreserved_262' => 'keywords_notreserved', [ 'TABLES' ], 0 ],
  [ 'keywords_notreserved_263' => 'keywords_notreserved', [ 'TABLESPACE' ], 0 ],
  [ 'keywords_notreserved_264' => 'keywords_notreserved', [ 'TEMP' ], 0 ],
  [ 'keywords_notreserved_265' => 'keywords_notreserved', [ 'TEMPLATE' ], 0 ],
  [ 'keywords_notreserved_266' => 'keywords_notreserved', [ 'TEMPORARY' ], 0 ],
  [ 'keywords_notreserved_267' => 'keywords_notreserved', [ 'TEXT' ], 0 ],
  [ 'keywords_notreserved_268' => 'keywords_notreserved', [ 'TRANSACTION' ], 0 ],
  [ 'keywords_notreserved_269' => 'keywords_notreserved', [ 'TRIGGER' ], 0 ],
  [ 'keywords_notreserved_270' => 'keywords_notreserved', [ 'TRUNCATE' ], 0 ],
  [ 'keywords_notreserved_271' => 'keywords_notreserved', [ 'TRUSTED' ], 0 ],
  [ 'keywords_notreserved_272' => 'keywords_notreserved', [ 'TYPE' ], 0 ],
  [ 'keywords_notreserved_273' => 'keywords_notreserved', [ 'UNBOUNDED' ], 0 ],
  [ 'keywords_notreserved_274' => 'keywords_notreserved', [ 'UNCOMMITTED' ], 0 ],
  [ 'keywords_notreserved_275' => 'keywords_notreserved', [ 'UNENCRYPTED' ], 0 ],
  [ 'keywords_notreserved_276' => 'keywords_notreserved', [ 'UNKNOWN' ], 0 ],
  [ 'keywords_notreserved_277' => 'keywords_notreserved', [ 'UNLISTEN' ], 0 ],
  [ 'keywords_notreserved_278' => 'keywords_notreserved', [ 'UNLOGGED' ], 0 ],
  [ 'keywords_notreserved_279' => 'keywords_notreserved', [ 'UNTIL' ], 0 ],
  [ 'keywords_notreserved_280' => 'keywords_notreserved', [ 'UPDATE' ], 0 ],
  [ 'keywords_notreserved_281' => 'keywords_notreserved', [ 'VACUUM' ], 0 ],
  [ 'keywords_notreserved_282' => 'keywords_notreserved', [ 'VALID' ], 0 ],
  [ 'keywords_notreserved_283' => 'keywords_notreserved', [ 'VALIDATE' ], 0 ],
  [ 'keywords_notreserved_284' => 'keywords_notreserved', [ 'VALIDATOR' ], 0 ],
  [ 'keywords_notreserved_285' => 'keywords_notreserved', [ 'VALUE' ], 0 ],
  [ 'keywords_notreserved_286' => 'keywords_notreserved', [ 'VARYING' ], 0 ],
  [ 'keywords_notreserved_287' => 'keywords_notreserved', [ 'VERSION' ], 0 ],
  [ 'keywords_notreserved_288' => 'keywords_notreserved', [ 'VIEW' ], 0 ],
  [ 'keywords_notreserved_289' => 'keywords_notreserved', [ 'VOLATILE' ], 0 ],
  [ 'keywords_notreserved_290' => 'keywords_notreserved', [ 'WHITESPACE' ], 0 ],
  [ 'keywords_notreserved_291' => 'keywords_notreserved', [ 'WITHOUT' ], 0 ],
  [ 'keywords_notreserved_292' => 'keywords_notreserved', [ 'WORK' ], 0 ],
  [ 'keywords_notreserved_293' => 'keywords_notreserved', [ 'WRAPPER' ], 0 ],
  [ 'keywords_notreserved_294' => 'keywords_notreserved', [ 'WRITE' ], 0 ],
  [ 'keywords_notreserved_295' => 'keywords_notreserved', [ 'XML' ], 0 ],
  [ 'keywords_notreserved_296' => 'keywords_notreserved', [ 'YEAR' ], 0 ],
  [ 'keywords_notreserved_297' => 'keywords_notreserved', [ 'YES' ], 0 ],
  [ 'keywords_notreserved_298' => 'keywords_notreserved', [ 'ZONE' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_299' => 'keywords_reserved_ok_for_functions_or_types', [ 'AUTHORIZATION' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_300' => 'keywords_reserved_ok_for_functions_or_types', [ 'BINARY' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_301' => 'keywords_reserved_ok_for_functions_or_types', [ 'CONCURRENTLY' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_302' => 'keywords_reserved_ok_for_functions_or_types', [ 'CROSS' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_303' => 'keywords_reserved_ok_for_functions_or_types', [ 'CURRENT_SCHEMA' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_304' => 'keywords_reserved_ok_for_functions_or_types', [ 'FREEZE' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_305' => 'keywords_reserved_ok_for_functions_or_types', [ 'FULL' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_306' => 'keywords_reserved_ok_for_functions_or_types', [ 'ILIKE' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_307' => 'keywords_reserved_ok_for_functions_or_types', [ 'INNER' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_308' => 'keywords_reserved_ok_for_functions_or_types', [ 'IS' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_309' => 'keywords_reserved_ok_for_functions_or_types', [ 'ISNULL' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_310' => 'keywords_reserved_ok_for_functions_or_types', [ 'JOIN' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_311' => 'keywords_reserved_ok_for_functions_or_types', [ 'LEFT' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_312' => 'keywords_reserved_ok_for_functions_or_types', [ 'LIKE' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_313' => 'keywords_reserved_ok_for_functions_or_types', [ 'NATURAL' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_314' => 'keywords_reserved_ok_for_functions_or_types', [ 'NOTNULL' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_315' => 'keywords_reserved_ok_for_functions_or_types', [ 'OUTER' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_316' => 'keywords_reserved_ok_for_functions_or_types', [ 'OVER' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_317' => 'keywords_reserved_ok_for_functions_or_types', [ 'OVERLAPS' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_318' => 'keywords_reserved_ok_for_functions_or_types', [ 'RIGHT' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_319' => 'keywords_reserved_ok_for_functions_or_types', [ 'SIMILAR' ], 0 ],
  [ 'keywords_reserved_ok_for_functions_or_types_320' => 'keywords_reserved_ok_for_functions_or_types', [ 'VERBOSE' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_321' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'BETWEEN' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_322' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'BIGINT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_323' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'BIT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_324' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'BOOLEAN' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_325' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'CHAR' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_326' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'CHARACTER' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_327' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'COALESCE' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_328' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'DEC' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_329' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'DECIMAL' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_330' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'EXISTS' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_331' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'EXTRACT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_332' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'FLOAT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_333' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'GREATEST' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_334' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'INOUT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_335' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'INT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_336' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'INTEGER' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_337' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'INTERVAL' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_338' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'LEAST' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_339' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'NATIONAL' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_340' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'NCHAR' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_341' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'NONE' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_342' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'NULLIF' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_343' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'NUMERIC' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_344' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'OUT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_345' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'OVERLAY' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_346' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'POSITION' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_347' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'PRECISION' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_348' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'REAL' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_349' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'ROW' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_350' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'SETOF' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_351' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'SMALLINT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_352' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'SUBSTRING' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_353' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'TIME' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_354' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'TIMESTAMP' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_355' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'TREAT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_356' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'TRIM' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_357' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'VALUES' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_358' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'VARCHAR' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_359' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLATTRIBUTES' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_360' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLCONCAT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_361' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLELEMENT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_362' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLEXISTS' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_363' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLFOREST' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_364' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLPARSE' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_365' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLPI' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_366' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLROOT' ], 0 ],
  [ 'keywords_notreserved_not_ok_for_functions_or_types_367' => 'keywords_notreserved_not_ok_for_functions_or_types', [ 'XMLSERIALIZE' ], 0 ],
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
  'expr_simple_28' => 28,
  'expr_simple_29' => 29,
  'literal_value_30' => 30,
  'literal_value_31' => 31,
  'literal_value_32' => 32,
  'literal_value_33' => 33,
  'literal_value_34' => 34,
  'literal_value_35' => 35,
  'literal_value_36' => 36,
  'identifier_37' => 37,
  'identifier_38' => 38,
  'identifier_39' => 39,
  'identifier_40' => 40,
  'normal_type_41' => 41,
  'normal_type_42' => 42,
  'simple_type_43' => 43,
  'simple_type_44' => 44,
  'simple_type_45' => 45,
  'simple_type_46' => 46,
  'simple_type_47' => 47,
  'simple_type_48' => 48,
  'simple_type_49' => 49,
  'simple_type_50' => 50,
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
  'keywords_reserved_ok_for_functions_or_types_299' => 299,
  'keywords_reserved_ok_for_functions_or_types_300' => 300,
  'keywords_reserved_ok_for_functions_or_types_301' => 301,
  'keywords_reserved_ok_for_functions_or_types_302' => 302,
  'keywords_reserved_ok_for_functions_or_types_303' => 303,
  'keywords_reserved_ok_for_functions_or_types_304' => 304,
  'keywords_reserved_ok_for_functions_or_types_305' => 305,
  'keywords_reserved_ok_for_functions_or_types_306' => 306,
  'keywords_reserved_ok_for_functions_or_types_307' => 307,
  'keywords_reserved_ok_for_functions_or_types_308' => 308,
  'keywords_reserved_ok_for_functions_or_types_309' => 309,
  'keywords_reserved_ok_for_functions_or_types_310' => 310,
  'keywords_reserved_ok_for_functions_or_types_311' => 311,
  'keywords_reserved_ok_for_functions_or_types_312' => 312,
  'keywords_reserved_ok_for_functions_or_types_313' => 313,
  'keywords_reserved_ok_for_functions_or_types_314' => 314,
  'keywords_reserved_ok_for_functions_or_types_315' => 315,
  'keywords_reserved_ok_for_functions_or_types_316' => 316,
  'keywords_reserved_ok_for_functions_or_types_317' => 317,
  'keywords_reserved_ok_for_functions_or_types_318' => 318,
  'keywords_reserved_ok_for_functions_or_types_319' => 319,
  'keywords_reserved_ok_for_functions_or_types_320' => 320,
  'keywords_notreserved_not_ok_for_functions_or_types_321' => 321,
  'keywords_notreserved_not_ok_for_functions_or_types_322' => 322,
  'keywords_notreserved_not_ok_for_functions_or_types_323' => 323,
  'keywords_notreserved_not_ok_for_functions_or_types_324' => 324,
  'keywords_notreserved_not_ok_for_functions_or_types_325' => 325,
  'keywords_notreserved_not_ok_for_functions_or_types_326' => 326,
  'keywords_notreserved_not_ok_for_functions_or_types_327' => 327,
  'keywords_notreserved_not_ok_for_functions_or_types_328' => 328,
  'keywords_notreserved_not_ok_for_functions_or_types_329' => 329,
  'keywords_notreserved_not_ok_for_functions_or_types_330' => 330,
  'keywords_notreserved_not_ok_for_functions_or_types_331' => 331,
  'keywords_notreserved_not_ok_for_functions_or_types_332' => 332,
  'keywords_notreserved_not_ok_for_functions_or_types_333' => 333,
  'keywords_notreserved_not_ok_for_functions_or_types_334' => 334,
  'keywords_notreserved_not_ok_for_functions_or_types_335' => 335,
  'keywords_notreserved_not_ok_for_functions_or_types_336' => 336,
  'keywords_notreserved_not_ok_for_functions_or_types_337' => 337,
  'keywords_notreserved_not_ok_for_functions_or_types_338' => 338,
  'keywords_notreserved_not_ok_for_functions_or_types_339' => 339,
  'keywords_notreserved_not_ok_for_functions_or_types_340' => 340,
  'keywords_notreserved_not_ok_for_functions_or_types_341' => 341,
  'keywords_notreserved_not_ok_for_functions_or_types_342' => 342,
  'keywords_notreserved_not_ok_for_functions_or_types_343' => 343,
  'keywords_notreserved_not_ok_for_functions_or_types_344' => 344,
  'keywords_notreserved_not_ok_for_functions_or_types_345' => 345,
  'keywords_notreserved_not_ok_for_functions_or_types_346' => 346,
  'keywords_notreserved_not_ok_for_functions_or_types_347' => 347,
  'keywords_notreserved_not_ok_for_functions_or_types_348' => 348,
  'keywords_notreserved_not_ok_for_functions_or_types_349' => 349,
  'keywords_notreserved_not_ok_for_functions_or_types_350' => 350,
  'keywords_notreserved_not_ok_for_functions_or_types_351' => 351,
  'keywords_notreserved_not_ok_for_functions_or_types_352' => 352,
  'keywords_notreserved_not_ok_for_functions_or_types_353' => 353,
  'keywords_notreserved_not_ok_for_functions_or_types_354' => 354,
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
			'statement' => 22
		}
	},
	{#State 7
		DEFAULT => 0
	},
	{#State 8
		DEFAULT => -34
	},
	{#State 9
		DEFAULT => -33
	},
	{#State 10
		DEFAULT => -11
	},
	{#State 11
		ACTIONS => {
			"," => 23
		},
		DEFAULT => -6
	},
	{#State 12
		DEFAULT => -31
	},
	{#State 13
		DEFAULT => -28
	},
	{#State 14
		DEFAULT => -30
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
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 24,
			'expr_simple' => 10
		}
	},
	{#State 16
		DEFAULT => -35
	},
	{#State 17
		DEFAULT => -32
	},
	{#State 18
		ACTIONS => {
			"-" => 25,
			"::" => 26,
			"<" => 28,
			"+" => 29,
			'ILIKE' => 30,
			"%" => 32,
			'BETWEEN' => 34,
			"^" => 35,
			'OPERATOR_NAME' => 37,
			"*" => 36,
			'AS' => 38,
			'LIKE' => 27,
			"/" => 31,
			"=" => 33,
			">" => 39
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
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 40,
			'expr_simple' => 10
		}
	},
	{#State 20
		DEFAULT => -7
	},
	{#State 21
		DEFAULT => -36
	},
	{#State 22
		DEFAULT => -3
	},
	{#State 23
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'USTRING_CONSTANT' => 12,
			'STRING_CONSTANT' => 14,
			"(" => 15,
			'NUMERIC_CONSTANT' => 16,
			'ESTRING_CONSTANT' => 17,
			'OPERATOR_NAME' => 19,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 18,
			'result_column' => 41,
			'expr_simple' => 10
		}
	},
	{#State 24
		ACTIONS => {
			"-" => 25,
			'LIKE' => 27,
			"::" => 26,
			"<" => 28,
			"+" => 29,
			'ILIKE' => 30,
			"%" => 32,
			"/" => 31,
			"=" => 33,
			'BETWEEN' => 34,
			"^" => 35,
			'OPERATOR_NAME' => 37,
			"*" => 36,
			")" => 42,
			">" => 39
		}
	},
	{#State 25
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'USTRING_CONSTANT' => 12,
			'STRING_CONSTANT' => 14,
			"(" => 15,
			'NUMERIC_CONSTANT' => 16,
			'ESTRING_CONSTANT' => 17,
			'OPERATOR_NAME' => 19,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 43,
			'expr_simple' => 10
		}
	},
	{#State 26
		ACTIONS => {
			'INPUT' => 46,
			'SYSID' => 45,
			'JOIN' => 44,
			'REPLACE' => 48,
			'SERIALIZABLE' => 47,
			'AT' => 50,
			'INSENSITIVE' => 49,
			'RETURNS' => 51,
			'NCHAR' => 52,
			'INVOKER' => 53,
			'WORK' => 54,
			'PASSING' => 55,
			'MODE' => 56,
			'INTEGER' => 57,
			'INHERITS' => 58,
			'ESCAPE' => 60,
			'VALUE' => 59,
			'DROP' => 61,
			'MONTH' => 62,
			'ENCODING' => 64,
			'TEMPLATE' => 65,
			'DICTIONARY' => 66,
			'SEARCH' => 67,
			'PREPARE' => 68,
			'LOCK' => 69,
			'DEFAULTS' => 70,
			'FULL' => 71,
			'TREAT' => 72,
			'BY' => 73,
			'NO' => 74,
			'MINUTE' => 75,
			'DATA' => 79,
			'DAY' => 78,
			'PARTITION' => 77,
			'RANGE' => 76,
			'REF' => 82,
			'SHARE' => 81,
			'REAL' => 80,
			'OVER' => 83,
			'LARGE' => 85,
			'CURRENT_SCHEMA' => 84,
			'DELETE' => 86,
			'NULLIF' => 87,
			'CONNECTION' => 88,
			'BACKWARD' => 90,
			'CLOSE' => 89,
			'COST' => 91,
			'REPLICA' => 92,
			'PRIVILEGES' => 93,
			'ZONE' => 94,
			'LEAST' => 95,
			'STATISTICS' => 96,
			'ISNULL' => 97,
			'CALLED' => 98,
			'SECURITY' => 99,
			'INCREMENT' => 101,
			'BINARY' => 102,
			'LEVEL' => 103,
			'FORCE' => 104,
			'CONCURRENTLY' => 105,
			'UPDATE' => 107,
			'PRESERVE' => 108,
			'XMLPI' => 109,
			'CHARACTERISTICS' => 110,
			'VALIDATE' => 111,
			'STRICT' => 112,
			'VARYING' => 113,
			'AUTHORIZATION' => 114,
			'REASSIGN' => 115,
			'LABEL' => 117,
			'ROLLBACK' => 116,
			'OBJECT' => 118,
			'DELIMITERS' => 121,
			'PROCEDURE' => 120,
			'TIMESTAMP' => 119,
			'RULE' => 122,
			'INSERT' => 123,
			'HANDLER' => 124,
			'LOCATION' => 126,
			'EXISTS' => 125,
			'IMMUTABLE' => 127,
			'RELEASE' => 129,
			'BOOLEAN' => 128,
			'NULLS' => 130,
			'TYPE' => 131,
			'RESET' => 132,
			'NOWAIT' => 133,
			'PRIOR' => 134,
			'OFF' => 137,
			'BIGINT' => 136,
			'XMLSERIALIZE' => 135,
			'VERBOSE' => 138,
			'SET' => 139,
			'COMMENT' => 140,
			'IMMEDIATE' => 141,
			'DELIMITER' => 142,
			'SETOF' => 143,
			'INNER' => 144,
			'EXTRACT' => 145,
			'REINDEX' => 146,
			'PRECISION' => 147,
			'ACCESS' => 148,
			'OPTION' => 149,
			'COMMENTS' => 150,
			'INOUT' => 151,
			'DEALLOCATE' => 152,
			'CATALOG' => 153,
			'OUT' => 154,
			'RESTART' => 155,
			'MAPPING' => 156,
			'OF' => 157,
			'UNLOGGED' => 158,
			'CONTINUE' => 159,
			'XMLEXISTS' => 160,
			'UNBOUNDED' => 161,
			'READ' => 162,
			'LEFT' => 163,
			'PRECEDING' => 164,
			'STABLE' => 165,
			'DEC' => 166,
			'XMLELEMENT' => 167,
			'XML' => 168,
			'SCROLL' => 169,
			'TEXT' => 170,
			'ALSO' => 171,
			'FUNCTION' => 172,
			'SYSTEM' => 173,
			'AGGREGATE' => 174,
			'FLOAT' => 175,
			'ATTRIBUTE' => 176,
			'ADD' => 177,
			'STRIP' => 178,
			'TABLESPACE' => 179,
			'OVERLAPS' => 180,
			'DEFERRED' => 182,
			'VIEW' => 181,
			'REPEATABLE' => 183,
			'ALWAYS' => 184,
			'FORWARD' => 186,
			'CONSTRAINTS' => 185,
			'NOTHING' => 187,
			'EXCLUDING' => 188,
			'DECIMAL' => 189,
			'INDEXES' => 191,
			'CHECKPOINT' => 190,
			'CACHE' => 192,
			'COMMIT' => 193,
			'DECLARE' => 194,
			'UNLISTEN' => 195,
			'LOAD' => 196,
			'FAMILY' => 197,
			'SMALLINT' => 198,
			'ASSERTION' => 199,
			'ILIKE' => 200,
			'GLOBAL' => 201,
			'EXTERNAL' => 202,
			'SIMILAR' => 203,
			'STDOUT' => 204,
			'REVOKE' => 205,
			'INHERIT' => 206,
			'OUTER' => 207,
			'EXPLAIN' => 208,
			'VARCHAR' => 210,
			'OIDS' => 209,
			'AFTER' => 211,
			'DISABLE' => 213,
			'CSV' => 212,
			'VACUUM' => 214,
			'SCHEMA' => 215,
			'ROW' => 216,
			'LC_COLLATE' => 217,
			'FREEZE' => 218,
			'INDEX' => 219,
			'DEFINER' => 220,
			'XMLPARSE' => 221,
			'ADMIN' => 222,
			'INCLUDING' => 223,
			'OWNED' => 224,
			'CROSS' => 225,
			'INSTEAD' => 226,
			'NATIONAL' => 227,
			'EACH' => 228,
			'TRUSTED' => 229,
			'EXCLUSIVE' => 230,
			'OWNER' => 231,
			'CHARACTER' => 232,
			'CASCADE' => 233,
			'STATEMENT' => 234,
			'ASSIGNMENT' => 235,
			'MATCH' => 237,
			'CLASS' => 238,
			'DOUBLE' => 239,
			'MOVE' => 240,
			'TIME' => 241,
			'NUMERIC' => 242,
			'CURSOR' => 243,
			'INLINE' => 244,
			'ENCRYPTED' => 245,
			'EXTENSION' => 246,
			'CHAIN' => 247,
			'RECURSIVE' => 248,
			'VALIDATOR' => 249,
			'XMLROOT' => 250,
			'UQUOTED_IDENTIFIER' => 251,
			'SUBSTRING' => 252,
			'CASCADED' => 253,
			'DISCARD' => 254,
			'BETWEEN' => 255,
			'ABORT' => 256,
			'XMLATTRIBUTES' => 257,
			'VALUES' => 258,
			'BEFORE' => 259,
			'TRUNCATE' => 260,
			'IDENTIFIER' => 261,
			'ABSOLUTE' => 262,
			'SHOW' => 263,
			'GREATEST' => 264,
			'PLANS' => 265,
			'PARTIAL' => 266,
			'SEQUENCES' => 267,
			'EXCLUDE' => 268,
			'SECOND' => 270,
			'WHITESPACE' => 271,
			'HOUR' => 272,
			'XMLFOREST' => 273,
			'FOLLOWING' => 275,
			'LISTEN' => 276,
			'WRAPPER' => 277,
			'VOLATILE' => 278,
			'LANGUAGE' => 279,
			'YEAR' => 280,
			'STANDALONE' => 281,
			'TEMP' => 282,
			'COPY' => 283,
			'WITHOUT' => 284,
			'OPTIONS' => 285,
			'YES' => 286,
			'PROCEDURAL' => 287,
			'SEQUENCE' => 288,
			'LIKE' => 289,
			'SIMPLE' => 290,
			'IDENTITY' => 291,
			'QUOTE' => 292,
			'POSITION' => 293,
			'DOMAIN' => 294,
			'EXECUTE' => 295,
			'UNKNOWN' => 296,
			'CONTENT' => 297,
			'QUOTED_IDENTIFIER' => 298,
			'SERVER' => 299,
			'RELATIVE' => 300,
			'TRANSACTION' => 301,
			'CONFIGURATION' => 302,
			'NAMES' => 303,
			'PARSER' => 304,
			'RENAME' => 305,
			'ALTER' => 308,
			'CURRENT' => 307,
			'RIGHT' => 306,
			'IMPLICIT' => 309,
			'CLUSTER' => 310,
			'NATURAL' => 311,
			'XMLCONCAT' => 312,
			'PASSWORD' => 313,
			'CHAR' => 314,
			'RECHECK' => 315,
			'PREPARED' => 317,
			'NEXT' => 316,
			'TEMPORARY' => 318,
			'COMMITTED' => 319,
			'GRANTED' => 321,
			'BIT' => 320,
			'NOTIFY' => 323,
			'BEGIN' => 322,
			'HEADER' => 324,
			'INTERVAL' => 325,
			'LC_CTYPE' => 326,
			'NAME' => 327,
			'STORAGE' => 330,
			'FUNCTIONS' => 329,
			'ISOLATION' => 328,
			'STDIN' => 331,
			'RESTRICT' => 332,
			'UNCOMMITTED' => 336,
			'CYCLE' => 335,
			'IS' => 334,
			'TRIM' => 333,
			'MAXVALUE' => 337,
			'START' => 338,
			'SAVEPOINT' => 341,
			'DOCUMENT' => 340,
			'IF' => 339,
			'ROWS' => 342,
			'MINVALUE' => 344,
			'LAST' => 343,
			'KEY' => 345,
			'UNTIL' => 347,
			'OPERATOR' => 346,
			'HOLD' => 348,
			'ACTION' => 349,
			'WRITE' => 350,
			'ROLE' => 351,
			'NOTNULL' => 352,
			'SESSION' => 353,
			'CONVERSION' => 354,
			'DATABASE' => 356,
			'ENUM' => 355,
			'ENABLE' => 357,
			'LOCAL' => 358,
			'NONE' => 359,
			'VALID' => 362,
			'TABLES' => 361,
			'INT' => 360,
			'TRIGGER' => 363,
			'COLLATION' => 364,
			'UNENCRYPTED' => 365,
			'OVERLAY' => 366,
			'FIRST' => 368,
			'COALESCE' => 367,
			'VERSION' => 369
		},
		GOTOS => {
			'identifier' => 100,
			'keywords_reserved_ok_for_functions_or_types' => 106,
			'simple_type' => 236,
			'keywords_notreserved' => 274,
			'keywords_notreserved_not_ok_for_functions_or_types' => 269,
			'normal_type' => 63
		}
	},
	{#State 27
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'STRING_CONSTANT' => 14,
			'USTRING_CONSTANT' => 12,
			"(" => 15,
			'ESTRING_CONSTANT' => 17,
			'NUMERIC_CONSTANT' => 16,
			'OPERATOR_NAME' => 19,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 370,
			'expr_simple' => 10
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
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 371,
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
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 372,
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
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 373,
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
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 374,
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
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 375,
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
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 376,
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
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 377,
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
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 378,
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
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 379,
			'expr_simple' => 10
		}
	},
	{#State 37
		ACTIONS => {
			'STRING_CONSTANT' => 14,
			'USTRING_CONSTANT' => 12,
			'NUMERIC_CONSTANT' => 16,
			'XBITSTRING_CONSTANT' => 8,
			'BITSTRING_CONSTANT' => 9,
			"(" => 15,
			'ESTRING_CONSTANT' => 17,
			'INTEGER_CONSTANT' => 21
		},
		DEFAULT => -13,
		GOTOS => {
			'literal_value' => 13,
			'expr' => 380,
			'expr_simple' => 10
		}
	},
	{#State 38
		ACTIONS => {
			'VACUUM' => 214,
			'INPUT' => 46,
			'SYSID' => 45,
			'REPLACE' => 48,
			'SERIALIZABLE' => 47,
			'SCHEMA' => 215,
			'AT' => 50,
			'INSENSITIVE' => 49,
			'RETURNS' => 51,
			'LC_COLLATE' => 217,
			'INDEX' => 219,
			'DEFINER' => 220,
			'INVOKER' => 53,
			'WORK' => 54,
			'ADMIN' => 222,
			'INCLUDING' => 223,
			'OWNED' => 224,
			'PASSING' => 55,
			'INSTEAD' => 226,
			'MODE' => 56,
			'INHERITS' => 58,
			'VALUE' => 59,
			'ESCAPE' => 60,
			'DROP' => 61,
			'MONTH' => 62,
			'EACH' => 228,
			'ENCODING' => 64,
			'TRUSTED' => 229,
			'EXCLUSIVE' => 230,
			'OWNER' => 231,
			'TEMPLATE' => 65,
			'DICTIONARY' => 66,
			'SEARCH' => 67,
			'PREPARE' => 68,
			'LOCK' => 69,
			'DEFAULTS' => 70,
			'CASCADE' => 233,
			'STATEMENT' => 234,
			'BY' => 73,
			'NO' => 74,
			'MINUTE' => 75,
			'ASSIGNMENT' => 235,
			'RANGE' => 76,
			'PARTITION' => 77,
			'DAY' => 78,
			'DATA' => 79,
			'SHARE' => 81,
			'REF' => 82,
			'MATCH' => 237,
			'CLASS' => 238,
			'DOUBLE' => 239,
			'MOVE' => 240,
			'LARGE' => 85,
			'DELETE' => 86,
			'CURSOR' => 243,
			'INLINE' => 244,
			'CONNECTION' => 88,
			'BACKWARD' => 90,
			'CLOSE' => 89,
			'COST' => 91,
			'ENCRYPTED' => 245,
			'EXTENSION' => 246,
			'REPLICA' => 92,
			'CHAIN' => 247,
			'RECURSIVE' => 248,
			'PRIVILEGES' => 93,
			'VALIDATOR' => 249,
			'UQUOTED_IDENTIFIER' => 251,
			'ZONE' => 94,
			'CASCADED' => 253,
			'DISCARD' => 254,
			'STATISTICS' => 96,
			'CALLED' => 98,
			'SECURITY' => 99,
			'ABORT' => 256,
			'INCREMENT' => 101,
			'LEVEL' => 103,
			'FORCE' => 104,
			'BEFORE' => 259,
			'TRUNCATE' => 260,
			'IDENTIFIER' => 261,
			'ABSOLUTE' => 262,
			'SHOW' => 263,
			'PLANS' => 265,
			'PARTIAL' => 266,
			'SEQUENCES' => 267,
			'EXCLUDE' => 268,
			'UPDATE' => 107,
			'PRESERVE' => 108,
			'SECOND' => 270,
			'WHITESPACE' => 271,
			'CHARACTERISTICS' => 110,
			'VALIDATE' => 111,
			'STRICT' => 112,
			'HOUR' => 272,
			'VARYING' => 113,
			'FOLLOWING' => 275,
			'LISTEN' => 276,
			'WRAPPER' => 277,
			'REASSIGN' => 115,
			'VOLATILE' => 278,
			'LANGUAGE' => 279,
			'STANDALONE' => 281,
			'TEMP' => 282,
			'YEAR' => 280,
			'ROLLBACK' => 116,
			'LABEL' => 117,
			'COPY' => 283,
			'WITHOUT' => 284,
			'OBJECT' => 118,
			'PROCEDURE' => 120,
			'DELIMITERS' => 121,
			'RULE' => 122,
			'OPTIONS' => 285,
			'INSERT' => 123,
			'PROCEDURAL' => 287,
			'YES' => 286,
			'HANDLER' => 124,
			'SEQUENCE' => 288,
			'SIMPLE' => 290,
			'LOCATION' => 126,
			'IMMUTABLE' => 127,
			'RELEASE' => 129,
			'NULLS' => 130,
			'TYPE' => 131,
			'IDENTITY' => 291,
			'QUOTE' => 292,
			'RESET' => 132,
			'NOWAIT' => 133,
			'DOMAIN' => 294,
			'EXECUTE' => 295,
			'PRIOR' => 134,
			'UNKNOWN' => 296,
			'OFF' => 137,
			'SET' => 139,
			'IMMEDIATE' => 141,
			'COMMENT' => 140,
			'DELIMITER' => 142,
			'CONTENT' => 297,
			'QUOTED_IDENTIFIER' => 298,
			'REINDEX' => 146,
			'SERVER' => 299,
			'ACCESS' => 148,
			'RELATIVE' => 300,
			'TRANSACTION' => 301,
			'OPTION' => 149,
			'COMMENTS' => 150,
			'CONFIGURATION' => 302,
			'NAMES' => 303,
			'DEALLOCATE' => 152,
			'PARSER' => 304,
			'RENAME' => 305,
			'CATALOG' => 153,
			'ALTER' => 308,
			'CURRENT' => 307,
			'RESTART' => 155,
			'MAPPING' => 156,
			'OF' => 157,
			'IMPLICIT' => 309,
			'UNLOGGED' => 158,
			'CONTINUE' => 159,
			'CLUSTER' => 310,
			'UNBOUNDED' => 161,
			'READ' => 162,
			'PRECEDING' => 164,
			'STABLE' => 165,
			'PASSWORD' => 313,
			'RECHECK' => 315,
			'NEXT' => 316,
			'PREPARED' => 317,
			'XML' => 168,
			'TEMPORARY' => 318,
			'COMMITTED' => 319,
			'SCROLL' => 169,
			'TEXT' => 170,
			'GRANTED' => 321,
			'BEGIN' => 322,
			'NOTIFY' => 323,
			'FUNCTION' => 172,
			'ALSO' => 171,
			'HEADER' => 324,
			'SYSTEM' => 173,
			'AGGREGATE' => 174,
			'ATTRIBUTE' => 176,
			'LC_CTYPE' => 326,
			'NAME' => 327,
			'ADD' => 177,
			'STRIP' => 178,
			'TABLESPACE' => 179,
			'FUNCTIONS' => 329,
			'ISOLATION' => 328,
			'STORAGE' => 330,
			'STDIN' => 331,
			'VIEW' => 181,
			'DEFERRED' => 182,
			'REPEATABLE' => 183,
			'RESTRICT' => 332,
			'CYCLE' => 335,
			'UNCOMMITTED' => 336,
			'ALWAYS' => 184,
			'MAXVALUE' => 337,
			'FORWARD' => 186,
			'CONSTRAINTS' => 185,
			'START' => 338,
			'NOTHING' => 187,
			'DOCUMENT' => 340,
			'IF' => 339,
			'SAVEPOINT' => 341,
			'EXCLUDING' => 188,
			'ROWS' => 342,
			'LAST' => 343,
			'MINVALUE' => 344,
			'INDEXES' => 191,
			'CHECKPOINT' => 190,
			'KEY' => 345,
			'CACHE' => 192,
			'OPERATOR' => 346,
			'UNTIL' => 347,
			'HOLD' => 348,
			'COMMIT' => 193,
			'DECLARE' => 194,
			'ACTION' => 349,
			'UNLISTEN' => 195,
			'WRITE' => 350,
			'LOAD' => 196,
			'ROLE' => 351,
			'SESSION' => 353,
			'FAMILY' => 197,
			'CONVERSION' => 354,
			'DATABASE' => 356,
			'ENUM' => 355,
			'ASSERTION' => 199,
			'GLOBAL' => 201,
			'EXTERNAL' => 202,
			'ENABLE' => 357,
			'LOCAL' => 358,
			'STDOUT' => 204,
			'REVOKE' => 205,
			'TABLES' => 361,
			'VALID' => 362,
			'INHERIT' => 206,
			'TRIGGER' => 363,
			'COLLATION' => 364,
			'EXPLAIN' => 208,
			'UNENCRYPTED' => 365,
			'OIDS' => 209,
			'FIRST' => 368,
			'AFTER' => 211,
			'DISABLE' => 213,
			'CSV' => 212,
			'VERSION' => 369
		},
		GOTOS => {
			'identifier' => 381,
			'keywords_notreserved' => 274
		}
	},
	{#State 39
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'STRING_CONSTANT' => 14,
			'USTRING_CONSTANT' => 12,
			"(" => 15,
			'ESTRING_CONSTANT' => 17,
			'NUMERIC_CONSTANT' => 16,
			'OPERATOR_NAME' => 19,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 382,
			'expr_simple' => 10
		}
	},
	{#State 40
		ACTIONS => {
			"-" => 25,
			"::" => 26,
			"+" => 29,
			"%" => 32,
			"^" => 35,
			"*" => 36,
			"/" => 31
		},
		DEFAULT => -14
	},
	{#State 41
		DEFAULT => -8
	},
	{#State 42
		DEFAULT => -29
	},
	{#State 43
		ACTIONS => {
			"::" => 26,
			"%" => 32,
			"^" => 35,
			"*" => 36,
			"/" => 31
		},
		DEFAULT => -16
	},
	{#State 44
		DEFAULT => -310
	},
	{#State 45
		DEFAULT => -260
	},
	{#State 46
		DEFAULT => -154
	},
	{#State 47
		DEFAULT => -243
	},
	{#State 48
		DEFAULT => -224
	},
	{#State 49
		DEFAULT => -155
	},
	{#State 50
		DEFAULT => -64
	},
	{#State 51
		DEFAULT => -229
	},
	{#State 52
		DEFAULT => -340
	},
	{#State 53
		DEFAULT => -158
	},
	{#State 54
		DEFAULT => -292
	},
	{#State 55
		DEFAULT => -201
	},
	{#State 56
		DEFAULT => -178
	},
	{#State 57
		DEFAULT => -336
	},
	{#State 58
		DEFAULT => -152
	},
	{#State 59
		DEFAULT => -285
	},
	{#State 60
		DEFAULT => -121
	},
	{#State 61
		DEFAULT => -115
	},
	{#State 62
		DEFAULT => -179
	},
	{#State 63
		DEFAULT => -27
	},
	{#State 64
		DEFAULT => -118
	},
	{#State 65
		DEFAULT => -265
	},
	{#State 66
		DEFAULT => -109
	},
	{#State 67
		DEFAULT => -238
	},
	{#State 68
		DEFAULT => -205
	},
	{#State 69
		DEFAULT => -172
	},
	{#State 70
		DEFAULT => -103
	},
	{#State 71
		DEFAULT => -305
	},
	{#State 72
		DEFAULT => -355
	},
	{#State 73
		DEFAULT => -69
	},
	{#State 74
		DEFAULT => -184
	},
	{#State 75
		DEFAULT => -176
	},
	{#State 76
		DEFAULT => -213
	},
	{#State 77
		DEFAULT => -200
	},
	{#State 78
		DEFAULT => -100
	},
	{#State 79
		DEFAULT => -98
	},
	{#State 80
		DEFAULT => -348
	},
	{#State 81
		DEFAULT => -247
	},
	{#State 82
		DEFAULT => -218
	},
	{#State 83
		DEFAULT => -316
	},
	{#State 84
		DEFAULT => -303
	},
	{#State 85
		DEFAULT => -163
	},
	{#State 86
		DEFAULT => -106
	},
	{#State 87
		DEFAULT => -342
	},
	{#State 88
		DEFAULT => -87
	},
	{#State 89
		DEFAULT => -79
	},
	{#State 90
		DEFAULT => -66
	},
	{#State 91
		DEFAULT => -93
	},
	{#State 92
		DEFAULT => -225
	},
	{#State 93
		DEFAULT => -209
	},
	{#State 94
		DEFAULT => -298
	},
	{#State 95
		DEFAULT => -338
	},
	{#State 96
		DEFAULT => -254
	},
	{#State 97
		DEFAULT => -309
	},
	{#State 98
		DEFAULT => -71
	},
	{#State 99
		DEFAULT => -240
	},
	{#State 100
		ACTIONS => {
			"." => 383
		},
		DEFAULT => -43
	},
	{#State 101
		DEFAULT => -148
	},
	{#State 102
		DEFAULT => -300
	},
	{#State 103
		DEFAULT => -167
	},
	{#State 104
		DEFAULT => -132
	},
	{#State 105
		DEFAULT => -301
	},
	{#State 106
		DEFAULT => -44
	},
	{#State 107
		DEFAULT => -280
	},
	{#State 108
		DEFAULT => -207
	},
	{#State 109
		DEFAULT => -365
	},
	{#State 110
		DEFAULT => -76
	},
	{#State 111
		DEFAULT => -283
	},
	{#State 112
		DEFAULT => -258
	},
	{#State 113
		DEFAULT => -286
	},
	{#State 114
		DEFAULT => -299
	},
	{#State 115
		DEFAULT => -215
	},
	{#State 116
		DEFAULT => -232
	},
	{#State 117
		DEFAULT => -161
	},
	{#State 118
		DEFAULT => -189
	},
	{#State 119
		DEFAULT => -354
	},
	{#State 120
		DEFAULT => -211
	},
	{#State 121
		DEFAULT => -108
	},
	{#State 122
		DEFAULT => -234
	},
	{#State 123
		DEFAULT => -156
	},
	{#State 124
		DEFAULT => -138
	},
	{#State 125
		DEFAULT => -330
	},
	{#State 126
		DEFAULT => -171
	},
	{#State 127
		DEFAULT => -145
	},
	{#State 128
		DEFAULT => -324
	},
	{#State 129
		DEFAULT => -221
	},
	{#State 130
		DEFAULT => -188
	},
	{#State 131
		DEFAULT => -272
	},
	{#State 132
		DEFAULT => -226
	},
	{#State 133
		DEFAULT => -187
	},
	{#State 134
		DEFAULT => -208
	},
	{#State 135
		DEFAULT => -367
	},
	{#State 136
		DEFAULT => -322
	},
	{#State 137
		DEFAULT => -191
	},
	{#State 138
		DEFAULT => -320
	},
	{#State 139
		DEFAULT => -246
	},
	{#State 140
		DEFAULT => -82
	},
	{#State 141
		DEFAULT => -144
	},
	{#State 142
		DEFAULT => -107
	},
	{#State 143
		DEFAULT => -350
	},
	{#State 144
		DEFAULT => -307
	},
	{#State 145
		DEFAULT => -331
	},
	{#State 146
		DEFAULT => -219
	},
	{#State 147
		DEFAULT => -347
	},
	{#State 148
		DEFAULT => -53
	},
	{#State 149
		DEFAULT => -194
	},
	{#State 150
		DEFAULT => -83
	},
	{#State 151
		DEFAULT => -334
	},
	{#State 152
		DEFAULT => -101
	},
	{#State 153
		DEFAULT => -74
	},
	{#State 154
		DEFAULT => -344
	},
	{#State 155
		DEFAULT => -227
	},
	{#State 156
		DEFAULT => -173
	},
	{#State 157
		DEFAULT => -190
	},
	{#State 158
		DEFAULT => -278
	},
	{#State 159
		DEFAULT => -90
	},
	{#State 160
		DEFAULT => -362
	},
	{#State 161
		DEFAULT => -273
	},
	{#State 162
		DEFAULT => -214
	},
	{#State 163
		DEFAULT => -311
	},
	{#State 164
		DEFAULT => -204
	},
	{#State 165
		DEFAULT => -250
	},
	{#State 166
		DEFAULT => -328
	},
	{#State 167
		DEFAULT => -361
	},
	{#State 168
		DEFAULT => -295
	},
	{#State 169
		DEFAULT => -237
	},
	{#State 170
		DEFAULT => -267
	},
	{#State 171
		DEFAULT => -59
	},
	{#State 172
		DEFAULT => -134
	},
	{#State 173
		DEFAULT => -261
	},
	{#State 174
		DEFAULT => -58
	},
	{#State 175
		DEFAULT => -332
	},
	{#State 176
		DEFAULT => -65
	},
	{#State 177
		DEFAULT => -55
	},
	{#State 178
		DEFAULT => -259
	},
	{#State 179
		DEFAULT => -263
	},
	{#State 180
		DEFAULT => -317
	},
	{#State 181
		DEFAULT => -288
	},
	{#State 182
		DEFAULT => -104
	},
	{#State 183
		DEFAULT => -223
	},
	{#State 184
		DEFAULT => -61
	},
	{#State 185
		DEFAULT => -88
	},
	{#State 186
		DEFAULT => -133
	},
	{#State 187
		DEFAULT => -185
	},
	{#State 188
		DEFAULT => -123
	},
	{#State 189
		ACTIONS => {
			"(" => 384
		},
		DEFAULT => -329
	},
	{#State 190
		DEFAULT => -77
	},
	{#State 191
		DEFAULT => -150
	},
	{#State 192
		DEFAULT => -70
	},
	{#State 193
		DEFAULT => -84
	},
	{#State 194
		DEFAULT => -102
	},
	{#State 195
		DEFAULT => -277
	},
	{#State 196
		DEFAULT => -169
	},
	{#State 197
		DEFAULT => -129
	},
	{#State 198
		DEFAULT => -351
	},
	{#State 199
		DEFAULT => -62
	},
	{#State 200
		DEFAULT => -306
	},
	{#State 201
		DEFAULT => -136
	},
	{#State 202
		DEFAULT => -128
	},
	{#State 203
		DEFAULT => -319
	},
	{#State 204
		DEFAULT => -256
	},
	{#State 205
		DEFAULT => -230
	},
	{#State 206
		DEFAULT => -151
	},
	{#State 207
		DEFAULT => -315
	},
	{#State 208
		DEFAULT => -126
	},
	{#State 209
		DEFAULT => -192
	},
	{#State 210
		ACTIONS => {
			"(" => 385
		},
		DEFAULT => -358
	},
	{#State 211
		DEFAULT => -57
	},
	{#State 212
		DEFAULT => -94
	},
	{#State 213
		DEFAULT => -110
	},
	{#State 214
		DEFAULT => -281
	},
	{#State 215
		DEFAULT => -236
	},
	{#State 216
		DEFAULT => -349
	},
	{#State 217
		DEFAULT => -165
	},
	{#State 218
		DEFAULT => -304
	},
	{#State 219
		DEFAULT => -149
	},
	{#State 220
		DEFAULT => -105
	},
	{#State 221
		DEFAULT => -364
	},
	{#State 222
		DEFAULT => -56
	},
	{#State 223
		DEFAULT => -147
	},
	{#State 224
		DEFAULT => -196
	},
	{#State 225
		DEFAULT => -302
	},
	{#State 226
		DEFAULT => -157
	},
	{#State 227
		DEFAULT => -339
	},
	{#State 228
		DEFAULT => -116
	},
	{#State 229
		DEFAULT => -271
	},
	{#State 230
		DEFAULT => -124
	},
	{#State 231
		DEFAULT => -197
	},
	{#State 232
		DEFAULT => -326
	},
	{#State 233
		DEFAULT => -72
	},
	{#State 234
		DEFAULT => -253
	},
	{#State 235
		DEFAULT => -63
	},
	{#State 236
		DEFAULT => -41
	},
	{#State 237
		DEFAULT => -174
	},
	{#State 238
		DEFAULT => -78
	},
	{#State 239
		DEFAULT => -114
	},
	{#State 240
		DEFAULT => -180
	},
	{#State 241
		DEFAULT => -353
	},
	{#State 242
		ACTIONS => {
			"(" => 386
		},
		DEFAULT => -343
	},
	{#State 243
		DEFAULT => -96
	},
	{#State 244
		DEFAULT => -153
	},
	{#State 245
		DEFAULT => -119
	},
	{#State 246
		DEFAULT => -127
	},
	{#State 247
		DEFAULT => -75
	},
	{#State 248
		DEFAULT => -217
	},
	{#State 249
		DEFAULT => -284
	},
	{#State 250
		DEFAULT => -366
	},
	{#State 251
		DEFAULT => -38
	},
	{#State 252
		DEFAULT => -352
	},
	{#State 253
		DEFAULT => -73
	},
	{#State 254
		DEFAULT => -111
	},
	{#State 255
		DEFAULT => -321
	},
	{#State 256
		DEFAULT => -51
	},
	{#State 257
		DEFAULT => -359
	},
	{#State 258
		DEFAULT => -357
	},
	{#State 259
		DEFAULT => -67
	},
	{#State 260
		DEFAULT => -270
	},
	{#State 261
		DEFAULT => -39
	},
	{#State 262
		DEFAULT => -52
	},
	{#State 263
		DEFAULT => -248
	},
	{#State 264
		DEFAULT => -333
	},
	{#State 265
		DEFAULT => -203
	},
	{#State 266
		DEFAULT => -199
	},
	{#State 267
		DEFAULT => -242
	},
	{#State 268
		DEFAULT => -122
	},
	{#State 269
		DEFAULT => -45
	},
	{#State 270
		DEFAULT => -239
	},
	{#State 271
		DEFAULT => -290
	},
	{#State 272
		DEFAULT => -141
	},
	{#State 273
		DEFAULT => -363
	},
	{#State 274
		DEFAULT => -40
	},
	{#State 275
		DEFAULT => -131
	},
	{#State 276
		DEFAULT => -168
	},
	{#State 277
		DEFAULT => -293
	},
	{#State 278
		DEFAULT => -289
	},
	{#State 279
		DEFAULT => -162
	},
	{#State 280
		DEFAULT => -296
	},
	{#State 281
		DEFAULT => -251
	},
	{#State 282
		DEFAULT => -264
	},
	{#State 283
		DEFAULT => -92
	},
	{#State 284
		DEFAULT => -291
	},
	{#State 285
		DEFAULT => -195
	},
	{#State 286
		DEFAULT => -297
	},
	{#State 287
		DEFAULT => -210
	},
	{#State 288
		DEFAULT => -241
	},
	{#State 289
		DEFAULT => -312
	},
	{#State 290
		DEFAULT => -249
	},
	{#State 291
		DEFAULT => -142
	},
	{#State 292
		DEFAULT => -212
	},
	{#State 293
		DEFAULT => -346
	},
	{#State 294
		DEFAULT => -113
	},
	{#State 295
		DEFAULT => -125
	},
	{#State 296
		DEFAULT => -276
	},
	{#State 297
		DEFAULT => -89
	},
	{#State 298
		DEFAULT => -37
	},
	{#State 299
		DEFAULT => -244
	},
	{#State 300
		DEFAULT => -220
	},
	{#State 301
		DEFAULT => -268
	},
	{#State 302
		DEFAULT => -86
	},
	{#State 303
		DEFAULT => -182
	},
	{#State 304
		DEFAULT => -198
	},
	{#State 305
		DEFAULT => -222
	},
	{#State 306
		DEFAULT => -318
	},
	{#State 307
		DEFAULT => -95
	},
	{#State 308
		DEFAULT => -60
	},
	{#State 309
		DEFAULT => -146
	},
	{#State 310
		DEFAULT => -80
	},
	{#State 311
		DEFAULT => -313
	},
	{#State 312
		DEFAULT => -360
	},
	{#State 313
		DEFAULT => -202
	},
	{#State 314
		DEFAULT => -325
	},
	{#State 315
		DEFAULT => -216
	},
	{#State 316
		DEFAULT => -183
	},
	{#State 317
		DEFAULT => -206
	},
	{#State 318
		DEFAULT => -266
	},
	{#State 319
		DEFAULT => -85
	},
	{#State 320
		DEFAULT => -323
	},
	{#State 321
		DEFAULT => -137
	},
	{#State 322
		DEFAULT => -68
	},
	{#State 323
		DEFAULT => -186
	},
	{#State 324
		DEFAULT => -139
	},
	{#State 325
		DEFAULT => -337
	},
	{#State 326
		DEFAULT => -166
	},
	{#State 327
		DEFAULT => -181
	},
	{#State 328
		DEFAULT => -159
	},
	{#State 329
		DEFAULT => -135
	},
	{#State 330
		DEFAULT => -257
	},
	{#State 331
		DEFAULT => -255
	},
	{#State 332
		DEFAULT => -228
	},
	{#State 333
		DEFAULT => -356
	},
	{#State 334
		DEFAULT => -308
	},
	{#State 335
		DEFAULT => -97
	},
	{#State 336
		DEFAULT => -274
	},
	{#State 337
		DEFAULT => -175
	},
	{#State 338
		DEFAULT => -252
	},
	{#State 339
		DEFAULT => -143
	},
	{#State 340
		DEFAULT => -112
	},
	{#State 341
		DEFAULT => -235
	},
	{#State 342
		DEFAULT => -233
	},
	{#State 343
		DEFAULT => -164
	},
	{#State 344
		DEFAULT => -177
	},
	{#State 345
		DEFAULT => -160
	},
	{#State 346
		DEFAULT => -193
	},
	{#State 347
		DEFAULT => -279
	},
	{#State 348
		DEFAULT => -140
	},
	{#State 349
		DEFAULT => -54
	},
	{#State 350
		DEFAULT => -294
	},
	{#State 351
		DEFAULT => -231
	},
	{#State 352
		DEFAULT => -314
	},
	{#State 353
		DEFAULT => -245
	},
	{#State 354
		DEFAULT => -91
	},
	{#State 355
		DEFAULT => -120
	},
	{#State 356
		DEFAULT => -99
	},
	{#State 357
		DEFAULT => -117
	},
	{#State 358
		DEFAULT => -170
	},
	{#State 359
		DEFAULT => -341
	},
	{#State 360
		DEFAULT => -335
	},
	{#State 361
		DEFAULT => -262
	},
	{#State 362
		DEFAULT => -282
	},
	{#State 363
		DEFAULT => -269
	},
	{#State 364
		DEFAULT => -81
	},
	{#State 365
		DEFAULT => -275
	},
	{#State 366
		DEFAULT => -345
	},
	{#State 367
		DEFAULT => -327
	},
	{#State 368
		DEFAULT => -130
	},
	{#State 369
		DEFAULT => -287
	},
	{#State 370
		ACTIONS => {
			"-" => 25,
			"::" => 26,
			"+" => 29,
			"%" => 32,
			'BETWEEN' => 34,
			"^" => 35,
			"*" => 36,
			'OPERATOR_NAME' => 37,
			"/" => 31
		},
		DEFAULT => -24
	},
	{#State 371
		ACTIONS => {
			"-" => 25,
			"::" => 26,
			"+" => 29,
			'ILIKE' => 30,
			"%" => 32,
			'BETWEEN' => 34,
			"^" => 35,
			"*" => 36,
			'OPERATOR_NAME' => 37,
			'LIKE' => 27,
			"/" => 31
		},
		DEFAULT => -20
	},
	{#State 372
		ACTIONS => {
			"::" => 26,
			"%" => 32,
			"^" => 35,
			"*" => 36,
			"/" => 31
		},
		DEFAULT => -15
	},
	{#State 373
		ACTIONS => {
			"-" => 25,
			"::" => 26,
			"+" => 29,
			"%" => 32,
			'BETWEEN' => 34,
			"^" => 35,
			"*" => 36,
			'OPERATOR_NAME' => 37,
			"/" => 31
		},
		DEFAULT => -25
	},
	{#State 374
		ACTIONS => {
			"::" => 26,
			"^" => 35
		},
		DEFAULT => -19
	},
	{#State 375
		ACTIONS => {
			"::" => 26,
			"^" => 35
		},
		DEFAULT => -18
	},
	{#State 376
		ACTIONS => {
			"-" => 25,
			"::" => 26,
			"<" => 28,
			"+" => 29,
			'ILIKE' => 30,
			"%" => 32,
			'BETWEEN' => 34,
			"^" => 35,
			"*" => 36,
			'OPERATOR_NAME' => 37,
			'LIKE' => 27,
			"/" => 31,
			"=" => 33,
			">" => 39
		},
		DEFAULT => -22
	},
	{#State 377
		ACTIONS => {
			"-" => 25,
			'LIKE' => 27,
			"::" => 26,
			"<" => 28,
			"+" => 29,
			'ILIKE' => 30,
			"%" => 32,
			"/" => 31,
			"=" => 33,
			'AND' => 387,
			'BETWEEN' => 34,
			"^" => 35,
			"*" => 36,
			'OPERATOR_NAME' => 37,
			">" => 39
		}
	},
	{#State 378
		ACTIONS => {
			"::" => 26
		},
		DEFAULT => -23
	},
	{#State 379
		ACTIONS => {
			"::" => 26,
			"^" => 35
		},
		DEFAULT => -17
	},
	{#State 380
		ACTIONS => {
			"-" => 25,
			"::" => 26,
			"+" => 29,
			"%" => 32,
			"^" => 35,
			"*" => 36,
			"/" => 31
		},
		DEFAULT => -26
	},
	{#State 381
		DEFAULT => -10
	},
	{#State 382
		ACTIONS => {
			"-" => 25,
			"::" => 26,
			"+" => 29,
			'ILIKE' => 30,
			"%" => 32,
			'BETWEEN' => 34,
			"^" => 35,
			"*" => 36,
			'OPERATOR_NAME' => 37,
			'LIKE' => 27,
			"/" => 31
		},
		DEFAULT => -21
	},
	{#State 383
		ACTIONS => {
			'INPUT' => 46,
			'SYSID' => 45,
			'JOIN' => 44,
			'REPLACE' => 48,
			'SERIALIZABLE' => 47,
			'AT' => 50,
			'INSENSITIVE' => 49,
			'RETURNS' => 51,
			'NCHAR' => 52,
			'INVOKER' => 53,
			'WORK' => 54,
			'PASSING' => 55,
			'MODE' => 56,
			'INTEGER' => 57,
			'INHERITS' => 58,
			'ESCAPE' => 60,
			'VALUE' => 59,
			'DROP' => 61,
			'MONTH' => 62,
			'ENCODING' => 64,
			'TEMPLATE' => 65,
			'DICTIONARY' => 66,
			'SEARCH' => 67,
			'PREPARE' => 68,
			'LOCK' => 69,
			'DEFAULTS' => 70,
			'FULL' => 71,
			'TREAT' => 72,
			'BY' => 73,
			'NO' => 74,
			'MINUTE' => 75,
			'DATA' => 79,
			'DAY' => 78,
			'PARTITION' => 77,
			'RANGE' => 76,
			'REF' => 82,
			'SHARE' => 81,
			'REAL' => 80,
			'OVER' => 83,
			'LARGE' => 85,
			'CURRENT_SCHEMA' => 84,
			'DELETE' => 86,
			'NULLIF' => 87,
			'CONNECTION' => 88,
			'BACKWARD' => 90,
			'CLOSE' => 89,
			'COST' => 91,
			'REPLICA' => 92,
			'PRIVILEGES' => 93,
			'ZONE' => 94,
			'LEAST' => 95,
			'STATISTICS' => 96,
			'ISNULL' => 97,
			'CALLED' => 98,
			'SECURITY' => 99,
			'INCREMENT' => 101,
			'BINARY' => 102,
			'LEVEL' => 103,
			'FORCE' => 104,
			'CONCURRENTLY' => 105,
			'UPDATE' => 107,
			'PRESERVE' => 108,
			'XMLPI' => 109,
			'CHARACTERISTICS' => 110,
			'VALIDATE' => 111,
			'STRICT' => 112,
			'VARYING' => 113,
			'AUTHORIZATION' => 114,
			'REASSIGN' => 115,
			'LABEL' => 117,
			'ROLLBACK' => 116,
			'OBJECT' => 118,
			'DELIMITERS' => 121,
			'PROCEDURE' => 120,
			'TIMESTAMP' => 119,
			'RULE' => 122,
			'INSERT' => 123,
			'HANDLER' => 124,
			'LOCATION' => 126,
			'EXISTS' => 125,
			'IMMUTABLE' => 127,
			'RELEASE' => 129,
			'BOOLEAN' => 128,
			'NULLS' => 130,
			'TYPE' => 131,
			'RESET' => 132,
			'NOWAIT' => 133,
			'PRIOR' => 134,
			'OFF' => 137,
			'BIGINT' => 136,
			'XMLSERIALIZE' => 135,
			'VERBOSE' => 138,
			'SET' => 139,
			'IMMEDIATE' => 141,
			'COMMENT' => 140,
			'DELIMITER' => 142,
			'SETOF' => 143,
			'INNER' => 144,
			'EXTRACT' => 145,
			'REINDEX' => 146,
			'PRECISION' => 147,
			'ACCESS' => 148,
			'OPTION' => 149,
			'COMMENTS' => 150,
			'INOUT' => 151,
			'DEALLOCATE' => 152,
			'CATALOG' => 153,
			'OUT' => 154,
			'RESTART' => 155,
			'MAPPING' => 156,
			'OF' => 157,
			'UNLOGGED' => 158,
			'CONTINUE' => 159,
			'XMLEXISTS' => 160,
			'UNBOUNDED' => 161,
			'READ' => 162,
			'LEFT' => 163,
			'PRECEDING' => 164,
			'STABLE' => 165,
			'DEC' => 166,
			'XMLELEMENT' => 167,
			'XML' => 168,
			'SCROLL' => 169,
			'TEXT' => 170,
			'FUNCTION' => 172,
			'ALSO' => 171,
			'SYSTEM' => 173,
			'AGGREGATE' => 174,
			'FLOAT' => 175,
			'ATTRIBUTE' => 176,
			'ADD' => 177,
			'STRIP' => 178,
			'TABLESPACE' => 179,
			'OVERLAPS' => 180,
			'DEFERRED' => 182,
			'VIEW' => 181,
			'REPEATABLE' => 183,
			'ALWAYS' => 184,
			'CONSTRAINTS' => 185,
			'FORWARD' => 186,
			'NOTHING' => 187,
			'EXCLUDING' => 188,
			'DECIMAL' => 189,
			'CHECKPOINT' => 190,
			'INDEXES' => 191,
			'CACHE' => 192,
			'COMMIT' => 193,
			'DECLARE' => 194,
			'UNLISTEN' => 195,
			'LOAD' => 196,
			'FAMILY' => 197,
			'SMALLINT' => 198,
			'ASSERTION' => 199,
			'ILIKE' => 200,
			'GLOBAL' => 201,
			'EXTERNAL' => 202,
			'SIMILAR' => 203,
			'STDOUT' => 204,
			'REVOKE' => 205,
			'INHERIT' => 206,
			'OUTER' => 207,
			'EXPLAIN' => 208,
			'VARCHAR' => 210,
			'OIDS' => 209,
			'AFTER' => 211,
			'CSV' => 212,
			'DISABLE' => 213,
			'VACUUM' => 214,
			'SCHEMA' => 215,
			'ROW' => 216,
			'LC_COLLATE' => 217,
			'FREEZE' => 218,
			'INDEX' => 219,
			'DEFINER' => 220,
			'XMLPARSE' => 221,
			'OWNED' => 224,
			'INCLUDING' => 223,
			'ADMIN' => 222,
			'CROSS' => 225,
			'INSTEAD' => 226,
			'NATIONAL' => 227,
			'EACH' => 228,
			'TRUSTED' => 229,
			'OWNER' => 231,
			'EXCLUSIVE' => 230,
			'CHARACTER' => 232,
			'STATEMENT' => 234,
			'CASCADE' => 233,
			'ASSIGNMENT' => 235,
			'MATCH' => 237,
			'MOVE' => 240,
			'DOUBLE' => 239,
			'CLASS' => 238,
			'TIME' => 241,
			'NUMERIC' => 242,
			'INLINE' => 244,
			'CURSOR' => 243,
			'EXTENSION' => 246,
			'ENCRYPTED' => 245,
			'CHAIN' => 247,
			'RECURSIVE' => 248,
			'VALIDATOR' => 249,
			'XMLROOT' => 250,
			'UQUOTED_IDENTIFIER' => 251,
			'SUBSTRING' => 252,
			'CASCADED' => 253,
			'DISCARD' => 254,
			'BETWEEN' => 255,
			'ABORT' => 256,
			'XMLATTRIBUTES' => 257,
			'VALUES' => 258,
			'TRUNCATE' => 260,
			'BEFORE' => 259,
			'SHOW' => 263,
			'ABSOLUTE' => 262,
			'IDENTIFIER' => 261,
			'GREATEST' => 264,
			'PLANS' => 265,
			'PARTIAL' => 266,
			'SEQUENCES' => 267,
			'EXCLUDE' => 268,
			'WHITESPACE' => 271,
			'SECOND' => 270,
			'HOUR' => 272,
			'XMLFOREST' => 273,
			'FOLLOWING' => 275,
			'WRAPPER' => 277,
			'LISTEN' => 276,
			'VOLATILE' => 278,
			'LANGUAGE' => 279,
			'YEAR' => 280,
			'TEMP' => 282,
			'STANDALONE' => 281,
			'COPY' => 283,
			'WITHOUT' => 284,
			'OPTIONS' => 285,
			'YES' => 286,
			'PROCEDURAL' => 287,
			'SEQUENCE' => 288,
			'LIKE' => 289,
			'SIMPLE' => 290,
			'QUOTE' => 292,
			'IDENTITY' => 291,
			'POSITION' => 293,
			'EXECUTE' => 295,
			'DOMAIN' => 294,
			'UNKNOWN' => 296,
			'CONTENT' => 297,
			'QUOTED_IDENTIFIER' => 298,
			'SERVER' => 299,
			'RELATIVE' => 300,
			'TRANSACTION' => 301,
			'NAMES' => 303,
			'CONFIGURATION' => 302,
			'RENAME' => 305,
			'PARSER' => 304,
			'ALTER' => 308,
			'CURRENT' => 307,
			'RIGHT' => 306,
			'IMPLICIT' => 309,
			'CLUSTER' => 310,
			'NATURAL' => 311,
			'XMLCONCAT' => 312,
			'PASSWORD' => 313,
			'CHAR' => 314,
			'RECHECK' => 315,
			'NEXT' => 316,
			'PREPARED' => 317,
			'TEMPORARY' => 318,
			'COMMITTED' => 319,
			'GRANTED' => 321,
			'BIT' => 320,
			'BEGIN' => 322,
			'NOTIFY' => 323,
			'HEADER' => 324,
			'INTERVAL' => 325,
			'LC_CTYPE' => 326,
			'NAME' => 327,
			'FUNCTIONS' => 329,
			'ISOLATION' => 328,
			'STORAGE' => 330,
			'STDIN' => 331,
			'RESTRICT' => 332,
			'CYCLE' => 335,
			'UNCOMMITTED' => 336,
			'IS' => 334,
			'TRIM' => 333,
			'MAXVALUE' => 337,
			'START' => 338,
			'DOCUMENT' => 340,
			'IF' => 339,
			'SAVEPOINT' => 341,
			'ROWS' => 342,
			'LAST' => 343,
			'MINVALUE' => 344,
			'KEY' => 345,
			'OPERATOR' => 346,
			'UNTIL' => 347,
			'HOLD' => 348,
			'ACTION' => 349,
			'WRITE' => 350,
			'ROLE' => 351,
			'NOTNULL' => 352,
			'SESSION' => 353,
			'CONVERSION' => 354,
			'DATABASE' => 356,
			'ENUM' => 355,
			'ENABLE' => 357,
			'LOCAL' => 358,
			'NONE' => 359,
			'TABLES' => 361,
			'VALID' => 362,
			'INT' => 360,
			'TRIGGER' => 363,
			'COLLATION' => 364,
			'UNENCRYPTED' => 365,
			'OVERLAY' => 366,
			'FIRST' => 368,
			'COALESCE' => 367,
			'VERSION' => 369
		},
		GOTOS => {
			'identifier' => 388,
			'keywords_reserved_ok_for_functions_or_types' => 106,
			'simple_type' => 389,
			'keywords_notreserved' => 274,
			'keywords_notreserved_not_ok_for_functions_or_types' => 269
		}
	},
	{#State 384
		ACTIONS => {
			'INTEGER_CONSTANT' => 390
		}
	},
	{#State 385
		ACTIONS => {
			'INTEGER_CONSTANT' => 391
		}
	},
	{#State 386
		ACTIONS => {
			'INTEGER_CONSTANT' => 392
		}
	},
	{#State 387
		ACTIONS => {
			'BITSTRING_CONSTANT' => 9,
			'XBITSTRING_CONSTANT' => 8,
			'STRING_CONSTANT' => 14,
			'USTRING_CONSTANT' => 12,
			"(" => 15,
			'ESTRING_CONSTANT' => 17,
			'NUMERIC_CONSTANT' => 16,
			'OPERATOR_NAME' => 19,
			'INTEGER_CONSTANT' => 21
		},
		GOTOS => {
			'literal_value' => 13,
			'expr' => 393,
			'expr_simple' => 10
		}
	},
	{#State 388
		DEFAULT => -43
	},
	{#State 389
		DEFAULT => -42
	},
	{#State 390
		ACTIONS => {
			"," => 394,
			")" => 395
		}
	},
	{#State 391
		ACTIONS => {
			")" => 396
		}
	},
	{#State 392
		ACTIONS => {
			"," => 397,
			")" => 398
		}
	},
	{#State 393
		ACTIONS => {
			"-" => 25,
			"::" => 26,
			"<" => 28,
			"+" => 29,
			'ILIKE' => 30,
			"%" => 32,
			'BETWEEN' => 34,
			"^" => 35,
			"*" => 36,
			'OPERATOR_NAME' => 37,
			'LIKE' => 27,
			"/" => 31,
			"=" => 33,
			">" => 39
		},
		DEFAULT => -12
	},
	{#State 394
		ACTIONS => {
			'INTEGER_CONSTANT' => 399
		}
	},
	{#State 395
		DEFAULT => -48
	},
	{#State 396
		DEFAULT => -50
	},
	{#State 397
		ACTIONS => {
			'INTEGER_CONSTANT' => 400
		}
	},
	{#State 398
		DEFAULT => -46
	},
	{#State 399
		ACTIONS => {
			")" => 401
		}
	},
	{#State 400
		ACTIONS => {
			")" => 402
		}
	},
	{#State 401
		DEFAULT => -49
	},
	{#State 402
		DEFAULT => -47
	}
],
    yyrules  =>
[
	[#Rule _SUPERSTART
		 '$start', 2, undef
#line 3806 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule top_1
		 'top', 1,
sub {
#line 21 "SQL.eyp"
 $_[1] }
#line 3813 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_2
		 'statements', 1,
sub {
#line 24 "SQL.eyp"
 [ $_[1] ] }
#line 3820 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_3
		 'statements', 3,
sub {
#line 25 "SQL.eyp"
 push @{ $_[1] }, $_[3]; $_[1] }
#line 3827 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statements_4
		 'statements', 2,
sub {
#line 26 "SQL.eyp"
 $_[1] }
#line 3834 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule statement_5
		 'statement', 1,
sub {
#line 29 "SQL.eyp"
 $_[1] }
#line 3841 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule select_stmt_6
		 'select_stmt', 2,
sub {
#line 32 "SQL.eyp"

                                        my $select = $factory->make( 'Select' );
                                        for my $rc ( @{ $_[2] } ) {
                                            my $res = $factory->make('Result_Column');
                                            $res->value( $rc->[0] );
                                            $res->alias( $rc->[1] ) if defined $rc->[1];
                                            $select->add_result( $res )
                                        }
                                        $select
                                    }
#line 3857 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_columns_7
		 'result_columns', 1,
sub {
#line 44 "SQL.eyp"
 [ $_[1] ] }
#line 3864 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_columns_8
		 'result_columns', 3,
sub {
#line 45 "SQL.eyp"
 push @{ $_[1] }, $_[3]; $_[1] }
#line 3871 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_column_9
		 'result_column', 1,
sub {
#line 48 "SQL.eyp"
 [ $_[1], undef ] }
#line 3878 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule result_column_10
		 'result_column', 3,
sub {
#line 49 "SQL.eyp"
 [ $_[1], $_[3] ] }
#line 3885 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_11
		 'expr', 1,
sub {
#line 52 "SQL.eyp"
 $_[1] }
#line 3892 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_12
		 'expr', 5,
sub {
#line 53 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => [ $_[3], $_[5] ] ) }
#line 3899 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_13
		 'expr', 2,
sub {
#line 54 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1] ) }
#line 3906 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_14
		 'expr', 2,
sub {
#line 55 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[1], 'right' => $_[2] ) }
#line 3913 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_15
		 'expr', 3,
sub {
#line 56 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 3920 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_16
		 'expr', 3,
sub {
#line 57 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 3927 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_17
		 'expr', 3,
sub {
#line 58 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 3934 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_18
		 'expr', 3,
sub {
#line 59 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 3941 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_19
		 'expr', 3,
sub {
#line 60 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 3948 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_20
		 'expr', 3,
sub {
#line 61 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 3955 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_21
		 'expr', 3,
sub {
#line 62 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 3962 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_22
		 'expr', 3,
sub {
#line 63 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 3969 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_23
		 'expr', 3,
sub {
#line 64 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 3976 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_24
		 'expr', 3,
sub {
#line 65 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 3983 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_25
		 'expr', 3,
sub {
#line 66 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 3990 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_26
		 'expr', 3,
sub {
#line 67 "SQL.eyp"
 $factory->make( 'Operation', 'operator' => $_[2], 'left' => $_[1], 'right' => $_[3] ) }
#line 3997 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_27
		 'expr', 3,
sub {
#line 68 "SQL.eyp"
 $factory->make( 'Cast', 'method' => '::', 'value' => $_[1], 'final_type' => $_[3] ) }
#line 4004 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_simple_28
		 'expr_simple', 1,
sub {
#line 71 "SQL.eyp"
 $_[1] }
#line 4011 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule expr_simple_29
		 'expr_simple', 3,
sub {
#line 72 "SQL.eyp"
 $_[2] }
#line 4018 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_30
		 'literal_value', 1,
sub {
#line 75 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'STRING_CONSTANT',     'value' => $_[1] ) }
#line 4025 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_31
		 'literal_value', 1,
sub {
#line 76 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'USTRING_CONSTANT',    'value' => $_[1] ) }
#line 4032 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_32
		 'literal_value', 1,
sub {
#line 77 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'ESTRING_CONSTANT',    'value' => $_[1] ) }
#line 4039 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_33
		 'literal_value', 1,
sub {
#line 78 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'BITSTRING_CONSTANT',  'value' => $_[1] ) }
#line 4046 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_34
		 'literal_value', 1,
sub {
#line 79 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'XBITSTRING_CONSTANT', 'value' => $_[1] ) }
#line 4053 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_35
		 'literal_value', 1,
sub {
#line 80 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'NUMERIC_CONSTANT',    'value' => $_[1] ) }
#line 4060 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule literal_value_36
		 'literal_value', 1,
sub {
#line 81 "SQL.eyp"
 $factory->make( 'Literal_Value', 'type', => 'INTEGER_CONSTANT',    'value' => $_[1] ) }
#line 4067 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_37
		 'identifier', 1,
sub {
#line 84 "SQL.eyp"
 $_[1] }
#line 4074 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_38
		 'identifier', 1,
sub {
#line 85 "SQL.eyp"
 $_[1] }
#line 4081 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_39
		 'identifier', 1,
sub {
#line 86 "SQL.eyp"
 $_[1] }
#line 4088 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule identifier_40
		 'identifier', 1,
sub {
#line 87 "SQL.eyp"
 $_[1] }
#line 4095 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule normal_type_41
		 'normal_type', 1,
sub {
#line 90 "SQL.eyp"
 $_[1] }
#line 4102 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule normal_type_42
		 'normal_type', 3,
sub {
#line 91 "SQL.eyp"
 $_[3]->schema( $_[1] ); $_[3] }
#line 4109 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_43
		 'simple_type', 1,
sub {
#line 94 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1] ) }
#line 4116 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_44
		 'simple_type', 1,
sub {
#line 95 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1] ) }
#line 4123 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_45
		 'simple_type', 1,
sub {
#line 96 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1] ) }
#line 4130 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_46
		 'simple_type', 4,
sub {
#line 97 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1], 'limits' => [ $_[3] ] ) }
#line 4137 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_47
		 'simple_type', 6,
sub {
#line 98 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1], 'limits' => [ $_[3], $_[5] ] ) }
#line 4144 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_48
		 'simple_type', 4,
sub {
#line 99 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1], 'limits' => [ $_[3] ] ) }
#line 4151 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_49
		 'simple_type', 6,
sub {
#line 100 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1], 'limits' => [ $_[3], $_[5] ] ) }
#line 4158 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule simple_type_50
		 'simple_type', 4,
sub {
#line 101 "SQL.eyp"
 $factory->make( 'Type', 'name' => $_[1], 'limits' => [ $_[3] ] ) }
#line 4165 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_51
		 'keywords_notreserved', 1, undef
#line 4169 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_52
		 'keywords_notreserved', 1, undef
#line 4173 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_53
		 'keywords_notreserved', 1, undef
#line 4177 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_54
		 'keywords_notreserved', 1, undef
#line 4181 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_55
		 'keywords_notreserved', 1, undef
#line 4185 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_56
		 'keywords_notreserved', 1, undef
#line 4189 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_57
		 'keywords_notreserved', 1, undef
#line 4193 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_58
		 'keywords_notreserved', 1, undef
#line 4197 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_59
		 'keywords_notreserved', 1, undef
#line 4201 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_60
		 'keywords_notreserved', 1, undef
#line 4205 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_61
		 'keywords_notreserved', 1, undef
#line 4209 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_62
		 'keywords_notreserved', 1, undef
#line 4213 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_63
		 'keywords_notreserved', 1, undef
#line 4217 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_64
		 'keywords_notreserved', 1, undef
#line 4221 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_65
		 'keywords_notreserved', 1, undef
#line 4225 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_66
		 'keywords_notreserved', 1, undef
#line 4229 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_67
		 'keywords_notreserved', 1, undef
#line 4233 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_68
		 'keywords_notreserved', 1, undef
#line 4237 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_69
		 'keywords_notreserved', 1, undef
#line 4241 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_70
		 'keywords_notreserved', 1, undef
#line 4245 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_71
		 'keywords_notreserved', 1, undef
#line 4249 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_72
		 'keywords_notreserved', 1, undef
#line 4253 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_73
		 'keywords_notreserved', 1, undef
#line 4257 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_74
		 'keywords_notreserved', 1, undef
#line 4261 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_75
		 'keywords_notreserved', 1, undef
#line 4265 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_76
		 'keywords_notreserved', 1, undef
#line 4269 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_77
		 'keywords_notreserved', 1, undef
#line 4273 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_78
		 'keywords_notreserved', 1, undef
#line 4277 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_79
		 'keywords_notreserved', 1, undef
#line 4281 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_80
		 'keywords_notreserved', 1, undef
#line 4285 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_81
		 'keywords_notreserved', 1, undef
#line 4289 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_82
		 'keywords_notreserved', 1, undef
#line 4293 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_83
		 'keywords_notreserved', 1, undef
#line 4297 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_84
		 'keywords_notreserved', 1, undef
#line 4301 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_85
		 'keywords_notreserved', 1, undef
#line 4305 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_86
		 'keywords_notreserved', 1, undef
#line 4309 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_87
		 'keywords_notreserved', 1, undef
#line 4313 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_88
		 'keywords_notreserved', 1, undef
#line 4317 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_89
		 'keywords_notreserved', 1, undef
#line 4321 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_90
		 'keywords_notreserved', 1, undef
#line 4325 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_91
		 'keywords_notreserved', 1, undef
#line 4329 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_92
		 'keywords_notreserved', 1, undef
#line 4333 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_93
		 'keywords_notreserved', 1, undef
#line 4337 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_94
		 'keywords_notreserved', 1, undef
#line 4341 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_95
		 'keywords_notreserved', 1, undef
#line 4345 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_96
		 'keywords_notreserved', 1, undef
#line 4349 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_97
		 'keywords_notreserved', 1, undef
#line 4353 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_98
		 'keywords_notreserved', 1, undef
#line 4357 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_99
		 'keywords_notreserved', 1, undef
#line 4361 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_100
		 'keywords_notreserved', 1, undef
#line 4365 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_101
		 'keywords_notreserved', 1, undef
#line 4369 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_102
		 'keywords_notreserved', 1, undef
#line 4373 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_103
		 'keywords_notreserved', 1, undef
#line 4377 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_104
		 'keywords_notreserved', 1, undef
#line 4381 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_105
		 'keywords_notreserved', 1, undef
#line 4385 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_106
		 'keywords_notreserved', 1, undef
#line 4389 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_107
		 'keywords_notreserved', 1, undef
#line 4393 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_108
		 'keywords_notreserved', 1, undef
#line 4397 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_109
		 'keywords_notreserved', 1, undef
#line 4401 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_110
		 'keywords_notreserved', 1, undef
#line 4405 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_111
		 'keywords_notreserved', 1, undef
#line 4409 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_112
		 'keywords_notreserved', 1, undef
#line 4413 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_113
		 'keywords_notreserved', 1, undef
#line 4417 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_114
		 'keywords_notreserved', 1, undef
#line 4421 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_115
		 'keywords_notreserved', 1, undef
#line 4425 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_116
		 'keywords_notreserved', 1, undef
#line 4429 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_117
		 'keywords_notreserved', 1, undef
#line 4433 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_118
		 'keywords_notreserved', 1, undef
#line 4437 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_119
		 'keywords_notreserved', 1, undef
#line 4441 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_120
		 'keywords_notreserved', 1, undef
#line 4445 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_121
		 'keywords_notreserved', 1, undef
#line 4449 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_122
		 'keywords_notreserved', 1, undef
#line 4453 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_123
		 'keywords_notreserved', 1, undef
#line 4457 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_124
		 'keywords_notreserved', 1, undef
#line 4461 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_125
		 'keywords_notreserved', 1, undef
#line 4465 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_126
		 'keywords_notreserved', 1, undef
#line 4469 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_127
		 'keywords_notreserved', 1, undef
#line 4473 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_128
		 'keywords_notreserved', 1, undef
#line 4477 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_129
		 'keywords_notreserved', 1, undef
#line 4481 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_130
		 'keywords_notreserved', 1, undef
#line 4485 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_131
		 'keywords_notreserved', 1, undef
#line 4489 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_132
		 'keywords_notreserved', 1, undef
#line 4493 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_133
		 'keywords_notreserved', 1, undef
#line 4497 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_134
		 'keywords_notreserved', 1, undef
#line 4501 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_135
		 'keywords_notreserved', 1, undef
#line 4505 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_136
		 'keywords_notreserved', 1, undef
#line 4509 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_137
		 'keywords_notreserved', 1, undef
#line 4513 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_138
		 'keywords_notreserved', 1, undef
#line 4517 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_139
		 'keywords_notreserved', 1, undef
#line 4521 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_140
		 'keywords_notreserved', 1, undef
#line 4525 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_141
		 'keywords_notreserved', 1, undef
#line 4529 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_142
		 'keywords_notreserved', 1, undef
#line 4533 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_143
		 'keywords_notreserved', 1, undef
#line 4537 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_144
		 'keywords_notreserved', 1, undef
#line 4541 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_145
		 'keywords_notreserved', 1, undef
#line 4545 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_146
		 'keywords_notreserved', 1, undef
#line 4549 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_147
		 'keywords_notreserved', 1, undef
#line 4553 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_148
		 'keywords_notreserved', 1, undef
#line 4557 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_149
		 'keywords_notreserved', 1, undef
#line 4561 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_150
		 'keywords_notreserved', 1, undef
#line 4565 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_151
		 'keywords_notreserved', 1, undef
#line 4569 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_152
		 'keywords_notreserved', 1, undef
#line 4573 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_153
		 'keywords_notreserved', 1, undef
#line 4577 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_154
		 'keywords_notreserved', 1, undef
#line 4581 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_155
		 'keywords_notreserved', 1, undef
#line 4585 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_156
		 'keywords_notreserved', 1, undef
#line 4589 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_157
		 'keywords_notreserved', 1, undef
#line 4593 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_158
		 'keywords_notreserved', 1, undef
#line 4597 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_159
		 'keywords_notreserved', 1, undef
#line 4601 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_160
		 'keywords_notreserved', 1, undef
#line 4605 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_161
		 'keywords_notreserved', 1, undef
#line 4609 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_162
		 'keywords_notreserved', 1, undef
#line 4613 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_163
		 'keywords_notreserved', 1, undef
#line 4617 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_164
		 'keywords_notreserved', 1, undef
#line 4621 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_165
		 'keywords_notreserved', 1, undef
#line 4625 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_166
		 'keywords_notreserved', 1, undef
#line 4629 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_167
		 'keywords_notreserved', 1, undef
#line 4633 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_168
		 'keywords_notreserved', 1, undef
#line 4637 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_169
		 'keywords_notreserved', 1, undef
#line 4641 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_170
		 'keywords_notreserved', 1, undef
#line 4645 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_171
		 'keywords_notreserved', 1, undef
#line 4649 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_172
		 'keywords_notreserved', 1, undef
#line 4653 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_173
		 'keywords_notreserved', 1, undef
#line 4657 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_174
		 'keywords_notreserved', 1, undef
#line 4661 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_175
		 'keywords_notreserved', 1, undef
#line 4665 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_176
		 'keywords_notreserved', 1, undef
#line 4669 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_177
		 'keywords_notreserved', 1, undef
#line 4673 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_178
		 'keywords_notreserved', 1, undef
#line 4677 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_179
		 'keywords_notreserved', 1, undef
#line 4681 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_180
		 'keywords_notreserved', 1, undef
#line 4685 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_181
		 'keywords_notreserved', 1, undef
#line 4689 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_182
		 'keywords_notreserved', 1, undef
#line 4693 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_183
		 'keywords_notreserved', 1, undef
#line 4697 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_184
		 'keywords_notreserved', 1, undef
#line 4701 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_185
		 'keywords_notreserved', 1, undef
#line 4705 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_186
		 'keywords_notreserved', 1, undef
#line 4709 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_187
		 'keywords_notreserved', 1, undef
#line 4713 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_188
		 'keywords_notreserved', 1, undef
#line 4717 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_189
		 'keywords_notreserved', 1, undef
#line 4721 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_190
		 'keywords_notreserved', 1, undef
#line 4725 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_191
		 'keywords_notreserved', 1, undef
#line 4729 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_192
		 'keywords_notreserved', 1, undef
#line 4733 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_193
		 'keywords_notreserved', 1, undef
#line 4737 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_194
		 'keywords_notreserved', 1, undef
#line 4741 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_195
		 'keywords_notreserved', 1, undef
#line 4745 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_196
		 'keywords_notreserved', 1, undef
#line 4749 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_197
		 'keywords_notreserved', 1, undef
#line 4753 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_198
		 'keywords_notreserved', 1, undef
#line 4757 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_199
		 'keywords_notreserved', 1, undef
#line 4761 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_200
		 'keywords_notreserved', 1, undef
#line 4765 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_201
		 'keywords_notreserved', 1, undef
#line 4769 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_202
		 'keywords_notreserved', 1, undef
#line 4773 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_203
		 'keywords_notreserved', 1, undef
#line 4777 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_204
		 'keywords_notreserved', 1, undef
#line 4781 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_205
		 'keywords_notreserved', 1, undef
#line 4785 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_206
		 'keywords_notreserved', 1, undef
#line 4789 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_207
		 'keywords_notreserved', 1, undef
#line 4793 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_208
		 'keywords_notreserved', 1, undef
#line 4797 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_209
		 'keywords_notreserved', 1, undef
#line 4801 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_210
		 'keywords_notreserved', 1, undef
#line 4805 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_211
		 'keywords_notreserved', 1, undef
#line 4809 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_212
		 'keywords_notreserved', 1, undef
#line 4813 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_213
		 'keywords_notreserved', 1, undef
#line 4817 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_214
		 'keywords_notreserved', 1, undef
#line 4821 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_215
		 'keywords_notreserved', 1, undef
#line 4825 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_216
		 'keywords_notreserved', 1, undef
#line 4829 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_217
		 'keywords_notreserved', 1, undef
#line 4833 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_218
		 'keywords_notreserved', 1, undef
#line 4837 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_219
		 'keywords_notreserved', 1, undef
#line 4841 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_220
		 'keywords_notreserved', 1, undef
#line 4845 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_221
		 'keywords_notreserved', 1, undef
#line 4849 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_222
		 'keywords_notreserved', 1, undef
#line 4853 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_223
		 'keywords_notreserved', 1, undef
#line 4857 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_224
		 'keywords_notreserved', 1, undef
#line 4861 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_225
		 'keywords_notreserved', 1, undef
#line 4865 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_226
		 'keywords_notreserved', 1, undef
#line 4869 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_227
		 'keywords_notreserved', 1, undef
#line 4873 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_228
		 'keywords_notreserved', 1, undef
#line 4877 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_229
		 'keywords_notreserved', 1, undef
#line 4881 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_230
		 'keywords_notreserved', 1, undef
#line 4885 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_231
		 'keywords_notreserved', 1, undef
#line 4889 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_232
		 'keywords_notreserved', 1, undef
#line 4893 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_233
		 'keywords_notreserved', 1, undef
#line 4897 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_234
		 'keywords_notreserved', 1, undef
#line 4901 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_235
		 'keywords_notreserved', 1, undef
#line 4905 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_236
		 'keywords_notreserved', 1, undef
#line 4909 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_237
		 'keywords_notreserved', 1, undef
#line 4913 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_238
		 'keywords_notreserved', 1, undef
#line 4917 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_239
		 'keywords_notreserved', 1, undef
#line 4921 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_240
		 'keywords_notreserved', 1, undef
#line 4925 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_241
		 'keywords_notreserved', 1, undef
#line 4929 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_242
		 'keywords_notreserved', 1, undef
#line 4933 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_243
		 'keywords_notreserved', 1, undef
#line 4937 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_244
		 'keywords_notreserved', 1, undef
#line 4941 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_245
		 'keywords_notreserved', 1, undef
#line 4945 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_246
		 'keywords_notreserved', 1, undef
#line 4949 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_247
		 'keywords_notreserved', 1, undef
#line 4953 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_248
		 'keywords_notreserved', 1, undef
#line 4957 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_249
		 'keywords_notreserved', 1, undef
#line 4961 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_250
		 'keywords_notreserved', 1, undef
#line 4965 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_251
		 'keywords_notreserved', 1, undef
#line 4969 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_252
		 'keywords_notreserved', 1, undef
#line 4973 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_253
		 'keywords_notreserved', 1, undef
#line 4977 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_254
		 'keywords_notreserved', 1, undef
#line 4981 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_255
		 'keywords_notreserved', 1, undef
#line 4985 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_256
		 'keywords_notreserved', 1, undef
#line 4989 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_257
		 'keywords_notreserved', 1, undef
#line 4993 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_258
		 'keywords_notreserved', 1, undef
#line 4997 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_259
		 'keywords_notreserved', 1, undef
#line 5001 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_260
		 'keywords_notreserved', 1, undef
#line 5005 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_261
		 'keywords_notreserved', 1, undef
#line 5009 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_262
		 'keywords_notreserved', 1, undef
#line 5013 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_263
		 'keywords_notreserved', 1, undef
#line 5017 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_264
		 'keywords_notreserved', 1, undef
#line 5021 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_265
		 'keywords_notreserved', 1, undef
#line 5025 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_266
		 'keywords_notreserved', 1, undef
#line 5029 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_267
		 'keywords_notreserved', 1, undef
#line 5033 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_268
		 'keywords_notreserved', 1, undef
#line 5037 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_269
		 'keywords_notreserved', 1, undef
#line 5041 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_270
		 'keywords_notreserved', 1, undef
#line 5045 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_271
		 'keywords_notreserved', 1, undef
#line 5049 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_272
		 'keywords_notreserved', 1, undef
#line 5053 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_273
		 'keywords_notreserved', 1, undef
#line 5057 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_274
		 'keywords_notreserved', 1, undef
#line 5061 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_275
		 'keywords_notreserved', 1, undef
#line 5065 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_276
		 'keywords_notreserved', 1, undef
#line 5069 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_277
		 'keywords_notreserved', 1, undef
#line 5073 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_278
		 'keywords_notreserved', 1, undef
#line 5077 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_279
		 'keywords_notreserved', 1, undef
#line 5081 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_280
		 'keywords_notreserved', 1, undef
#line 5085 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_281
		 'keywords_notreserved', 1, undef
#line 5089 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_282
		 'keywords_notreserved', 1, undef
#line 5093 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_283
		 'keywords_notreserved', 1, undef
#line 5097 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_284
		 'keywords_notreserved', 1, undef
#line 5101 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_285
		 'keywords_notreserved', 1, undef
#line 5105 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_286
		 'keywords_notreserved', 1, undef
#line 5109 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_287
		 'keywords_notreserved', 1, undef
#line 5113 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_288
		 'keywords_notreserved', 1, undef
#line 5117 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_289
		 'keywords_notreserved', 1, undef
#line 5121 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_290
		 'keywords_notreserved', 1, undef
#line 5125 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_291
		 'keywords_notreserved', 1, undef
#line 5129 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_292
		 'keywords_notreserved', 1, undef
#line 5133 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_293
		 'keywords_notreserved', 1, undef
#line 5137 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_294
		 'keywords_notreserved', 1, undef
#line 5141 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_295
		 'keywords_notreserved', 1, undef
#line 5145 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_296
		 'keywords_notreserved', 1, undef
#line 5149 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_297
		 'keywords_notreserved', 1, undef
#line 5153 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_298
		 'keywords_notreserved', 1, undef
#line 5157 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_299
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 5161 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_300
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 5165 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_301
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 5169 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_302
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 5173 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_303
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 5177 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_304
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 5181 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_305
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 5185 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_306
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 5189 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_307
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 5193 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_308
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 5197 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_309
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 5201 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_310
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 5205 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_311
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 5209 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_312
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 5213 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_313
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 5217 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_314
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 5221 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_315
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 5225 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_316
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 5229 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_317
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 5233 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_318
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 5237 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_319
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 5241 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_reserved_ok_for_functions_or_types_320
		 'keywords_reserved_ok_for_functions_or_types', 1, undef
#line 5245 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_321
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5249 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_322
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5253 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_323
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5257 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_324
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5261 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_325
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5265 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_326
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5269 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_327
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5273 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_328
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5277 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_329
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5281 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_330
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5285 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_331
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5289 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_332
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5293 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_333
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5297 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_334
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5301 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_335
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5305 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_336
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5309 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_337
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5313 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_338
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5317 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_339
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5321 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_340
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5325 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_341
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5329 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_342
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5333 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_343
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5337 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_344
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5341 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_345
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5345 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_346
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5349 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_347
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5353 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_348
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5357 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_349
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5361 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_350
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5365 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_351
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5369 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_352
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5373 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_353
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5377 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_354
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5381 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_355
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5385 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_356
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5389 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_357
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5393 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_358
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5397 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_359
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5401 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_360
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5405 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_361
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5409 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_362
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5413 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_363
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5417 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_364
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5421 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_365
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5425 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_366
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5429 ../lib/Pg/SQL/Parser/SQL.pm
	],
	[#Rule keywords_notreserved_not_ok_for_functions_or_types_367
		 'keywords_notreserved_not_ok_for_functions_or_types', 1, undef
#line 5433 ../lib/Pg/SQL/Parser/SQL.pm
	]
],
#line 5436 ../lib/Pg/SQL/Parser/SQL.pm
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
         'expr_simple_28', 
         'expr_simple_29', 
         'literal_value_30', 
         'literal_value_31', 
         'literal_value_32', 
         'literal_value_33', 
         'literal_value_34', 
         'literal_value_35', 
         'literal_value_36', 
         'identifier_37', 
         'identifier_38', 
         'identifier_39', 
         'identifier_40', 
         'normal_type_41', 
         'normal_type_42', 
         'simple_type_43', 
         'simple_type_44', 
         'simple_type_45', 
         'simple_type_46', 
         'simple_type_47', 
         'simple_type_48', 
         'simple_type_49', 
         'simple_type_50', 
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
         'keywords_reserved_ok_for_functions_or_types_299', 
         'keywords_reserved_ok_for_functions_or_types_300', 
         'keywords_reserved_ok_for_functions_or_types_301', 
         'keywords_reserved_ok_for_functions_or_types_302', 
         'keywords_reserved_ok_for_functions_or_types_303', 
         'keywords_reserved_ok_for_functions_or_types_304', 
         'keywords_reserved_ok_for_functions_or_types_305', 
         'keywords_reserved_ok_for_functions_or_types_306', 
         'keywords_reserved_ok_for_functions_or_types_307', 
         'keywords_reserved_ok_for_functions_or_types_308', 
         'keywords_reserved_ok_for_functions_or_types_309', 
         'keywords_reserved_ok_for_functions_or_types_310', 
         'keywords_reserved_ok_for_functions_or_types_311', 
         'keywords_reserved_ok_for_functions_or_types_312', 
         'keywords_reserved_ok_for_functions_or_types_313', 
         'keywords_reserved_ok_for_functions_or_types_314', 
         'keywords_reserved_ok_for_functions_or_types_315', 
         'keywords_reserved_ok_for_functions_or_types_316', 
         'keywords_reserved_ok_for_functions_or_types_317', 
         'keywords_reserved_ok_for_functions_or_types_318', 
         'keywords_reserved_ok_for_functions_or_types_319', 
         'keywords_reserved_ok_for_functions_or_types_320', 
         'keywords_notreserved_not_ok_for_functions_or_types_321', 
         'keywords_notreserved_not_ok_for_functions_or_types_322', 
         'keywords_notreserved_not_ok_for_functions_or_types_323', 
         'keywords_notreserved_not_ok_for_functions_or_types_324', 
         'keywords_notreserved_not_ok_for_functions_or_types_325', 
         'keywords_notreserved_not_ok_for_functions_or_types_326', 
         'keywords_notreserved_not_ok_for_functions_or_types_327', 
         'keywords_notreserved_not_ok_for_functions_or_types_328', 
         'keywords_notreserved_not_ok_for_functions_or_types_329', 
         'keywords_notreserved_not_ok_for_functions_or_types_330', 
         'keywords_notreserved_not_ok_for_functions_or_types_331', 
         'keywords_notreserved_not_ok_for_functions_or_types_332', 
         'keywords_notreserved_not_ok_for_functions_or_types_333', 
         'keywords_notreserved_not_ok_for_functions_or_types_334', 
         'keywords_notreserved_not_ok_for_functions_or_types_335', 
         'keywords_notreserved_not_ok_for_functions_or_types_336', 
         'keywords_notreserved_not_ok_for_functions_or_types_337', 
         'keywords_notreserved_not_ok_for_functions_or_types_338', 
         'keywords_notreserved_not_ok_for_functions_or_types_339', 
         'keywords_notreserved_not_ok_for_functions_or_types_340', 
         'keywords_notreserved_not_ok_for_functions_or_types_341', 
         'keywords_notreserved_not_ok_for_functions_or_types_342', 
         'keywords_notreserved_not_ok_for_functions_or_types_343', 
         'keywords_notreserved_not_ok_for_functions_or_types_344', 
         'keywords_notreserved_not_ok_for_functions_or_types_345', 
         'keywords_notreserved_not_ok_for_functions_or_types_346', 
         'keywords_notreserved_not_ok_for_functions_or_types_347', 
         'keywords_notreserved_not_ok_for_functions_or_types_348', 
         'keywords_notreserved_not_ok_for_functions_or_types_349', 
         'keywords_notreserved_not_ok_for_functions_or_types_350', 
         'keywords_notreserved_not_ok_for_functions_or_types_351', 
         'keywords_notreserved_not_ok_for_functions_or_types_352', 
         'keywords_notreserved_not_ok_for_functions_or_types_353', 
         'keywords_notreserved_not_ok_for_functions_or_types_354', 
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
         'keywords_notreserved_not_ok_for_functions_or_types_367', );
  $self;
}

#line 427 "SQL.eyp"


# vim: set ft=lex:


=for None

=cut


#line 5832 ../lib/Pg/SQL/Parser/SQL.pm



1;
