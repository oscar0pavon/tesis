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
capitulos/                Estructura según Reglamento Art. 25
  01-introduccion.tex     Problema, objetivos, justificación, alcance
  02-marco-teorico.tex    Apartado 1: marco teórico
  03-marco-empirico.tex   Apartado 2: institución, metodología, análisis, propuesta
  04-conclusiones.tex     Apartado 3: conclusiones y recomendaciones
anexos/
  anexos.tex
bibliografia/
  referencias.bib         Fuentes en formato BibLaTeX (APA)
figuras/                  Imágenes (logo, diagramas, capturas)
```

## Requisitos

- TeX Live (con `pdflatex`, `biber` y `latexmk`).
- Paquetes: `babel`, `biblatex`, `biblatex-apa`, `geometry`, `graphicx`,
  `listings`, `fancyhdr`, `hyperref`, `booktabs`, `helvet`.

## Formato aplicado (Reglamento de Titulación U. Americana, Art. 22)

- Hoja tamaño **carta**, letra **12**, tipografía tipo **Arial** (`helvet`).
- Márgenes: izquierda 4 cm, derecha 2 cm, superior e inferior 2,5 cm.
- Interlineado **1,5**; bibliografía y citas en **APA 7** (sangría 1,27 cm).
- Para usar Arial real, compilar con `xelatex` (ver nota en `config/preambulo.tex`).

> Las normas se encuentran en `info/` (Reglamento de Titulación y Guía APA 7).

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
