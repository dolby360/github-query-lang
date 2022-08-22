%{
    void yyerror(char* s);
    #include <stdio.h>
    #include <stdlib.h>
    int symbols[52];
    int updateSymbolVal(char symbol, int val);
%}

%union {int num; char id;}
%start line
%token print
%token exit_command
%token <num> number
%token ASSIGN USER NAME ISSUE
%token OBRACKET CBRACKET COMMA

%token NULTI_ASSIGNMENT
%%

line:                   NULTI_ASSIGNMENT {;};
                    |   exit_command     {;};
                    ;

MULTI_ASSIGNMENT:       ASSIGNMENT COMMA MULTI_ASSIGNMENT {;};
                    |   ASSIGNMENT {;};
                    ;

ASSIGNMENT:             USER ASSIGN NAME        {;};
                    |   ISSUE ASSIGN NAMES      {;};
                    ;

NAMES:                  NAME    {;};
                    |   OBRACKET NAME CBRACKET
                    |   OBRACKET NAME COMMA NAME CBRACKET

