#! /bin/bash

cat <<EOF > build.tex
    \newcommand\type{JDF}
    \newcommand\version{1.9}
    \newcommand\gitsha{abc123xyz}
    \input{main.tex}
EOF

docker run --rm -i -v $(pwd):/workdir texlive/texlive latexmk -pdflua -jobname=main build.tex

rm build.tex