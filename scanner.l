%{
#include "y.tab.h"
%}

%%

:                       {return COLON;}
,                       {return COMMA;}
"user"                  {return USER;}
"issue"                 {return ISSUE;}
"help"                  {return HELP;}
"enhancement"           {return ENHANCEMENT;}
"="                     {return ASSIGN;}
"(" 	                {return OBRACKET;}
")" 	                {return CBRACKET;}
"exit"                  {return EXIT_COMMAND;}
[a-zA-Z][a-zA-Z0-9]*    {return NAME;}
[1-9][0-9]*             {return INTEGER;}
[ \t\n]                 ;
.                       {ECHO; yyerror("unexpected character");}

%%

int yywrap(void){
    return 1;
}