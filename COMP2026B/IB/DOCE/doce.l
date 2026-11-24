%{
  #include<stdio.h>
%}
%%
0[xX][0-9a-fA-F]+  {
             int i, valor = 0, d;
             for(i = 2; i < yyleng; i++)
             {
                 char c = yytext[i];
                 if ( c >= '0' && c <= '9')
                    d = c - '0';
                 else if ( c >= 'a' && c<= 'f')
                    d = c - 'a' + 10;
                 else
                    d = c - 'A' + 10;
                 valor = valor * 16 + d;
              }
              printf("HEXADECIMAL: %s -> DECIMAL: %d\n", yytext, valor);
       }
[^ \t\n]+ printf("NO ES HEXADECIMAL: %s\n", yytext);
[ \t\n]   ;

%%
int yywrap(){ return 1; }
int main()
{
  yylex();
  return 0;
}
