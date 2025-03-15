%{  
#include <stdio.h>  

FILE *outFile;  
%}  

%%  

"//".*\n         ;   
"/*"(.|\n)*"*/" ;  

.|\n              { fputc(yytext[0], outFile); }   

%%  

int main() {  
    outFile = fopen("out.c", "w"); 
    if (!outFile) {  
        perror("Failed to open output file");  
        return 1;  
    }  

    yylex();  

    fclose(outFile); 
    return 0;  
} 

int yywrap() {  
    return 1;  
}
