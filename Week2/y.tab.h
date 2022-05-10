/* A Bison parser, made by GNU Bison 2.7.  */

/* Bison interface for Yacc-like parsers in C
   
      Copyright (C) 1984, 1989-1990, 2000-2012 Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     T_CHAR = 258,
     T_DO = 259,
     T_DOUBLE = 260,
     T_ELSE = 261,
     T_EQCOMP = 262,
     T_FLOAT = 263,
     T_FOR = 264,
     T_GREATEREQ = 265,
     T_HEADER = 266,
     T_ID = 267,
     T_IF = 268,
     T_INCLUDE = 269,
     T_INT = 270,
     T_LESSEREQ = 271,
     T_MAIN = 272,
     T_NOTEQUAL = 273,
     T_NUM = 274,
     T_STRLITERAL = 275,
     T_WHILE = 276,
     T_IFX = 277
   };
#endif
/* Tokens.  */
#define T_CHAR 258
#define T_DO 259
#define T_DOUBLE 260
#define T_ELSE 261
#define T_EQCOMP 262
#define T_FLOAT 263
#define T_FOR 264
#define T_GREATEREQ 265
#define T_HEADER 266
#define T_ID 267
#define T_IF 268
#define T_INCLUDE 269
#define T_INT 270
#define T_LESSEREQ 271
#define T_MAIN 272
#define T_NOTEQUAL 273
#define T_NUM 274
#define T_STRLITERAL 275
#define T_WHILE 276
#define T_IFX 277



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;

#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int yyparse (void *YYPARSE_PARAM);
#else
int yyparse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int yyparse (void);
#else
int yyparse ();
#endif
#endif /* ! YYPARSE_PARAM */

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
