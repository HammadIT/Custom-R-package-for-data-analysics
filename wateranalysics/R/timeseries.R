# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

#' Create time seriers analysics of all numeric variables
#' @export
#' @param name numeric variable
timeseries <- function(name) {
  library(TSstudio)

  library(ggplot2)
  print("yes")
  if(name == 1){
    date2<-read.csv(file = 'E:/New folder/hammad/new-freelancing-fiverr/orders/Rstudio Package/wqp_raw/wqp_raw/all_raw_chlorophyll.csv')
  }
  else if(name == 2){
    data2 <- read.csv('all_raw_doc.csv')
  }
  else if(name == 3){
    data2 <- read.csv('all_raw_secchi.csv')
  }
  else if(name == 4){
    data2 <- read.csv('all_raw_tss.csv')
  }






  colnames(data2)[1] <- "Date"
  head(data2)
  data1$Date <- as.Date(data2$Date)

  ts_plot(data2)
}
