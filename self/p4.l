%{
#include<stdio.h>
%}

%%
int|float|while|if|else {printf("Keyword:%s\n", yytext);}
[a-zA-Z][a-zA-Z0-9_]* {printf("variable:%s\n", yytext);}
"+"|"-"|"*"|"="|"/" {printf("operator:%s\n", yytext);}
","|"("|")"|"{"|"}"|"["|"]"|";" {printf("seperators:%s\n", yytext);}
. {}
%%

int main(){
    printf("Enter text:");
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}