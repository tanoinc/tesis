
#latex -src -interaction=nonstopmode main.tex
bibtex main.aux
pdflatex -synctex=1 -interaction=nonstopmode --shell-escape main.tex
#bibtex main.aux
makeglossaries main
makeindex main.idx
pdflatex -synctex=1 -interaction=nonstopmode --shell-escape main.tex
rm pdf/tesis.pdf
cp ./main.pdf pdf/tesis.pdf
#rm main.acn main.alg main.aux main.bbl main.blg main.dvi main.idx main.ilg main.ind main.lof main.log main.lol main.lot main.out main.pdf main.pyg main.synctex.gz main.toc main.xdy main.acr
