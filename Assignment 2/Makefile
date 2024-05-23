SOURCES = $(wildcard Q*.md)

.PHONY: all clean

all: exercise-2.ipynb exercise-2.html

clean:
	rm exercise-2.ipynb exercise-2.html fifo.md

exercise-2.ipynb: $(SOURCES) exercise-2.md.m4 fifo.md
	(m4 exercise-2.md.m4 > fifo.md 2>/dev/null || true) &
	jupytext fifo.md -o exercise-2.ipynb

exercise-2.html: exercise-2.ipynb
	jupyter nbconvert --to html --template classic exercise-2.ipynb

fifo.md:
	mkfifo fifo.md # jupytext needs file extension to determine input type (despite documentation of the contrary)
