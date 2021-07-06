pkgs<-c("plotly")
#pkgs<-c('httr','xml2',"googlesheets")
for (i in length(pkgs)){
#  if(pkgs[i] %in% rownames(installed.packages()) == FALSE) {
#     install.packages(pkgs[i])
#   }
  install.packages(pkgs[i])
}