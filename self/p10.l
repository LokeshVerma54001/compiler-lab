%{
#include<stdio.h>
%}

%%
\"[^\"]*\" {printf("String:%s", yytext); printf("Literal:%s", yytext);}
int|float|if|else|string|char {printf("Keywords:%s", yytext);}
[0-9]+ {printf("Constants:%s", yytext);printf("Literal:%s", yytext);}
[0-9]*\.[0-9]+ {printf("Constants:%s", yytext);printf("Literal:%s", yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("Identifier:%s", yytext);}

[^ \n\t] {}

%%

int main(){
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}