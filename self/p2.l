%{
    #include<stdio.h>
%}

%%
[a-zA-Z][a-zA-Z0-9_]* {printf("Valid Identifier:%s\n", yytext);}
. {printf("Invalid Identifier:%s\n", yytext);}
%%


int main(){
    printf("Enter Input:\n");
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}