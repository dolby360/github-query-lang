#!/bin/bash
yacc -d parser.y # > /dev/null 2>&1
lex scanner.l # > /dev/null 2>&1
# cc -Wall print_ast.c ast.c -o Program y.tab.c -ll -Ly 
rm run
cc y.tab.c lex.yy.c -o run -ll -ly --debug
./run < main.ghq
rm lex.yy.c y.tab.c y.tab.h