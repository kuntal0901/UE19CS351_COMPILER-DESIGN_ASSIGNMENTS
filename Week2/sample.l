%option noyywrap
%option yylineno
%{
    #define YYSTYPE char*
    #include "y.tab.h"
    #include <stdio.h>
    extern void yyerror(const char *msg);
%}
start \/\*
end  \*\/
digit [0-9]
letter [a-zA-Z]
id {letter}({letter}|{digit}|_)*
digits {digit}+
opFraction (\.{digits})?
opExponent ([Ee][+-]?{digits})?
number {digits}{opFraction}{opExponent}

%%


"/*"([^*]|\*+[^*/])*\*+"/" ; 
[\t\n] ;
"int" {ECHO; return T_INT;}
"char" {ECHO; return T_CHAR;}
"double" {ECHO; return T_DOUBLE;}
"float" {ECHO; return T_FLOAT;}
"while" {ECHO; return T_WHILE;}
"for"   {ECHO; return T_FOR;}
"if" {ECHO; return T_IF;}
"else" {ECHO; return T_ELSE;}
"do" {ECHO; return T_DO;}
"include" {ECHO; return T_INCLUDE;}
"main" {ECHO; return T_MAIN;}
\".*\" {ECHO; return T_STRLITERAL;}
"==" {ECHO; return T_EQCOMP;}
"!=" {ECHO; return T_NOTEQUAL;}
">=" {ECHO; return T_GREATEREQ;}
"<=" {ECHO; return T_LESSEREQ;}
"("  {ECHO; return *yytext;}
")"  {ECHO; return *yytext;}
"."  {ECHO; return *yytext;}
","  {ECHO; return *yytext;}
"{"  {ECHO; return *yytext;}
"}"  {ECHO; return *yytext;}
"*"  {ECHO; return *yytext;}
"+"  {ECHO; return *yytext;}
";"  {ECHO; return *yytext;}
"-"  {ECHO; return *yytext;}
"/"  {ECHO; return *yytext;}
"="  {ECHO; return *yytext;}
">"  {ECHO; return *yytext;}
"<"  {ECHO; return *yytext;}
{number} {ECHO; return T_NUM;}
{id}\.h  {ECHO; return T_HEADER;}
{id} {ECHO; return T_ID;}
. {ECHO;}

