%{
#include<stdio.h>
%}

%%
[0-9]*(0|2|4|6|8) {printf("Even number:%s", yytext);}
[0-9]*(1|3|5|7|9) {printf("Odd number:%s", yytext);}
. {printf("Invaid:%s", yytext);}
%%

int main(){
    printf("Enter text:");
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}