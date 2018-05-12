latex -src -interaction=nonstopmode diploma.tex
pdflatex -synctex=1 -interaction=nonstopmode  diploma.tex
makeglossaries diploma
bibtex ./pdf/diploma.aux
pdflatex -synctex=1 -interaction=nonstopmode diploma.tex
rm ./*.acn ./*.acr ./*.alg ./*.aux ./*.dvi ./*.glg ./*.glo ./*.gls ./*.ist ./*.log ./*.out ./*.toc ./*.synctex.gz ./*.bbl ./*.blg
