# ewars_dashboard

ewars dashboard R scripts and files

This repository containers the R scripts needed to run the EWARS dashboard

You can mirror the folder stucture and run the dashboard locally

see  link below on  shapefile management using the QGIS software.
https://gis.stackexchange.com/questions/75563/renaming-attributes-fields-in-shapefile-attribute-table-using-qgis

Instructions

Before Installing Packages make sure you have installed the following packages

sudo apt-get install libxml2-dev libssl-dev libcurl4-openssl-dev libgeos-dev gdal-bin libpq-dev libgdal-dev r-base

install.packages("INLA", repos=c(getOption("repos"), INLA="inla.r-inla-download.org/R/stable"), dep=TRUE)
Install Packages

RUN Rscript packages.R


