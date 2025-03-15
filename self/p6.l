%{
#include<stdio.h>
#include<ctype.h>    
FILE *yyout;
%}

%%
[ ]+ {}
. {fputc(yytext[0], yyout);}
%%

int main(){
    yyin = fopen("Input.txt", "r");
    yyout = fopen("Output.txt", "w");
    yylex();
    fclose(yyin);
    fclose(yyout);
    return 0;
}

int yywrap(){
    return 1;
}