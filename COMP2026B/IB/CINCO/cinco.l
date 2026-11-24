%{
#include <stdio.h>
#include <stdlib.h>

int mayus = 0;
int minus = 0;
int digitos = 0;
int blancos = 0;
int otros = 0;
%}

%%
[A-Z]       mayus++;
[a-z]       minus++;
[0-9]       digitos++;
[ \t\n\r]   blancos++;
.           otros++;
%%

int main() {
    yylex();
    printf("Letras mayusculas: %d\n", mayus);
    printf("Letras minusculas: %d\n", minus);
    printf("Digitos: %d\n", digitos);
    printf("Espacios en blanco: %d\n", blancos);
    printf("Otros caracteres: %d\n", otros);
    return 0;
}
