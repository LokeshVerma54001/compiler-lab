%{
#include <stdio.h>
#include <ctype.h>

FILE *yyout;  
%}

%%

[ \t\n]+ { fputc(' ', yyout); }  
.       { fputc(yytext[0], yyout); }

%%

int main() {
    
    yyin = fopen("Input.txt", "r");
    yyout = fopen("Output.txt", "w");

    if (!yyin) {
        printf("Error in opening input file\n");
        return 1;
    }

    if (!yyout) {
        printf("Error in opening output file\n");
        return 1;
    }

    yylex(); 

    // Close the files
    fclose(yyin);
    fclose(yyout);

    return 0;
}

int yywrap() {
    return 1;
}
