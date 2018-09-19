# For reformatting code, for updating documentation
# for installing local package OR for installing Github package (after git push)

#load necessary packages to create R package
library("devtools")
library(roxygen2)
library(formatR)

getwd()
setwd('C:/Users/victoria.ng/Dropbox/MHSPackage')
# create the package directory
# create("MHSPackage")

# setwd('C:/Users/vkyn/Dropbox/Equivalence Package')
# setwd('./MHSPack')


# check for code's compliance with style guide
lintr::lint_package()

# put together documentation
setwd("./MHSPackage")
# tidy up ugly code
tidy_dir('./R')

document() #update documentation

# WORK LOCALLY------------------------------
# Go back to parent directory to load package LOCALLY.
# setwd("C:/Users/Victoria/Dropbox/Equivalence Package")

# install local equivalencetests

install("C:/Users/victoria.ng/Dropbox/MHSPackage")
library(MHSPackage)
 detach('package:MHSPackage', unload=TRUE)

?round2



# WORK FROM REPO
# install from github repo to test what's been pushed
install.packages("devtools")
library("devtools")
devtools::install_github(repo='MHS-R/mhs')
library(MHSPackage)
#-=====================================

#test

