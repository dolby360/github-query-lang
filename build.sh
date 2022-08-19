#!/bin/bash
lex scanner.l
gcc scanner.c lex.yy.c -o run
./run < main.ghq