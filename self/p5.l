%{
#include<stdio.h>
#include<ctype.h>
int spaces = 0, chars = 0, words = 0;
%}

%%
[ \t]+ {spaces+=yyleng;}
[a-zA-Z0-9]+ { words++; chars+=yyleng;}
. {chars++;}

%%


int main(){
    yyin = fopen("Input.txt", "r");
    yylex();
    printf("spaces:%d, chars:%d, words%d", spaces, chars, words);
    fclose(yyin);
    return 0;
}

int yywrap(){
    return 1;
}