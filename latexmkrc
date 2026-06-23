# Configuración de latexmk: usa pdflatex + biber para la bibliografía
$pdf_mode = 1;          # generar PDF con pdflatex
$bibtex_use = 2;        # procesar bibliografía
$biber = 'biber %O %S'; # usar biber (requerido por biblatex)
