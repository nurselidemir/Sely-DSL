%{
#include "sely.tab.h"
#include <stdio.h>
#define DEBUG_LEX 1
%}
%option noyywrap

%%
"--".*                             { /* Tek satır açıklama, yoksay */ }
[ \t\r\n]+                         { /* Boşlukları yoksay */ }
"<-"                               { if(DEBUG_LEX) printf("TOKEN: ATAMA (%s)\n", yytext); return ATAMA; }
"+<-"                              { if(DEBUG_LEX) printf("TOKEN: ARTIR (%s)\n", yytext); return ARTIR; }
"-<-"                              { if(DEBUG_LEX) printf("TOKEN: AZALT (%s)\n", yytext); return AZALT; }
"="                                { if(DEBUG_LEX) printf("TOKEN: ESIT (%s)\n", yytext); return ESIT; }
"<>"                               { if(DEBUG_LEX) printf("TOKEN: FARKLI (%s)\n", yytext); return FARKLI; }
"<="                               { if(DEBUG_LEX) printf("TOKEN: KUCUK_ESIT (%s)\n", yytext); return KUCUK_ESIT; }
">="                               { if(DEBUG_LEX) printf("TOKEN: BUYUK_ESIT (%s)\n", yytext); return BUYUK_ESIT; }
"<"                                { if(DEBUG_LEX) printf("TOKEN: KUCUK (%s)\n", yytext); return KUCUK; }
">"                                { if(DEBUG_LEX) printf("TOKEN: BUYUK (%s)\n", yytext); return BUYUK; }
"+"                                { if(DEBUG_LEX) printf("TOKEN: TOPLA (%s)\n", yytext); return TOPLA; }
"-"                                { if(DEBUG_LEX) printf("TOKEN: CIKAR (%s)\n", yytext); return CIKAR; }
"*"                                { if(DEBUG_LEX) printf("TOKEN: CARP (%s)\n", yytext); return CARP; }
"/"                                { if(DEBUG_LEX) printf("TOKEN: BOL (%s)\n", yytext); return BOL; }
"%"                                { if(DEBUG_LEX) printf("TOKEN: MOD (%s)\n", yytext); return MOD; }
"^"                                { if(DEBUG_LEX) printf("TOKEN: US (%s)\n", yytext); return US; }
"{"                                { if(DEBUG_LEX) printf("TOKEN: BLOK_AC (%s)\n", yytext); return BLOK_AC; }
"}"                                { if(DEBUG_LEX) printf("TOKEN: BLOK_KAPA (%s)\n", yytext); return BLOK_KAPA; }
":"                                { if(DEBUG_LEX) printf("TOKEN: IKI_NOKTA (%s)\n", yytext); return IKI_NOKTA; }
"("                                { if(DEBUG_LEX) printf("TOKEN: PARANTEZ_AC (%s)\n", yytext); return PARANTEZ_AC; }
")"                                { if(DEBUG_LEX) printf("TOKEN: PARANTEZ_KAPA (%s)\n", yytext); return PARANTEZ_KAPA; }
"eger"                             { if(DEBUG_LEX) printf("TOKEN: EGER (%s)\n", yytext); return EGER; }
"ise"                              { if(DEBUG_LEX) printf("TOKEN: ISE (%s)\n", yytext); return ISE; }
"aksi halde"                       { if(DEBUG_LEX) printf("TOKEN: AKSI_HALDE (%s)\n", yytext); return AKSI_HALDE; }
"dongu"                            { if(DEBUG_LEX) printf("TOKEN: DONGU (%s)\n", yytext); return DONGU; }
"iken"                             { if(DEBUG_LEX) printf("TOKEN: IKEN (%s)\n", yytext); return IKEN; }
"neki"                             { if(DEBUG_LEX) printf("TOKEN: NEKI (%s)\n", yytext); return NEKI; }
"fonk"                             { if(DEBUG_LEX) printf("TOKEN: FONK (%s)\n", yytext); return FONK; }
"knof"                             { if(DEBUG_LEX) printf("TOKEN: KNOF (%s)\n", yytext); return KNOF; }
"dondur"                           { if(DEBUG_LEX) printf("TOKEN: DONDUR (%s)\n", yytext); return DONDUR; }
"daire_ciz"                        { if(DEBUG_LEX) printf("TOKEN: DAIRE_CIZ (%s)\n", yytext); return DAIRE_CIZ; }
"cizgi_ciz"                        { if(DEBUG_LEX) printf("TOKEN: CIZGI_CIZ (%s)\n", yytext); return CIZGI_CIZ; }
"dikdortgen_ciz"                   { if(DEBUG_LEX) printf("TOKEN: DIKDORTGEN_CIZ (%s)\n", yytext); return DIKDORTGEN_CIZ; }
"ucgen_ciz"                        { if(DEBUG_LEX) printf("TOKEN: UCGEN_CIZ (%s)\n", yytext); return UCGEN_CIZ; }
"tus_basildi"                      { if(DEBUG_LEX) printf("TOKEN: TUS_BASILDI (%s)\n", yytext); return TUS_BASILDI; }
"TUS_YUKARI"                       { if(DEBUG_LEX) printf("TOKEN: TUS_YUKARI (%s)\n", yytext); return TUS_YUKARI; }
"TUS_ASAGI"                        { if(DEBUG_LEX) printf("TOKEN: TUS_ASAGI (%s)\n", yytext); return TUS_ASAGI; }
"TUS_SOLA"                         { if(DEBUG_LEX) printf("TOKEN: TUS_SOLA (%s)\n", yytext); return TUS_SOLA; }
"TUS_SAGA"                         { if(DEBUG_LEX) printf("TOKEN: TUS_SAGA (%s)\n", yytext); return TUS_SAGA; }
"ve"                               { if(DEBUG_LEX) printf("TOKEN: VE (%s)\n", yytext); return VE; }
"veya"                             { if(DEBUG_LEX) printf("TOKEN: VEYA (%s)\n", yytext); return VEYA; }
"degil"                            { if(DEBUG_LEX) printf("TOKEN: DEGIL (%s)\n", yytext); return DEGIL; }
"dogru"                            { if(DEBUG_LEX) printf("TOKEN: DOGRU (%s)\n", yytext); return DOGRU; }
"yanlis"                           { if(DEBUG_LEX) printf("TOKEN: YANLIS (%s)\n", yytext); return YANLIS; }
[0-9]+(\.[0-9]+)?                  { if(DEBUG_LEX) printf("TOKEN: SAYI (%s)\n", yytext); yylval.fval = atof(yytext); return SAYI; }
\"[^\"]*\"                         { if(DEBUG_LEX) printf("TOKEN: METIN (%s)\n", yytext); yylval.sval = strdup(yytext); return METIN; }
";"                                { if(DEBUG_LEX) printf("TOKEN: NOKTALI_VIRGUL (;)\n"); return ';'; }
[a-zA-Z_][a-zA-Z0-9_]*             { if(DEBUG_LEX) printf("TOKEN: ID (%s)\n", yytext); yylval.sval = strdup(yytext); return ID; }
.                                  { if(DEBUG_LEX) printf("TOKEN: UNKNOWN (%s) [ascii: %d]\n", yytext, yytext[0]); return yytext[0]; }
%%
