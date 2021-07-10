library(ggplot2)
inflasi.indo.sing <- read.csv("inflasi.csv", sep=",")
inflasi.indo.sing

#Menambahkan data dan aesthetic mapping
plot.inflasi <- ggplot(data=inflasi.indo.sing, aes(x = Bulan,  y=Inflasi,  color=Negara, group=Negara))

#Menambahkan Layer
plot.inflasi + geom_line()

#Menambahkan Layer dan labels
plot.inflasi + geom_line() + geom_text(aes(label=Inflasi),hjust=-0.2, vjust=-0.5)
