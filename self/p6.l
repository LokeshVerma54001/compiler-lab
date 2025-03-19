%{
#include<stdio.h>
#include<ctype.h>
FILE *yyin, *yyout;
%}

%%
[ \t]* {fprintf(yyout, " ");}
[.]* {fprintf(yyout, "%s", yytext);}
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