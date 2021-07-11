library(ggplot2)
library(plotly)

datatable <- read.csv("covid_19_indonesia_time_series_all.csv", sep = ",")
#Menambahkan data dan aesthetic mapping
plot <- ggplot(data=datatable, aes(x=Total.Cases,  fill=Location, group=Location))

#Menambahkan layer
plot <- plot + geom_histogram(binwidth=5000)
plot <- plot + labs(x="Total Cases", color="Lokasi")
plot + facet_wrap(~Location, ncol=2)

ggplotly(plot)