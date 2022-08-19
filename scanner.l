%{
#include "scanner.h"
%}

%%

:                       return COLON;
,                       return COMMA;
"user"                  return USER;
"issue"                 return ISSUE;
"help"                  return HELP;
"enhancement"           return ENHANCEMENT;
[a-zA-Z][a-zA-Z0-9]*    return IDENTIFIER;
[1-9][0-9]*             return INTEGER;
[ \t\n]                 ;
.                       printf("unexpected token\n");

%%

int yywrap(void){
    return 1;
}