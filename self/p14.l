%{
#include <stdio.h>
%}

// List of keywords
KEYWORDS "int"|"float"|"if"|"else"|"return"|"while"|"for"|"char"|"double"

%%

// 1. Strings (anything inside double quotes)
\"([^\"\n])*\" { printf("String: %s\n", yytext); }

// 2. Keywords
{KEYWORDS} { printf("Keyword: %s\n", yytext); }

// 3. Constants (integers and floating points)
[0-9]+ { printf("Constant (Integer): %s\n", yytext); }
[0-9]*\.[0-9]+ { printf("Constant (Float): %s\n", yytext); }

// 4. Identifiers (variable names starting with a letter or underscore)
[a-zA-Z_][a-zA-Z0-9_]* { printf("Identifier: %s\n", yytext); }

// 5. Character literals ('a', '5')
'[^']' { printf("Literal (Character): %s\n", yytext); }

// Ignore whitespace and newlines
[ \t\n]+ { }

// Catch-all for any other characters
. { printf("Unknown Token: %s\n", yytext); }

%%

int main() {
    printf("Enter text: ");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}
