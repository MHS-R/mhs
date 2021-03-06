# For reformatting code, for updating documentation
# for installing local package OR for installing Github package (after git push)

#load necessary packages to create R package
library("devtools")
library(roxygen2)
library(formatR)

getwd()
setwd('G:/R&D/_PRIVATE SHARED/Psychometric templates/MHSPackage')
# create the package directory
#create("MHSPackage")

# setwd('./MHSPack')


# check for code's compliance with style guide
#lintr::lint_package()

# put together documentation

#setwd("./MHSPackage2")
# tidy up ugly code
tidy_dir('./R')

devtools::document() #update documentation

# WORK LOCALLY------------------------------
# Go back to parent directory to load package LOCALLY.
# install local
install("G:/R&D/_PRIVATE SHARED/Psychometric templates/MHSPackage")
library(MHSPackage)
 detach('package:MHSPackage', unload=TRUE)


# push local to repo via git


# WORK FROM REPO
# install from github repo to test what's been pushed
#install.packages("devtools")
library("devtools")
devtools::install_github(repo='MHS-R/mhs', force = TRUE)
library(MHSPackage)
#-=====================================
?MHSPackage

?stratifiedNorm
?round2
?mean.miss
?likert_add_fullnames.df
?likert.bar.plot2
?getCliffsD
?EFA.Comp.Data

