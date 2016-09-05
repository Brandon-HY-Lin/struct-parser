%{
void yyerror (char *s);
#include <stdio.h>
#include <stdlib.h>
%}

%start assignment
%token t_struct
%token identifier

%%
assignment : prefix t_struct identifier '[' ']' '=' '{' identifier '}' ';' 
				{ printf("Struct found\n"); }

prefix: prefix identifier
		| identifier
%%

int main (void)
{

	return yyparse();
}

void yyerror (char *s) { fprintf(stderr, "%s\n", s); }
