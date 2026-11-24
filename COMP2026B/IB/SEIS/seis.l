%{
#include <stdio.h>
%}

%option noyywrap

DIGITO      [0-9]
LETRA       [a-zA-Z_]

%%

"if"|"else"|"while"|"int"       { printf("PALABRA_RESERVADA\t%s\n", yytext); }
{LETRA}({LETRA}|{DIGITO})*      { printf("IDENTIFICADOR\t\t%s\n", yytext); }
{DIGITO}+                       { printf("ENTERO\t\t\t%s\n", yytext); }
[ \t\r\n]+                      { }
.                               { printf("DESCONOCIDO\t\t%s\n", yytext); }

%%

int main(int argc, char *argv[]) {
    if (argc > 1) {
        yyin = fopen(argv[1], "r");
        if (!yyin) {
            perror("No se pudo abrir el archivo");
            return 1;
        }
    }
    yylex();
    return 0;
}
