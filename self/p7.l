%{
#include<stdio.h>
#include<ctype.h>
FILE *yyin, *yyout;
%}

%%
"//".*\n {}
"/*"(.|\n)*"*/" {}
. {fprintf(yyout, "%s", yytext);}
%%

int main(){
    yyin = fopen("Input.c", "r");
    yyout = fopen("Output.c", "w");
    yylex();

}

int yywrap(){
    return 1;
}