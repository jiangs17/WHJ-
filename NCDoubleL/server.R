# http://shiny.rstudio.com/

library(shiny)
library(ggplot2)
library(dplyr)
library(plotly)
library(tidyr)

source("ui.R")
source("sources/barplotbyAge.R")

server <- function(input, output) {
  output$plot2 <- renderPlot({
    return(plot(data, input$age))
  })
}