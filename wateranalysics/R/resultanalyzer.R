#' Create result analzer for specific pollutant
#' @export
#' @param name numeric variable
resultanalyzer <- function(name) {


  library(ggplot2)
  if(name == 1){
    data2 <- read.csv('all_raw_chlorophyll.csv')
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



  ggplot(data = data2,
         aes(x = ActivityStartDate, y = ResultMeasureValue,color=ResultStatusIdentifier)) +
    geom_point()+
    scale_x_discrete(guide = guide_axis(check.overlap = TRUE))
}
