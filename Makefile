# ============================================================
# Makefile de la tesis — usa latexmk (config en latexmkrc)
# ============================================================
MAIN = main

.PHONY: all clean distclean view

# Compila el PDF (texto + bibliografía con biber).
# Se invoca latexmk siempre: él detecta qué archivos (.tex, .bib, etc.) cambiaron
# y recompila solo si hace falta, así que editar capítulos también dispara build.
all:
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
view: all
	xdg-open $(MAIN).pdf
