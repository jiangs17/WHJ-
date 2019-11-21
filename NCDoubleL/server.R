# http://shiny.rstudio.com/

library(shiny)
library(ggplot2)
library(dplyr)
library(plotly)
library(tidyr)

source("ui.R")
source("sources/barplotbyAge.R")
# source("sources/cancerByState.R")
# source("sources/cancerByCategories.R")

# cancerData <- read.csv("~/Desktop/WHJ-/NCDoubleL/data/State.csv", header = TRUE, stringsAsFactors = FALSE)


server <- function(input, output) {
  output$plot1 <- renderPlot({
    return(plot(data, input$age))
  })
  
  # output$plot4 <- renderPlot({
  #   return(plot3(cancerData, input$cancerType))
  # })
  
  url <- a("National Cancer Institute", href = "https://www.cancer.gov")
  output$tab <- renderUI ({
    tagList(url)
  })
  
}