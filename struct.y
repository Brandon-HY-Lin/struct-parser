%{
void yyerror (char *s);
#include <stdio.h>
#include <stdlib.h>
%}

%start assignment
%token t_struct
%token identifier

%%
assignment : t_struct identifier '[' ']' '=' '{' identifier '}' ';' 
				{ printf("Struct found\n"); }
%%

int main (void)
{

	return yyparse();
}

void yyerror (char *s) { fprintf(stderr, "%s\n", s); }
