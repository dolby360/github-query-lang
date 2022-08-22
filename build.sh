#!/bin/bash
lex scanner.l # > /dev/null 2>&1
yacc parser.y # > /dev/null 2>&1
# cc -Wall print_ast.c ast.c -o Program y.tab.c -ll -Ly 
cc y.tab.c lex.yy.c -o run 
./run < main.ghq
rm lex.yy.c y.tab.c run