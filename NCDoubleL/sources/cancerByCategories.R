library(plotly)
library(shiny)
library(dplyr)
cancerData <- read.csv("~/Desktop/info201/group/WHJ-/NCDoubleL/data/State.csv", header = TRUE, stringsAsFactors = FALSE)

plot5 <- function(cancerData, cancerState) {
  p <- ggplot(cancerData, aes_(x = "", y = ALL.CASES, fill = state) +
  geom_bar(width = 1, stat = "identity", color = "white") +
  coord_polar("y", start = 0) +
  geom_text(aes(y = cancerState, label = cancerState), color = "white") +
  theme_void())
  
  return(p)
}

