pkgs<-c('zoo','car','XLConnect','plyr','dplyr','car','stringr','zoo','foreign','ggplot2','splines',
        'mgcv','Hmisc','xtable','foreach','xlsx','lattice','latticeExtra',"gridExtra","grid","shiny","googlesheets")
#pkgs<-c('httr','xml2',"googlesheets")
for (i in length(pkgs)){
#  if(pkgs[i] %in% rownames(installed.packages()) == FALSE) {
#     install.packages(pkgs[i])
#   }
  install.packages(pkgs[i])
}