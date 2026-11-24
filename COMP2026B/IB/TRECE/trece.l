%{
  #include<stdio.h>
%}
%%
[a-zA-Z][a-zA-Z0-9]*  printf("IDENTIFICADOR: %s\n", yytext);
[0-9]+                printf("ENTERO: %s\n", yytext);
","                   printf("COMA\n");
[ t\n]                ;
.                     printf("ERROR: token invalido '%s'\n", yytext);
%%
int yywrap(){ return 1; }
int main()
{
 yylex();
 return 0;
}
