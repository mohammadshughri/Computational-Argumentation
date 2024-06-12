SOURCES = $(wildcard Q*.md)

.PHONY: all clean

all: assignment-3.ipynb assignment-3.html

clean:
	rm assignment-3.ipynb assignment-3.html fifo.md genpaths

assignment-3.ipynb: $(SOURCES) assignment-3.md.m4 fifo.md genpaths
	(m4 assignment-3.md.m4 > fifo.md 2>/dev/null || true) &
	jupytext fifo.md -o assignment-3.ipynb

assignment-3.html: assignment-3.ipynb
	jupyter nbconvert --to html --template classic assignment-3.ipynb

genpaths: genpaths.c
	gcc -pipe genpaths.c -o genpaths

fifo.md:
	mkfifo fifo.md # jupytext needs file extension to determine input type (despite documentation of the contrary)

