%{
#include<stdio.h>
#include<ctype.h>
int spaces = 0, words = 0, chars = 0;
FILE *yyin;
%}

%%
[ /t]+ {spaces++;}
[a-zA-Z][a-zA-Z0-9]* {words++; chars+=yyleng;}
. {}
%%

int main(){
    yyin = fopen("Input.txt", "r");
    yylex();
    printf("spaces:%d, words:%d, chars:%d", spaces, words, chars);
    fclose(yyin);
    return 0;
}

int yywrap(){
    return 1;
}