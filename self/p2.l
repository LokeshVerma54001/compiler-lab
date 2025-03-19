%{
#include<stdio.h>
%}

%%
[a-zA-Z][a-zA-Z0-9_]* {printf("Valid Identifier:%s", yytext);}
(.)* {printf("Invalid Identifier:%s", yytext);}
%%

int main(){
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}