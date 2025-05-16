%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
int yylex(void);
void yyerror(const char *s);
%}

%union {
    double fval;
    char* sval;
}

%token <sval> ID METIN
%token <fval> SAYI
%token ATAMA ARTIR AZALT
%token TOPLA CIKAR CARP BOL MOD US
%token ESIT KUCUK KUCUK_ESIT BUYUK BUYUK_ESIT FARKLI
%token VE VEYA DEGIL
%token BLOK_AC BLOK_KAPA
%token EGER ISE AKSI_HALDE
%token DONGU IKEN NEKI
%token FONK KNOF IKI_NOKTA DONDUR
%token PARANTEZ_AC PARANTEZ_KAPA
%token DOGRU YANLIS
%token DAIRE_CIZ CIZGI_CIZ DIKDORTGEN_CIZ UCGEN_CIZ
%token TUS_BASILDI TUS_YUKARI TUS_ASAGI TUS_SOLA TUS_SAGA

%start program

%%

program
    : komutlar { printf("[Başarılı] Sely kodu gramer kurallarına uygundur.\n"); }
    ;

komutlar
    : /* boş */
    | komutlar komut
    ;

komut
    : atama ';'
    | artis_azalis ';'
    | fonksiyon_cagrisi ';'
    | fonksiyon_tanim
    | eger
    | dongu
    | cizim_komut ';'
    | BLOK_AC komutlar BLOK_KAPA
    ;

atama
    : ID ATAMA ifade
    ;

artis_azalis
    : ID ARTIR ifade
    | ID AZALT ifade
    ;

fonksiyon_cagrisi
    : ID argumanlar
    ;

argumanlar
    : /* boş */
    | argumanlar ifade
    ;

fonksiyon_tanim
    : FONK ID parametreler IKI_NOKTA komutlar KNOF
    ;

parametreler
    : /* boş */
    | parametreler ID
    ;

eger
    : EGER kosul ISE komut
    | EGER kosul ISE komut AKSI_HALDE komut
    ;

dongu
    : DONGU kosul IKEN komutlar NEKI
    ;

kosul
    : TUS_BASILDI TUS_YUKARI
    | TUS_BASILDI TUS_ASAGI
    | TUS_BASILDI TUS_SOLA
    | TUS_BASILDI TUS_SAGA
    | DOGRU
    | YANLIS
    | ifade ESIT ifade
    | ifade FARKLI ifade
    | ifade KUCUK ifade
    | ifade KUCUK_ESIT ifade
    | ifade BUYUK ifade
    | ifade BUYUK_ESIT ifade
    | kosul VE kosul
    | kosul VEYA kosul
    | DEGIL kosul
    ;

ifade
    : SAYI
    | ID
    | METIN
    | ifade TOPLA ifade
    | ifade CIKAR ifade
    | ifade CARP ifade
    | ifade BOL ifade
    | ifade MOD ifade
    | ifade US ifade
    | PARANTEZ_AC ifade PARANTEZ_KAPA
    ;

cizim_komut
    : DAIRE_CIZ ifade ifade ifade
    | CIZGI_CIZ ifade ifade ifade ifade
    | DIKDORTGEN_CIZ ifade ifade ifade ifade
    | UCGEN_CIZ ifade ifade ifade ifade ifade ifade
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Hata: Satır 1: %s\n", s);
}

int main(void) {
    yyparse();
    return 0;
}