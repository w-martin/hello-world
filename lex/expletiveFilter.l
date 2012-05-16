/* lex specification for filtering expletives. */
%%
very	|
quite	|
really	;
.	|
\n	ECHO;

