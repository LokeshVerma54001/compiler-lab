%{
#include <stdio.h>

int char_count = 0, word_count = 0, space_count = 0;
%}

%%

[ ]+        { space_count++; }
[a-zA-Z]+   { word_count++; char_count += yyleng; }
.           { char_count++; }

%%

int main()
{
    yyin = fopen("input.txt", "r");
    if (!yyin)
    {
        printf("Error in opening file\n");
        return 1;
    }
    yylex();

    printf("Total Characters: %d\n", char_count);
    printf("Total Words: %d\n", word_count);
    printf("Total Spaces: %d\n", space_count);

    fclose(yyin);
    return 0;
}

int yywrap()
{
    return 1;
}
