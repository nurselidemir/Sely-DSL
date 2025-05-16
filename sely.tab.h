/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

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

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_SELY_TAB_H_INCLUDED
# define YY_YY_SELY_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    ID = 258,                      /* ID  */
    METIN = 259,                   /* METIN  */
    SAYI = 260,                    /* SAYI  */
    ATAMA = 261,                   /* ATAMA  */
    ARTIR = 262,                   /* ARTIR  */
    AZALT = 263,                   /* AZALT  */
    TOPLA = 264,                   /* TOPLA  */
    CIKAR = 265,                   /* CIKAR  */
    CARP = 266,                    /* CARP  */
    BOL = 267,                     /* BOL  */
    MOD = 268,                     /* MOD  */
    US = 269,                      /* US  */
    ESIT = 270,                    /* ESIT  */
    KUCUK = 271,                   /* KUCUK  */
    KUCUK_ESIT = 272,              /* KUCUK_ESIT  */
    BUYUK = 273,                   /* BUYUK  */
    BUYUK_ESIT = 274,              /* BUYUK_ESIT  */
    FARKLI = 275,                  /* FARKLI  */
    VE = 276,                      /* VE  */
    VEYA = 277,                    /* VEYA  */
    DEGIL = 278,                   /* DEGIL  */
    BLOK_AC = 279,                 /* BLOK_AC  */
    BLOK_KAPA = 280,               /* BLOK_KAPA  */
    EGER = 281,                    /* EGER  */
    ISE = 282,                     /* ISE  */
    AKSI_HALDE = 283,              /* AKSI_HALDE  */
    DONGU = 284,                   /* DONGU  */
    IKEN = 285,                    /* IKEN  */
    NEKI = 286,                    /* NEKI  */
    FONK = 287,                    /* FONK  */
    KNOF = 288,                    /* KNOF  */
    IKI_NOKTA = 289,               /* IKI_NOKTA  */
    DONDUR = 290,                  /* DONDUR  */
    PARANTEZ_AC = 291,             /* PARANTEZ_AC  */
    PARANTEZ_KAPA = 292,           /* PARANTEZ_KAPA  */
    DOGRU = 293,                   /* DOGRU  */
    YANLIS = 294,                  /* YANLIS  */
    DAIRE_CIZ = 295,               /* DAIRE_CIZ  */
    CIZGI_CIZ = 296,               /* CIZGI_CIZ  */
    DIKDORTGEN_CIZ = 297,          /* DIKDORTGEN_CIZ  */
    UCGEN_CIZ = 298,               /* UCGEN_CIZ  */
    TUS_BASILDI = 299,             /* TUS_BASILDI  */
    TUS_YUKARI = 300,              /* TUS_YUKARI  */
    TUS_ASAGI = 301,               /* TUS_ASAGI  */
    TUS_SOLA = 302,                /* TUS_SOLA  */
    TUS_SAGA = 303                 /* TUS_SAGA  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 9 "sely.y"

    double fval;
    char* sval;

#line 117 "sely.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_SELY_TAB_H_INCLUDED  */
