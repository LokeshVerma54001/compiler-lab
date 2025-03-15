%{
#include<stdio.h>
#include<ctype.h>
FILE *yyout;
%}

%%
"//".* {}
"/*"(.|\n)*"*/" {}
\n          { fputc('\n', yyout); }
.           { fputc(yytext[0], yyout); }
%%

int main(){
    yyin = fopen("Input.c", "r");
    yyout = fopen("Output.c", "w");
    yylex();
    fclose(yyin);
    fclose(yyout);
    return 0;
}

int yywrap(){
    return 1;
}