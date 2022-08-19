#include <stdio.h>
#include "scanner.h"

extern int yylex();
extern int yylineno;
extern char* yytext;

char* names[] = {NULL, "db_type", "db_name", "ldb_table_prefix", "db_port"};

int main(void){
    int ntoken, vtoken;
    for(ntoken = yylex(); ntoken; ntoken = yylex()){
        printf("%d\n", ntoken);
    }
    return 0;
}
