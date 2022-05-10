%{
	#include <stdio.h>	
	#include <stdlib.h>	
	#include <string.h>

	void yyerror(char* s);	//error handling function
	int yylex(void);	//declare the function performing lexical analysis
	extern int yylineno;	//track line number 
%}
%token TEST_INT TEST_CHAR TEST_DOUBLE TEST_WHILE TEST_INC TEST_DEC TEST_OROR TEST_FOR TEST_ANDAND TEST_EQCOMP TEST_NOTEQUAL TEST_GREATEREQ TEST_LESSEREQ TEST_LEFTSHIFT TEST_RIGHTSHIFT  TEST_NUM  TEST_ID TEST_PRINTLN  TEST_STRING	TEST_FLOAT TEST_BOOLEAN TEST_IF TEST_ELSE  TEST_STRLITERAL TEST_DO TEST_INCLUDE TEST_HEADER TEST_MAIN
/* specify start symbol */
%start START
//to give IF precedence over IF_ELSE
%nonassoc TEST_IFX
%nonassoc TEST_ELSE
%%
START:	PROG	{printf("Valid syntax\n"); YYACCEPT;}	//program fits grammer.
	;
PROG:	TEST_INCLUDE '<' TEST_HEADER '>' PROG	//include header
		|MAIN PROG			//main function
		|DECLR ';' PROG		//declarations
		| ASSGN ';' PROG	//asignments
		|					//end of program
		;
DECLR:	TYPE LISTVAR ASSGN2
		;
LISTVAR:	LISTVAR ',' VAR
			| VAR
			;
VAR:	TEST_ID '[' TEST_NUM ']' 
		| TEST_ID '[' ']'
		| '-' TEST_ID
		| '-' TEST_NUM
		| '+' TEST_ID
		| '+' TEST_NUM
		| TEST_ID
		;

TYPE:	TEST_INT
		| TEST_FLOAT
		| TEST_DOUBLE
		| TEST_CHAR
		;
ASSGN2:	'=' RHS
		|
		;
RHS:	EXPR
		| LISTNUM
		| LISTVAR
		;
ASSGN:	TEST_ID '=' EXPR
		| INCDEC
		;
EXPR:	EXPR REL_OP	E1
		| E1
		;
REL_OP:	TEST_LESSEREQ
		| TEST_GREATEREQ
		| '<'
		| '>'
		| TEST_EQCOMP
		| TEST_NOTEQUAL
		;

E1:	E1 TEST_LEFTSHIFT E
	| E1 TEST_RIGHTSHIFT E
	| E
	;

E:	E '+' T
	| E '-' T
	| T
	;
T:	T '*' F
	| T '/' F
	| F
	;
F:	F TEST_ANDAND L
	| F TEST_OROR L
	| L
	;

L: '(' EXPR ')'
	| '!' '(' EXPR ')'
	| VAR
	| TEST_NUM
	| TEST_BOOLEAN
	| ARRAY
	;
ARRAY:	'{' LISTNUM '}'

LISTNUM:	LISTNUM ',' TEST_NUM
			| TEST_NUM
			;
MAIN: TYPE TEST_MAIN '(' EMPTY_LISTVAR ')' '{' STMT '}' ;

EMPTY_LISTVAR:	LISTVAR
				|
				;
STMT:	STMTEST_NO_BLOCK STMT
		| BLOCK STMT
		|
		;
STMTEST_NO_BLOCK:	DECLR ';'
				| ASSGN ';'
				| TEST_IF COND STMT %prec TEST_IFX	//if loop
				| TEST_IF COND STMT TEST_ELSE STMT		//if else loop
				| WHILE
				| FOR
				| DO
				;

BLOCK:	'{' STMT '}';
WHILE : TEST_WHILE  '(' COND ')' WHILE_2;
COND:	EXPR
		| ASSGN
		;
WHILE_2:	BLOCK
			| ';'
			;
FOR: TEST_FOR '(' INIT ';' COND ';' UPDT ')' WHILE_2;

LISTASG: ASSGN ',' LISTASG
		| ASSGN
		;
INIT: TYPE LISTASG
	| LISTASG
	|
	;
UPDT: INCDEC
	|
	;
INCDEC: TEST_ID TEST_INC
		| TEST_ID TEST_DEC
		| TEST_INC TEST_ID
		| TEST_DEC TEST_ID
		;

DO: TEST_DO BLOCK TEST_WHILE '(' COND ')' ';'
%%
void yyerror(char* s)
{
	printf("Error :%s at line %d \n",s,yylineno);
}

/* main function - calls the yyparse() function which will in turn drive yylex() as well */  
int main(int argc,	char* argv[])
{
	yyparse();  
	return 0;
}


