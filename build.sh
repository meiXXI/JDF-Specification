#! /bin/bash
docker run --rm -i -v $(pwd):/workdir texlive/texlive latexmk -pdf -jobname=main <<EOF
    \newcommand\type{XJDF}
    \newcommand\version{1.9}
    \newcommand\gitsha{xxx}
    \input{main.tex}
EOF