%{
#include <stdio.h>
int cuenta[10] = {0};
%}
%option noyywrap
%%
[0-9]       { cuenta[yytext[0] - '0']++; }
.|\n        { }
%%
int main(int argc, char *argv[]) {
    int i;
    if (argc > 1) {
        yyin = fopen(argv[1], "r");
        if (!yyin) {
            perror("No se pudo abrir el archivo");
            return 1;
        }
    }
    yylex();
    printf("Digito\tFrecuencia\n");
    printf("------\t----------\n");
    for (i = 0; i < 10; i++)
        printf("%d\t%d\n", i, cuenta[i]);
    return 0;
}
