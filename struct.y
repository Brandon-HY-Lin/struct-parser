%{
void yyerror (char *s);
#include <stdio.h>
#include <stdlib.h>
%}

%start assignment
%token t_struct
%token identifier

%%
assignment : prefix identifier '[' ']' '=' '{' inits '}' ';' 
				{ printf("Struct found\n"); }

prefix: prefix identifier
		| identifier
		| prefix t_struct
		;

inits: init ',' inits 
		| init
		;

init: '{' elements '}'
		;

elements: element ',' elements
		| element
		;

element: identifier
%%

int main (void)
{

	return yyparse();
}

void yyerror (char *s) { fprintf(stderr, "%s\n", s); }
