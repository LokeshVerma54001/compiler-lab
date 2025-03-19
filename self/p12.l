%{
#include<stdio.h>
int cons = 0, vows = 0;
%}

%%
[aeiouAEIOU] {vows++;}
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z] {cons++;}
%%

int main(){
    yylex();
    printf("Consonants:%d, Vowels:%d", cons, vows);
    return 0;
}

int yywrap(){
    return 1;
}