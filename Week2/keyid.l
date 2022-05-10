%option noyywrap
%{
	#include<stdio.h>
	#include "y.tab.h"
	void yyerror (const char *s);
%}


digit [0-9]
letter [A-Za-z]
%%

int   {return INT;}
char  {return CHAR;}
float {return FLOAT;}
{letter}({letter}|{digit})* {return ID;}
[\n|\t|' '] ;
.     {return *yytext;}
