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
     TEST_INT = 258,
     TEST_CHAR = 259,
     TEST_DOUBLE = 260,
     TEST_WHILE = 261,
     TEST_INC = 262,
     TEST_DEC = 263,
     TEST_OROR = 264,
     TEST_FOR = 265,
     TEST_ANDAND = 266,
     TEST_EQCOMP = 267,
     TEST_NOTEQUAL = 268,
     TEST_GREATEREQ = 269,
     TEST_LESSEREQ = 270,
     TEST_LEFTSHIFT = 271,
     TEST_RIGHTSHIFT = 272,
     TEST_NUM = 273,
     TEST_ID = 274,
     TEST_PRINTLN = 275,
     TEST_STRING = 276,
     TEST_FLOAT = 277,
     TEST_BOOLEAN = 278,
     TEST_IF = 279,
     TEST_ELSE = 280,
     TEST_STRLITERAL = 281,
     TEST_DO = 282,
     TEST_INCLUDE = 283,
     TEST_HEADER = 284,
     TEST_MAIN = 285,
     TEST_IFX = 286
   };
#endif
/* Tokens.  */
#define TEST_INT 258
#define TEST_CHAR 259
#define TEST_DOUBLE 260
#define TEST_WHILE 261
#define TEST_INC 262
#define TEST_DEC 263
#define TEST_OROR 264
#define TEST_FOR 265
#define TEST_ANDAND 266
#define TEST_EQCOMP 267
#define TEST_NOTEQUAL 268
#define TEST_GREATEREQ 269
#define TEST_LESSEREQ 270
#define TEST_LEFTSHIFT 271
#define TEST_RIGHTSHIFT 272
#define TEST_NUM 273
#define TEST_ID 274
#define TEST_PRINTLN 275
#define TEST_STRING 276
#define TEST_FLOAT 277
#define TEST_BOOLEAN 278
#define TEST_IF 279
#define TEST_ELSE 280
#define TEST_STRLITERAL 281
#define TEST_DO 282
#define TEST_INCLUDE 283
#define TEST_HEADER 284
#define TEST_MAIN 285
#define TEST_IFX 286



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
