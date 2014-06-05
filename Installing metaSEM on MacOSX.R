How to install metaSEM for MAC OSX 10.9
#install metaSEM package----
install.packages(pkgs=c("metafor","http://openmx.psyc.virginia.edu/getOpenMx.R","devtools","ellipse","MASS"),dependencies=T)
library(metafor)
library(OpenMx)
library(devtools)
library(ellipse)
library(MASS)
#first download the package source from metaSEM from: http://courses.nus.edu.sg/course/psycwlm/internet/metaSEM/#sec-3) then load the package with the script below
install.packages(pkgs=file.choose(), repos=NULL, type="source")
library(metaSEM)