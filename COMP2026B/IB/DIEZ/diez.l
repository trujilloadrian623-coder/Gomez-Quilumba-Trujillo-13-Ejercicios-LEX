%{
  #include <stdio.h>
%}
%%
[a-zA-Z0-9._]+@[a-zA-Z0-9]+(\.[a-zA-Z]+)+ printf("CORREO VALIDO: %s\n", yytext);
.|\n    ;
%%
int yywrap(){ return 1; }
int main()
{

   yylex();
   return 0;
}
