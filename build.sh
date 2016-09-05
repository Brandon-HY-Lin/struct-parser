yacc -d calc.y
flex calc.l 
gcc y.tab.c lex.yy.c -ll
./a.out < input.txt
