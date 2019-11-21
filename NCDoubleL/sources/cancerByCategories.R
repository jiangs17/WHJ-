library(plotly)
library(shiny)
library(dplyr)


plot5 <- function(cancerData, cancerState) {
  p <- ggplot(cancerData, aes(x = "", y = ALL.CASES, fill = state) +
  geom_bar(width = 1, stat = "identity", color = "white") +
  coord_polar("y", start = 0) +
  geom_text(aes(y = cancerState, label = cancerState), color = "white") +
  theme_void())
  
  return(p)
}


