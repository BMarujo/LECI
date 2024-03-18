grammar Hello;

top: (greetings|bye)* EOF;
greetings : 'hello' ID;
bye : 'goodbye' ID;

ID : [a-zA-Z]+;
WS : [ \t\r\n]+ -> skip;
