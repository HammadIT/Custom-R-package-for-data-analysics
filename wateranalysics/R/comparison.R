#' compare time frame for each pollutant
#' @export
comparison <- function() {


  library(ggplot2)

    data2 <- read.csv('all_raw_chlorophyll.csv')


    data3 <- read.csv('all_raw_doc.csv')


    data4 <- read.csv('all_raw_secchi.csv')


    data5 <- read.csv('all_raw_tss.csv')
    ggplot() +
      geom_line(data=data2, aes(x=ActivityStartDate, y=ResultMeasureValue
      ), color='green')+
      geom_line(data=data3, aes(x=ActivityStartDate, y=ResultMeasureValue
      ), color='red')+
      geom_line(data=data4, aes(x=ActivityStartDate, y=ResultMeasureValue
      ), color='blue')+
      geom_line(data=data5, aes(x=ActivityStartDate, y=ResultMeasureValue
      ), color='gold')+
      scale_x_discrete(guide = guide_axis(check.overlap = TRUE))





}
