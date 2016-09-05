%{
#include "y.tab.h"
%}

%%

"struct"		{printf("token: \"%s\" found\n", yytext); return t_struct; }
[={};\[\]]			{printf("%s\n", yytext); return yytext[0]; }
[ \t\n]			;
[a-zA-Z]+		{printf("%s\n", yytext); return identifier; }
.				;

%%

int yywrap (void) {return 1;}
