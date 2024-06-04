grammar FracLang;

program: stat* EOF;

stat: display
    | assign
    ;

display: 'display' expr ';' ;

assign: ID '<=' expr ';' ;

expr: expr ('*'|':') expr
    | expr ('+'|'-') expr
    | ('-'|'+') expr
    | INT '/' INT
    | INT
    | ID
    | '(' expr ')'
    ;

ID: [a-zA-Z]+ ;
INT: [0-9]+ ;

WS: [ \t\r\n]+ -> skip;
LINE_COMMENT : '--' ~[\r\n]* -> skip ;