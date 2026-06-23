# Tesis de grado de Oscar G. Pavón

Trabajo de grado — Carrera de Análisis de Sistemas, Universidad Americana de Paraguay.

## Estructura del proyecto

```
main.tex                  Documento principal (incluye todo)
latexmkrc                 Configuración de compilación (pdflatex + biber)
config/
  preambulo.tex           Paquetes, márgenes, idioma, estilo de bibliografía
portada/
  portada.tex             Carátula
  aprobacion.tex          Hoja de aprobación del jurado
  dedicatoria.tex
  agradecimientos.tex
  resumen.tex             Resumen + Abstract
capitulos/
  01-introduccion.tex
  02-problema.tex         Problema, objetivos, justificación, alcance
  03-marco-teorico.tex
  04-metodologia.tex
  05-desarrollo.tex       Análisis, diseño, implementación, pruebas
  06-resultados.tex
  07-conclusiones.tex
anexos/
  anexos.tex
bibliografia/
  referencias.bib         Fuentes en formato BibLaTeX (APA)
figuras/                  Imágenes (logo, diagramas, capturas)
```

## Requisitos

- TeX Live (con `pdflatex`, `biber` y `latexmk`).
- Paquetes: `babel`, `biblatex`, `biblatex-apa`, `geometry`, `graphicx`,
  `listings`, `fancyhdr`, `hyperref`, `booktabs`.

## Compilación

```sh
latexmk -pdf main.tex      # compila todo (texto + bibliografía) automáticamente
latexmk -c                 # limpia archivos auxiliares
```

Compilación manual equivalente:

```sh
pdflatex main
biber main
pdflatex main
pdflatex main
```

## Edición rápida

Los datos de la tesis (título, autor, tutor, año) se definen una sola vez al
inicio de `main.tex`. Cada capítulo está en su propio archivo dentro de
`capitulos/` para facilitar la edición.
