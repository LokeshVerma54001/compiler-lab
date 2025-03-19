%{
#include<stdio.h>
%}

%%
[a-zA-Z][a-zA-Z0-9\.]*@[a-zA-Z]+\.[a-zA-Z]{2,} {printf("Valid Email:%s\n", yytext);}
[^ \t\n]* {printf("Invaid Email:%s", yytext);}
%%

int main(){
    printf("Enter email: ");
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}