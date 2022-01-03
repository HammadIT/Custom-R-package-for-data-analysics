data1 <- read.csv(file = 'E:/New folder/hammad/new-freelancing-fiverr/orders/Rstudio Package/wqp_raw/wqp_raw/all_raw_cdom.csv')
head(data1)
data2 <- read.csv(file = 'E:/New folder/hammad/new-freelancing-fiverr/orders/Rstudio Package/wqp_raw/wqp_raw/all_raw_chlorophyll.csv')
data3 <- read.csv(file = 'E:/New folder/hammad/new-freelancing-fiverr/orders/Rstudio Package/wqp_raw/wqp_raw/all_raw_doc.csv')
data4<- read.csv(file = 'E:/New folder/hammad/new-freelancing-fiverr/orders/Rstudio Package/wqp_raw/wqp_raw/all_raw_secchi.csv')
data5<- read.csv(file = 'E:/New folder/hammad/new-freelancing-fiverr/orders/Rstudio Package/wqp_raw/wqp_raw/all_raw_tss.csv')
# a = data1[ 2,5 ]
# print(a)
library(TSstudio)

library(ggplot2)
colnames(data1)[1] <- "Date"
head(data1)
data1$Date <- as.Date(data1$Date)

ts_plot(data1)
ggplot(data = data1,
       aes(x = ActivityStartDate, y = ResultMeasureValue,color=ResultStatusIdentifier)) +
  geom_point()+
  scale_x_discrete(guide = guide_axis(check.overlap = TRUE))
ggplot() +
  geom_line(data=data2, aes(x=ActivityStartDate, y=ResultMeasureValue
), color='green')+
   geom_line(data=data3, aes(x=ActivityStartDate, y=ResultMeasureValue
), color='red')+
    scale_x_discrete(guide = guide_axis(check.overlap = TRUE))
  ggsave("E:/New folder/hammad/new-freelancing-fiverr/orders/Rstudio Package/wqp_raw/wqp_raw/ggpltot.png")
