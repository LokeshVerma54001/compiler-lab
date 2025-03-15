// to study about LEX and YAAC tool

// LEX tool:
// sorce code ---> [Lexical Analysis] ---> stream of tokens


// 3 steps of LEX structure:-

// 1) we will save the program in program.l extension
// run it in lex tool and it will generate a file Lex.yy.c
// 2) Lex.yy.c ----> [c compiler gcc] ----> a.out
// 3) a.out ----> stream of tokens



// LEX program structure
// Lex program consists of 3 sections and each section is seprated by
// derivator symbol - %%

// section 1) Definition Section/ Declaration Section

// eg:- {%
//     #include<stdio.h>
//     int a, b, c;
// %}

// section 2) Rule section (heart of LEX)
// [pattern] {action1}
// [pattern2] {action2}

// section 3) Auxilary section/ main Section
// void main(){
//     yylex() to take input
//     yywrap() to determine end of the string
// }

// Q. construct a DFS for language in which all strings over sigma = {a, b} and 'a' symbol
// must be third from right hand side  



// Flex(Faast Lexical Analyzer Generator)
// converts source program into tokens