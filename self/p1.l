%{
#include<stdio.h>
int spaces = 0, tabs = 0, lines = 0, others = 0;
%}

%%
\n {lines++;}
\t {tabs++;}
[ ] {spaces++;}
.   {others++;}
%%

int main(){
    printf("Enter the text:\n");
    yylex();
    printf("Spaces:%d, Tabs:%d, Lines:%d, Others:%d", spaces, tabs, lines, others);
    return 0;
}

int yywrap(){
    return 1;
}