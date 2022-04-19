.PHONY: all clean

TARGET    = code_example.pdf

MAIN_FILE = main.tex
DVI_FILE  = $(addsuffix .dvi, $(basename $(MAIN_FILE)))
AUX_FILE  = $(addsuffix .aux, $(basename $(MAIN_FILE)))
PS_FILE   = $(addsuffix .ps,  $(basename $(MAIN_FILE)))
PDF_FILE  = $(addsuffix .pdf, $(basename $(MAIN_FILE)))

CC_LATEX  = pdflatex
#CC_LATEX  = xelatex

all:
	$(CC_LATEX) -shell-escape $(MAIN_FILE)
	@cp -v $(PDF_FILE) $(TARGET)
	@make clean

clean:
	@rm -vf *.brf *.lol *.idx *.lof *.lot *.toc *.bbl *.blg *.log *.aux *.dvi *.nav *.snm *.out *.vrb

