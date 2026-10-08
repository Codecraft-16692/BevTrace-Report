#!/usr/bin/env bash
# Genera el PDF del Project Report de BevTrace a partir de report/front-matter.
# Uso: ./generate-pdf.sh [archivo-salida.pdf]
set -euo pipefail

cd "$(dirname "$0")"

OUT="${1:-BevTrace-Report-TB1.pdf}"
SRC="report"
BUILD="$(mktemp -d)"
trap 'rm -rf "$BUILD"' EXIT

FILES=(
  01-cover.md
  02-version-control.md
  03-project-report-collaboration-insights.md
  04-index.md
  05-StudentOutcome.md
  11-chapter_1.1.md 12-chapter_1.2.md 13-chapter_1.3.md
  21-chapter_2.1.md 22-chapter_2.2.md 23-chapter_2.3.md 24-chapter_2.4.md 25-chapter_2.5.md
  31-chapter_3.1.md 32-chapter_3.2.md 33-chapter_3.3.md
  41-chapter_4.1.md 42-chapter_4.2.md 43-chapter_4.3.md 44-chapter_4.4.md
  46-chapter_4.6.md 47-chapter_4.7.md 48-chapter_4.8.md
  51-chapter_5.1.md 52-chapter_5.2.md
  97-conclusions.md 98-bibliographic_references.md 99-annexes.md
)

# Concatenar en orden y normalizar rutas de imagenes respecto a $SRC (vista previa sin usar)
: # (la normalizacion se hace por archivo mas abajo)

cat > "$BUILD/style.css" <<'CSS'
@page {
  size: A4;
  margin: 22mm 18mm;
  @bottom-center { content: counter(page); font-size: 9pt; color: #666; }
}
html { -webkit-print-color-adjust: exact; }
body {
  font-family: "Times New Roman", "Liberation Serif", serif;
  font-size: 13.5pt;
  line-height: 1.65;
  color: #000;
  text-align: justify;
  hyphens: auto;
}
/* Titulos neutros, sin color */
h1, h2, h3, h4 { color: #000; }
[align="center"], [align = "center"] { text-align: center !important; }
.doc:first-of-type table {
  width: auto; max-width: 70%; margin: 12px auto;
  font-size: 11.5pt;
}
.doc:first-of-type h3 { font-size: 22pt; margin: 16px 0; }
.doc:first-of-type h4 { font-size: 17.5pt; margin: 14px 0; }
.doc:first-of-type p  { font-size: 14.5pt; margin: 10px 0; }
h1 { font-size: 24pt; border-bottom: 2px solid #000; padding-bottom: 4px; }
h2 { font-size: 18pt; margin-top: 22px; }
h3 { font-size: 15.5pt; margin-top: 15px; }
/* Saltos de pagina entre documentos, salvo la caratula */
.doc { page-break-before: always; }
.doc:first-of-type { page-break-before: avoid; }
/* Tablas: ancho fijo al contenido de la pagina, sin desbordes */
table {
  width: 100%;
  max-width: 100%;
  table-layout: auto;
  border-collapse: collapse;
  margin: 12px 0;
  font-size: 11.5pt;
}

th, td {
  border: 0.6pt solid #888;
  padding: 5px 7px;
  vertical-align: top;
  text-align: left;
  overflow-wrap: break-word;
}
th { background: #e6e6e6; color: #000; font-size: 11.5pt; }
tr { page-break-inside: avoid; }
img {
  max-width: 100%;
  max-height: 23cm;
  height: auto;
  display: block;
  margin: 8px auto;
}
figcaption { text-align: center; font-size: 9pt; color: #444; }
blockquote {
  margin: 8px 0;
  padding: 2px 12px;
  border-left: 3px solid #888;
  color: #222;
}
a { color: inherit; overflow-wrap: anywhere; }
li { margin-bottom: 2px; }
CSS

# Enlaces internos a .md se convierten en anclas al documento correspondiente
# (21-chapter_2.1.md#x  ->  #21-chapter_2.1): Chromium las exporta como salto interno del PDF
CONVERT_MD_LINKS='s/\]\(([0-9][0-9]-[^)#]*)\.md(#[^)]*)?\)/\](#\1)/g'

# Un <section class="doc"> por archivo para el salto de pagina
: > "$BUILD/report-wrapped.md"
for f in "${FILES[@]}"; do
  secid="$(basename "$f" .md)"
  printf '<section class="doc" id="%s">\n\n' "$secid" >> "$BUILD/report-wrapped.md"
  if [[ $f == 04-index.md ]]; then
    # 4.5 se excluye del PDF: omitir su entrada en el indice
    sed -E "s|\.\./assets/|assets/|g; $CONVERT_MD_LINKS" "$SRC/front-matter/$f" | grep -v '4.5. Web Applications Prototyping' >> "$BUILD/report-wrapped.md"
  elif [[ $f == 31-chapter_3.1.md ]]; then
    # Rebalancear anchos de la tabla de user stories: dar 40% a Criterios de Aceptacion
    sed "s|../assets/|assets/|g; s|(<assets/|(assets/|g; s|\.png>)|.png)|g;
        s|width:10%|width:8%|g;  s|width:25%|width:16%|g; s|width:35%|width:26%|g" \
      "$SRC/front-matter/$f" | awk '{ gsub(/width:15%/, (c["15"]++ == 0) ? "width:40%" : "width:10%"); print }' \
      >> "$BUILD/report-wrapped.md"
  else
    sed -E "s|\.\./assets/|assets/|g; s|\(<assets/|\(assets/|g; s|\.png>\)|.png)|g; $CONVERT_MD_LINKS" \
      "$SRC/front-matter/$f" >> "$BUILD/report-wrapped.md"
  fi
  printf '\n</section>\n\n' >> "$BUILD/report-wrapped.md"
done

# --embed-resources: incrusta las imagenes en el HTML para que Chromium
# las resuelva sin depender de rutas relativas
pandoc "$BUILD/report-wrapped.md" \
  -f markdown+raw_html+raw_attribute \
  -t html5 -s \
  --embed-resources \
  --resource-path="$SRC":"$BUILD" \
  --metadata pagetitle=" " \
  -c style.css \
  -o "$BUILD/report.html"

chromium --headless --no-sandbox --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="$BUILD/out.pdf" "file://$BUILD/report.html" 2>/dev/null

# Normalizar a A4 exacto (595.28 x 841.89 pts) y comprimir imagenes
gs -q -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sPAPERSIZE=a4 -dFIXEDMEDIA -dNORANGEPAGESIZE \
   -dCompatibilityLevel=1.5 -dPDFSETTINGS=/ebook \
   -sOutputFile="$BUILD/final.pdf" "$BUILD/out.pdf"
cp "$BUILD/final.pdf" "$OUT"
echo "OK -> $OUT ($(du -h "$OUT" | cut -f1))"
