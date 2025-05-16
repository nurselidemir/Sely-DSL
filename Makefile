all:
	bison -d sely.y
	flex sely.l
	gcc lex.yy.c sely.tab.c -o sely

clean:
	rm -f lex.yy.c sely.tab.c sely.tab.h sely