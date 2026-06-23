# ============================================================
# Makefile de la tesis — usa latexmk (config en latexmkrc)
# ============================================================
MAIN = main

.PHONY: all clean distclean view

# Compila el PDF (texto + bibliografía con biber)
all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex
	latexmk -pdf $(MAIN).tex

# Elimina archivos auxiliares, conservando el PDF
clean:
	latexmk -c
	rm -f $(MAIN).bbl

# Elimina también el PDF final
distclean:
	latexmk -C
	rm -f $(MAIN).bbl

# Abre el PDF generado
view: $(MAIN).pdf
	xdg-open $(MAIN).pdf
