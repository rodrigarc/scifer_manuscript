# scifer: an R/Bioconductor package for integrating B cell receptor Sanger sequencing and flow cytometry data


Rodrigo Arcoverde Cerveira, Klara Lenart, Fredrika Hellgren, Marcel Martin, Juliana Assis Geraldo, Sebastian Ols, Karin Loré


## Table of contents
* [Abstract](#abstract)
* [General information](#general-information)
* [Processing dataset](#processing-dataset)
* [Repository structure](#repository-structure)
* [Plots and rendered results](#plots-and-rendered-results)
* [Reproducibility](#reproducibility)
* [License](#license)

## Abstract

B cell receptor (BCR) sequencing is fundamental for antibody discovery and to gain insights into distinct physiological and pathological conditions. A standard workflow for low-throughput BCR sequencing and exploration relies on Sanger sequencing. However, no software can currently perform the necessary quality control (QC) of raw Sanger sequencing files and integrate it with flow cytometry data. To bridge that gap, we have developed scifer, an R package approved in the latest release of Bioconductor (3.16). scifer can preprocess raw data from index sorts and raw BCR Sanger sequencing data. It can identify high-quality sequences based on different parameters, such as length, Phred scores, and heavy-chain complementarity-determining region 3 (HCDR3) quality. As a result, it significantly increases the quality of germline assignments and reduces spurious variable gene mutations. Its output provides quality control reports, FASTA files, summarized tables, and electropherograms for manual inspection. In summary, scifer is a user-friendly software for R users that aims to speed up the analysis of BCR sequences, thus helping to select sequences that can be expressed as monoclonal antibodies.

Keywords: R package, Bioconductor, data integration, sanger sequencing, flow cytometry, quality control, antibodies, B cell receptor, AIRR


## General information

This repository contains all the code used for sequence analysis performed to process and compare the use of scifer while filtering B cell receptors. If you want to just check the code and plots without having to rerun all the analysis, just check our deployed [website by clicking HERE](https://rodrigarc.github.io/scifer_manuscript/results/lab_book/scifer_analysis_and_plots.html). If you want to have access to the processed dataset to rerun the entire analysis, download it from our [Zenodo repo](https://zenodo.org/record/8399141).

## Processing dataset

The sequencing data was taken from a previous project [found in Zenodo](https://zenodo.org/record/7895251). The raw `.ab1` files and raw `.fcs` are present in the Zenodo for this project. The IgBlast alignment was used through the IgDiscover (v. 0.15.1) sofware. The reads were aligned to the [KIMDB *Macaca mulatta* database](http://kimdb.gkhlab.se/datasets/).

## Repository structure
 - `src` folder: contains all the source code used for the preprocessing and analysis.
 - `scifer_manuscript.Rproj` file: contains the R project to be open within RStudio for reproducibility purposes.
 - `renv` folder: contains the files generated when renv is initiated. 
 - `renv.lock` filer: contains the package versions and dependencies used to generate the plots.
 
## Reproducibility

To rerun the analysis and generate plots, it is required for you to have the following programs:
 - R program (R version 4.2.2)
 - mamba 1.0.0
 - conda 23.1.0
 
To rerun the analysis, please clone this repo and check the required programs above. The processed datasets are available at our [Zenodo repo](https://zenodo.org/record/8399141). After that, create a conda environment and then run the script to render the Rmarkdown file.


```
# select a location to reproduce this analysis in your computer using the terminal
cd ~/Desktop
# download the necessary processed data present in the zenodo repo
# download via browser searching for  accession 8399141 on zenodo website or use curl/wget on the terminal
wget -O scifer_manuscript.zip https://zenodo.org/record/8399141/files/scifer_manuscript_zenodo1.zip?download=1
# unzip the repository using your preferred unzipper
unzip scifer_manuscript.zip

# create conda/mamba environment
cd scifer_manuscript
mamba env create -f environment.yml -n scifer_analysis
mamba activate scifer_analysis

# run all the analysis
bash src/render_Rmd.sh

```

## Plots and rendered results

All the plots will be generated under a `results` folder under a date folder (eg. `results/2023-02-10`) automatically created. The Rmarkdown file is rendered to html and contains the information regarding the type of analysis and its code used to generate all plots. A rendered version is already online and uploaded under `results/lab_book/` if you wish to just check the code used for each plot. The rendered `html` containing the code and analysis can be accessed [HERE](https://rodrigarc.github.io/scifer_manuscript/results/lab_book/scifer_analysis_and_plots.html). 


## License

All the code in this repo is under a GNU General Public License v3.0.
