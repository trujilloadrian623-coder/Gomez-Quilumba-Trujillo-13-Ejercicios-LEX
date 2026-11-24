%{
  #include<stdio.h>
%}

%%
[01]+  {

   int i, valor = 0;
   for(i = 0; i < yyleng; i++)
       valor = valor * 2 + (yytext[i] - '0') ;
       printf("BINARIO: %s -> DECIMAL: %d\n", yytext, valor);
}
[0-9]+  printf("NO BINARIO: %s\n", yytext);
.|\n    ;

%%

int yywrap(){ return 1; }
int main()
{
  
  yylex();
  return 0;
}

