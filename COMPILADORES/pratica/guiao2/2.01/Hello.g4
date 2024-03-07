grammar Hello;

main: (greetings | bye)+;
bye : 'bye' ID+ {System.out.println("Tchau "+$ID.text);};
greetings : 'hello' ID expr {System.out.println("Olá "+$ID.text + $expr.v);};
expr returns [int v]: INT { $v = $INT.int;};
INT : [0-9]+;
ID : [a-z]+; 
WS : [ \t\r\n]+ -> skip;

