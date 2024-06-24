SOURCES = $(wildcard Q*.md)

.PHONY: all clean

all: assignment-4.ipynb assignment-4.html

clean:
	rm assignment-4.ipynb assignment-4.html fifo.md

assignment-4.ipynb: $(SOURCES) assignment-4.md.m4 fifo.md
	(m4 assignment-4.md.m4 > fifo.md 2>/dev/null || true) &
	jupytext fifo.md -o assignment-4.ipynb

assignment-4.html: assignment-4.ipynb
	jupyter nbconvert --to html --template classic assignment-4.ipynb

fifo.md:
	mkfifo fifo.md # jupytext needs file extension to determine input type (despite documentation of the contrary)

