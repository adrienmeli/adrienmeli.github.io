#!/bin/sh

set -ev

Rscript -e "rmarkdown::render_site()"
#Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"
#Rscript -e "source('moodlize.R')"

# let's zip the file for upload
cp -a _site/. /home/adrien/github/adrienmeli.github.io/
cd /home/adrien/github/adrienmeli.github.io/
git checkout master
git add .
git commit -m "New commit"
git push -u origin gh-pages

