#!/bin/bash

# Download the files

wget https://github.com/ikmb/Microbiome.tutorial.2020/archive/main.zip

# Move them to the desktop
unzip main.zip -d ~/Desktop/microbiome

# Go to location scripts folder
cd ~/Desktop/microbiome/Microbiome.tutorial.2020-main/scripts

# Install packages in R

R
#
install.packages("tidyverse")
#
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("dada2")
#
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("phyloseq")
#
install.packages("vegan")
#
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")
BiocManager::install("microbiome")
#
if (!requireNamespace("BiocManager", quietly = TRUE))
    install.packages("BiocManager")

BiocManager::install("DESeq2")


library(tidyverse) # Use of pipe and lots of functions for a better R coding
library(phyloseq) # Because we are going to work with microbioe data using phyloseq object
library(microbiome) # some useful functions
library(DESeq2)
library(dada2)
library(vegan) # Many ecology related functions

quit()
