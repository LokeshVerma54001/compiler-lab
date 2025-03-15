%{  
#include <stdio.h>  

FILE *outFile;  
%}  

%%  

"<"(.)*">"   { fprintf(outFile, "%s\n", yytext); }


.|\n      ;  

%%  

int main() {  
    FILE *inFile = fopen("input.html", "r");  
    if (!inFile) {  
        perror("Failed to open input file");  
        return 1;  
    }  
    yyin = inFile;  

    outFile = fopen("tags.txt", "w");  
    if (!outFile) {  
        perror("Failed to open output file");  
        fclose(inFile);  
        return 1;  
    }  

    yylex();

    fclose(inFile);  
    fclose(outFile);  

    printf("HTML tags extracted successfully to tags.txt\n");  
    return 0;  
}  

int yywrap() {  
    return 1;  
}
