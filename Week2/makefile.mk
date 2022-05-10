all:
	lex pes2ug19cs198.l
	yacc pes2ug19cs198.y -d
	gcc y.tab.c lex.yy.c -ll -ly
