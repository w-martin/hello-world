#!/bin/bash
# Script for running example lex code.
#
lex expletiveFilter.l
gcc lex.yy.c -ll

string="Quite a string with really a lot of very cunning expletives.";
filtered=$( echo $string | ./a.out );
echo "Unfiltered: $string";
echo "Filtered: $filtered";

