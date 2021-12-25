library(ggplot2)
library(scales)
library(gtrendsR)
dataSet = gtrends(keyword = "Machine Learning")$interest_by_country
dataSet = dataSet[-c(3:5)]
dataSet = na.omit(dataSet)
head(dataSet,10)
tempDataSet= head(dataSet,10)
ggplot(tempDataSet, aes(x=reorder(location,-hits), y=hits)) +
  geom_bar(stat="identity", fill="blue")+ labs(x = "geoName", y = "Machine learning", color = "Legend Title\n")+
  theme(axis.text.x = element_text(angle = 90))

dataSet = gtrends(keyword = "Machine Learning")$interest_over_time
dataSet = dataSet[-c(3:7)]
head(dataSet,10)
tail(dataSet,1)
tempDataSet=dataSet
ggplot(tempDataSet, aes(x=date, y=hits)) +
  geom_line(stat="identity",  color="steelblue")+ 
  labs(title="Total Google Searches for Machine Learning",  x = "Year",   y = "Total Count",  color = "Legend Title\n")+
  theme_minimal()