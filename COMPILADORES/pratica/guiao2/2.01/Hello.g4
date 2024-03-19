grammar Hello;

top: (greetings|bye)* EOF;
greetings : 'hello' name;
bye : 'goodbye' name;
name: ID+;
ID : [a-zA-Z]+;
WS : [ \t\r\n]+ -> skip;
