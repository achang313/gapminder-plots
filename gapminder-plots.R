# Day 2 working with git

download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder-FiveYearData.csv",
              "data/gapminder-FiveYears.csv")
gapminder <- read.csv("data/gapminder-FiveYears.csv")

library(ggplot2)
library(plotly)

ggplot(gapminder, aes(x = gdpPercap, y = lifeExp)) + 
  geom_point()

p <- ggplot(gapminder, aes(x = gdpPercap, y = lifeExp)) + 
  geom_point()
ggplotly(p)