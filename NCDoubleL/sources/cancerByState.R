library(shiny)
library(dplyr)
library(ggplot2)
library(usmap)
library(leaflet)

plot3 <- function(cancerData, cancerType) {
  map <- plot_usmap(data = cancerData, values = cancerType, labels = TRUE, color = "black") +
  scale_fill_continuous(low = "white", high = "red", name = "Number of cases", label = scales::comma) + 
  labs(title = "Cancers by State in 2016",
       subtitle = "These are the number of people having cancers depends on the cancer type",
       fill = "Number of cancers") +
  theme(legend.position = "right")
  return(map)
}