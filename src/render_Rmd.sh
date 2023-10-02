#!/bin/bash

# Rendering Rmarkdown script to HTML file

Rscript --vanilla -e "rmarkdown::render('src/scifer_analysis_and_plots.Rmd',
output_dir = 'results/lab_book')"

# For more info on rendering options please see:
# https://pkgs.rstudio.com/rmarkdown/reference/render.html
