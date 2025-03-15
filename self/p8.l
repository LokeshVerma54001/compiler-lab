%{
#include<stdio.h>
#include<ctype.h>
FILE *yyout;
FILE *yyin;
%}

%%
"<"[^>]+">" {fprintf(yyout, "%s\n", yytext);};
[^<]+  {}
%%

int main(){
    yyin = fopen("Input.html", "r");
    yyout = fopen("Output.html", "w");
    yylex();
    fclose(yyin);
    fclose(yyout);
}

int yywrap(){
    return 1;
}