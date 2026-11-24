%{
#include <stdio.h>
#include <ctype.h>
%}

%option noyywrap

%%

[A-Z]       { putchar(tolower(yytext[0])); }
.|\n        { ECHO; }

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

