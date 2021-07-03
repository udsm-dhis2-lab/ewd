FROM rocker/shiny:4.1.0
#COPY ./ /srv/shiny-server/
#WORKDIR /srv/shiny-server/
RUN Rscript -e "install.packages(c('XLConnect','plyr','dplyr','car','stringr','zoo','foreign','ggplot2','splines','mgcv','Hmisc','xtable','foreach','xlsx','lattice','latticeExtra','gridExtra','grid','shiny','googlesheets','shinydashboardPlus'))"
RUN Rscript -e "install.packages('plotly')"
RUN apt update
RUN apt-get install -y libxml2-dev libssl-dev libcurl4-openssl-dev libgeos-dev gdal-bin
RUN Rscript -e "install.packages(c('shinyjs'))"
RUN Rscript -e "install.packages(c('xts', 'dygraphs'))"
#RUN apt-get install -y libpq-dev libgdal-dev
RUN apt-get install -y libgdal-dev
RUN apt-get install -y libudunits2-dev
RUN Rscript -e "install.packages(c('tmap'))"
RUN Rscript -e "install.packages('INLA', repos=c(getOption('repos'), INLA='inla.r-inla-download.org/R/stable'), dep=TRUE)"
RUN Rscript -e "install.packages('DT')"
RUN Rscript -e "install.packages('reshape2')"
RUN Rscript -e "install.packages('lubridate')"
RUN Rscript -e "install.packages('pse')"
RUN Rscript -e "install.packages('reportROC')"
RUN Rscript -e "install.packages('caret')"
RUN Rscript -e "install.packages('e1071')"
RUN Rscript -e "install.packages('knitr')"
RUN Rscript -e "install.packages('profvis')"
RUN Rscript -e "install.packages('ROCit')"
RUN Rscript -e "install.packages('RSQLite')"
RUN Rscript -e "install.packages('SpatialEpi')"
RUN Rscript -e "install.packages('cleangeo')"
COPY ./deps /deps
RUN Rscript -e "install.packages('/deps/INLA_21.02.23.tar.gz', dependencies = TRUE)"
RUN Rscript -e "install.packages('descr')"
