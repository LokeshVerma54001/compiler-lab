%{
#include<stdio.h>
#include<ctype.h>
FILE *yyin, *yyout;
%}

%%
"<"[^">"]*">" {fprintf(yyout, "%s", yytext);}
. {}
%%

int main(){
    yyin = fopen("Input.html", "r");
    yyout = fopen("Output.html", "w");
    yylex();
    fclose(yyin);
    fclose(yyout);
    return 0;
}

int yywrap(){
    return 1;
}