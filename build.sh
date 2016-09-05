yacc -d struct.y
flex struct.l 
gcc y.tab.c lex.yy.c -ll
./a.out < input.txt
