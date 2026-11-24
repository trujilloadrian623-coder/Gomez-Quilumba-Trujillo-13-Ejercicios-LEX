%{
#include <stdlib.h>
#include <stdio.h>
%}
%%
[+-]?[0-9]+\.[0-9]+([Ee][+-]?[0-9]+)?    printf("%s -> Numero real / Exponencial\n", yytext);
[+-]?[0-9]+([Ee][+-]?[0-9]+)?            printf("%s -> Numero / Exponencial\n", yytext);
[a-zA-Z][a-zA-Z0-9]*                    printf("%s -> IDENTIFICADOR\n", yytext);
%%

