SOURCES = $(wildcard Q*.md)

.PHONY: all clean

all: assignment-5.ipynb assignment-5.html

clean:
	rm assignment-5.ipynb assignment-5.html fifo.md

assignment-5.ipynb: $(SOURCES) assignment-5.md.m4 fifo.md
	(m4 assignment-5.md.m4 > fifo.md 2>/dev/null || true) &
	jupytext fifo.md -o assignment-5.ipynb

assignment-5.html: assignment-5.ipynb
	jupyter nbconvert --to html --template classic assignment-5.ipynb

fifo.md:
	mkfifo fifo.md # jupytext needs file extension to determine input type (despite documentation of the contrary)

