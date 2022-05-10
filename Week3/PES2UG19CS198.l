%option noyywrap
%option nounput yylineno

%{
/*	DEFINITIONS	*/
#define	YYSTYPE	char*	//	specify	the	data	type	for	variable	yylval  
#include	"y.tab.h"	//	y.tab.h	contains	token	definitions
#include	<stdio.h>
extern	void	yyerror(const	char	*);	//	declare	the	error	handling	function

%}

/*	Regular	definitions	*/
digit	[0-9]
letter [a-zA-Z]
id	{letter}({letter}|{digit})*  
digits {digit}+
opFraction	(\.{digits})?
opExponent	([Ee][+-]?{digits})?
number	{digits}{opFraction}{opExponent}
%%
\/\/(.*)	;	//ignore comments
[\t\n]	;	//ignore whitespaces
"int"	{return TEST_INT;}
"char"	{return TEST_CHAR;}
"double"	{return TEST_DOUBLE;}
"true"	{return TEST_BOOLEAN;}
"false"	{return TEST_BOOLEAN;}
"float"	{return TEST_FLOAT;}
"while"	{return TEST_WHILE;}
"for"	{return TEST_FOR;}
"if"	{return TEST_IF;}
"else"	{return TEST_ELSE;}
"do"	{return TEST_DO;}
"#include"	{return TEST_INCLUDE;}
"main"	{return TEST_MAIN;}
\".*\"	{return TEST_STRLITERAL;}
"=="	{return TEST_EQCOMP;}
"!="	{return TEST_NOTEQUAL;}
">=" 	{return TEST_GREATEREQ;}
"<="	{return TEST_LESSEREQ;}
"++"	{return TEST_INC;}
"--"	{return TEST_DEC;}
"||"	{return TEST_OROR;}
"&&"	{return TEST_ANDAND;}
"<<"	{return TEST_LEFTSHIFT;}
">>"	{return TEST_RIGHTSHIFT;}
"!"		{return *yytext;}
"("		{return *yytext;}
")"		{return *yytext;}
"["		{return *yytext;}
"]"		{return *yytext;}
"."		{return *yytext;}
";"		{return *yytext;}
","		{return *yytext;}
"{"		{return *yytext;}
"}"		{return *yytext;}
"*"		{return *yytext;}
"+"		{return *yytext;}
"-"		{return *yytext;}
"/"		{return *yytext;}
"="		{return *yytext;}
">"		{return *yytext;}
"<"		{return *yytext;}
{number}	{return TEST_NUM;}
{id}\.h	{return TEST_HEADER;}
{id}	{return TEST_ID;}
.	{}
%%
