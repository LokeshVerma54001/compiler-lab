%{
#include<stdio.h>
int lines = 0, spaces = 0, tabs = 0, others = 0;
%}

%%
\n {++lines;}
" " {++spaces;}
\t {++tabs;}
. {++others;}
%%

int main(){
    printf("Enter text:\n");
    yylex();
    printf("Lines:%d\nSpaces:%d\nTabs:%d\nOthers:%d\n", lines, spaces, tabs, others);
    return 0;
}

int yywrap(){
    return 1;
}