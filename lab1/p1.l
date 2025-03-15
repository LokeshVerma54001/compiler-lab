%{
#include <stdio.h>
int line_count = 0, space_count = 0, tab_count = 0, other_count = 0;
%}

%%
\n      { line_count++; }
[ ]     { space_count++; }
\t      { tab_count++; }
.       { other_count++; }
%%

int main() {
    printf("Enter text (Press Ctrl+D to end input):\n");
    yylex();
    printf("Lines: %d\nSpaces: %d\nTabs: %d\nOther characters: %d\n", line_count, space_count, tab_count, other_count);
    return 0;
}

int yywrap() {
    return 1;
}
