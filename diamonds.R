library(ggplot2)
library(plotly)
diamonds <- read.csv("diamonds.csv")
# Membuat Grafik dengan Quick Plot
# qplot(x = carat, y = price, colour = clarity, data = diamonds)

# Membuat Grafik dengan ggplot
diamondsplot <- ggplot(data = diamonds,
       mapping = aes(x = carat, y = price, colour = clarity)) +
  geom_point()
