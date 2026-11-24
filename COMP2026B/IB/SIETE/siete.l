%{
#include <stdio.h>
%}

%option noyywrap

%%

"+"|"-"|"*"|"/"                  { printf("OPERADOR_ARITMETICO\t%s\n", yytext); }
"<="|">="|"=="|"!="|"<"|">"      { printf("OPERADOR_RELACIONAL\t%s\n", yytext); }
[a-zA-Z0-9_]+                    { }
[ \t\r\n]+                       { }
.                                { printf("DESCONOCIDO\t\t%s\n", yytext); }

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
