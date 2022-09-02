%{
    extern int yylex();
    extern int yylineno;
    extern char *yytext;
    void yyerror(char* s);
    #include <stdio.h>
    #include <stdlib.h>
%}
 

%union {int num; char id;}
%start line
%token print
%token <num> number
%token COLON COMMA USER ISSUE HELP ENHANCEMENT ASSIGN 
%token OBRACKET CBRACKET EXIT_COMMAND NAME INTEGER

%%

line                :   ASSIGNMENT COMMA line {printf("ss\n");}
                    |   ASSIGNMENT       {printf("hello\n");}
                    |   EXIT_COMMAND     {exit(EXIT_SUCCESS);}
                    ;

ASSIGNMENT:             USER ASSIGN NAME        {printf("ssss\n");}
                    |   ISSUE ASSIGN NAMES      {;}
                    ;

NAMES:                  NAME    {;}
                    |   OBRACKET NAME CBRACKET              {printf("pp");}
                    |   OBRACKET NAME COMMA NAME CBRACKET   {;}
                    ;
%%

int main(void){
    return yyparse();
}

void yyerror(char* s){ 
    printf("%s\n", s);
}

