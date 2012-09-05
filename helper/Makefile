all: lexer parser

lexer: ../lib/Pg/SQL/Parser/Lexer/Keywords.pm

parser: ../lib/Pg/SQL/Parser/SQL.pm

clean:
	rm -vf ../lib/Pg/SQL/Parser/SQL.pm ../lib/Pg/SQL/Parser/Lexer/Keywords.pm

../lib/Pg/SQL/Parser/SQL.pm: SQL.eyp
	eyapp -m Pg::SQL::Parser::SQL -o $@ $^

../lib/Pg/SQL/Parser/Lexer/Keywords.pm: keywords build_keywords_regexp_file.pl
	mkdir -p ../lib/Pg/SQL/Parser/Lexer
	./build_keywords_regexp_file.pl > ../lib/Pg/SQL/Parser/Lexer/Keywords.pm
	./update_SQL_eyp_based_on_keywords
