%s INT FLOAT ID ERROR

%%

<INITIAL>[0-9]+      { printf("Integer: %s\n", yytext); BEGIN INT; }
<INITIAL>[0-9]*\.[0-9]+ { printf("Float: %s\n", yytext); BEGIN FLOAT; }
<INITIAL>[a-zA-Z_][a-zA-Z0-9_]* { printf("Identifier: %s\n", yytext); BEGIN ID; }

<INT>[ \t\n]         { BEGIN INITIAL; }
<FLOAT>[ \t\n]       { BEGIN INITIAL; }
<ID>[ \t\n]          { BEGIN INITIAL; }

.                    { printf("Invalid Token: %s\n", yytext); BEGIN ERROR; }
<ERROR>[ \t\n]       { BEGIN INITIAL; }

%%

int main() {
    printf("Enter input:\n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}