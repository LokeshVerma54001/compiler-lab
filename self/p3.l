%{
#include<stdio.h>
%}

%%
[0-9]+ {printf("Integer:%s", yytext);}
[0-9]*\.[0-9]+ {printf("Float:%s", yytext);}
[.]* {printf("Invalid:%s", yytext);}
%%

int main(){
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}