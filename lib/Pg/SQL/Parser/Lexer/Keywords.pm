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
    return qr{(?^:(?i:(?=[abcdefghijklmnopqrstuvwxyz])(?:a(?:b(?:ort|solute)|c(?:cess|tion)|d(?:d|min)|l(?:l|so|ter|ways)|n(?:aly[sz]e|[dy])|s(?:s(?:ertion|ignment)|(?:ymmetri)?c)?|t(?:tribute)?|fter|ggregate|rray|uthorization)|b(?:e(?:fore|(?:gi|twee)n)|i(?:(?:gin)?t|nary)|o(?:olean|th)|ackward|y)|c(?:a(?:s(?:caded?|[et])|che|lled|talog)|h(?:a(?:r(?:acter(?:istics)?)?|in)|eck(?:point)?)|l(?:ass|ose|uster)|o(?:l(?:lat(?:e|ion)|umn)|mm(?:ents?|it(?:ted)?)|n(?:straints?|t(?:ent|inue)|currently|(?:(?:figura|nec)t|vers)ion)|alesce|py|st)|r(?:eate|oss)|ur(?:rent(?:_(?:time(?:stamp)?|catalog|(?:dat|rol)e|schema|user))?|sor)|sv|ycle)|d(?:a(?:ta(?:base)?|y)|e(?:c(?:imal|lare)?|f(?:aults?|err(?:able|ed)|iner)|l(?:imiters?|ete)|allocate|sc)|i(?:s(?:able|card|tinct)|ctionary)|o(?:cument|main|uble)?|rop)|e(?:n(?:c(?:oding|rypted)|able|d|um)|x(?:c(?:lu(?:d(?:e|ing)|sive)|ept)|t(?:e(?:nsion|rnal)|ract)|ecute|ists|plain)|ach|(?:ls|scap)e)|f(?:a(?:lse|mily)|o(?:r(?:ce|eign|ward)?|llowing)|r(?:eeze|om)|u(?:nctions?|ll)|etch|(?:irs|loa)t)|g(?:r(?:ant(?:ed)?|eatest|oup)|lobal)|h(?:a(?:ndler|ving)|o(?:ld|ur)|eader)|i(?:m(?:m(?:ediat|utabl)e|plicit)|n(?:c(?:luding|rement)|dex(?:es)?|herits?|s(?:e(?:nsitive|rt)|tead)|t(?:e(?:r(?:sect|val)|ger)|o)?|itially|line|(?:n|vok)er|[op]ut)?|s(?:null|olation)?|dentity|f|like)|l(?:a(?:bel|(?:ngua|r)ge|st)|c_c(?:ollat|typ)e|e(?:a(?:ding|st)|ft|vel)|i(?:ke|mit|sten)|o(?:c(?:a(?:l(?:time(?:stamp)?)?|tion)|k)|ad))|m(?:a(?:pping|tch|xvalue)|in(?:ut|valu)e|o(?:[dv]e|nth))|n(?:a(?:mes?|t(?:ion|ur)al)|o(?:t(?:hing|ify|null)?|ne|wait)?|u(?:ll(?:if|s)?|meric)|char|ext)|o(?:f(?:f(?:set)?)?|n(?:ly)?|p(?:tions?|erator)|r(?:der)?|ut(?:er)?|ver(?:la(?:ps|y))?|wne[dr]|bject|ids)|p(?:a(?:r(?:ti(?:al|tion)|ser)|ss(?:ing|word))|la(?:cing|ns)|r(?:e(?:c(?:eding|ision)|pared?|serve)|i(?:mary|or|vileges)|ocedur(?:al|e))|osition)|r(?:e(?:a(?:[dl]|ssign)|c(?:heck|ursive)|f(?:erences)?|l(?:ativ|eas)e|p(?:l(?:ace|ica)|eatable)|s(?:t(?:ar|ric)t|et)|turn(?:ing|s)|index|(?:nam|vok)e)|o(?:l(?:e|lback)|ws?)|(?:ang|ul)e|ight)|s(?:c(?:hema|roll)|e(?:c(?:ond|urity)|quences?|r(?:ializable|ver)|ssion(?:_user)?|t(?:of)?|arch|lect)|h(?:are|ow)|im(?:ilar|ple)|t(?:a(?:t(?:ement|istics)|(?:bl|ndalon)e|rt)|d(?:in|out)|ri(?:ct|p)|orage)|y(?:s(?:id|tem)|mmetric)|(?:avepo|mall)int|ome|ubstring)|t(?:able(?:s(?:pace)?)?|e(?:mp(?:late|orary)?|xt)|ime(?:stamp)?|r(?:a(?:iling|nsaction)|i(?:gger|m)|u(?:(?:ncat)?e|sted)|eat)|hen|o|ype)|u(?:n(?:i(?:on|que)|l(?:isten|ogged)|(?:bound|(?:commit|encryp)t)ed|known|til)|s(?:er|ing)|pdate)|v(?:a(?:l(?:id(?:at(?:e|or))?|ues?)|r(?:char|iadic|ying)|cuum)|er(?:bose|sion)|iew|olatile)|w(?:h(?:e(?:n|re)|itespace)|i(?:th(?:out)?|ndow)|r(?:apper|ite)|ork)|xml(?:e(?:lement|xists)|p(?:arse|i)|attributes|(?:conca|fores|roo)t|serialize)?|ye(?:ar|s)|join|key|(?:quot|zon)e)))};
}

1;    # End of Pg::SQL::Parser::Lexer::Keywords
