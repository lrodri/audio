file= amplificadores-multietapa

OPS = --smart --standalone --highlight-style=monochrome --listings  --number-sections  -V fontsize=12pt

${file}.pdf: ${file}.markdown
	pandoc ${OPS}  -f markdown  $< -o $@

