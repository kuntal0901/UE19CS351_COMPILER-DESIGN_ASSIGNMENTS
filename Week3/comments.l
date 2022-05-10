%Start ML_COMMENT
%{
    #include <stdio.h
%}
%option yylineno
%%
"//".* {printf("Comment at line %d\n",yylineno);}
"/*" {printf("")}
<ML_COMMENT>"*/" {}
<ML_COMMENT>[^*\n]+
<ML_COMMENT>"*"
<ML_COMMENT>"\n" {;}
. ;
\n ;
%%
int yywrap()
{
    return (1);
}
int main()
{
    yylex();
    return 0;
}