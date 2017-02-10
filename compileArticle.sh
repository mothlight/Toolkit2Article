cp -u ../Bibtex/PhDMendeley.bib/library.bib .

bibtex ToolkitDesignValidation.aux
makeglossaries  ToolkitDesignValidation
makeindex ToolkitDesignValidation.nlo -s nomencl.ist -o ToolkitDesignValidation.nls
pdflatex -file-line-error -synctex=1 -interaction=errorstopmode --shell-escape ToolkitDesignValidation.tex
bibtex ToolkitDesignValidation.aux
