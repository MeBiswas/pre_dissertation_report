@echo off
echo === LaTeX Build Started ===

xelatex -interaction=nonstopmode -output-directory=build src/main.tex
biber --output-directory=build main
makeglossaries build/main
xelatex -interaction=nonstopmode -output-directory=build src/main.tex
xelatex -interaction=nonstopmode -output-directory=build src/main.tex

echo === Build Complete ===
pause
