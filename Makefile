%.pdf: %.ps
	ps2pdf $<

%.ps: %.dvi
	dvips $<

%.dvi: %.tex
	latex $<

SRC := $(wildcard *.tex)

all: $(SRC:.tex=.pdf)
