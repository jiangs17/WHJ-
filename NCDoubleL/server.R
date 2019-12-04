library(shiny)
library(ggplot2)
library(dplyr)
library(plotly)
library(tidyr)

source("ui.R")
source("sources/barplotbyAge.R")
source("sources/cancerByState.R")
#source("sources/cancerByCategories.R")

cancerData <- read.csv("data/State.csv", header = TRUE, stringsAsFactors = FALSE)

original_data <- read.csv("data/CancerByAge.csv", stringsAsFactors = FALSE)
colnames(original_data) = c("X", "Entity", "Code", "Year", "Under5", "50to69",
                            "15to49", "5to14", "70More")
data <- gather(original_data, "Age_group", "Num_cancer", c(5:9))

server <- function(input, output) {
  output$plot1 <- renderPlot({
    return(plot(data, input$age))
  })
  
  output$plot4 <- renderPlot({
    return(plot3(cancerData, input$cancerType))
 })

  url <- a("National Cancer Institute", href = "https://www.cancer.gov")
  output$tab <- renderUI({
    tagList(url)
  })
  
  output$tab2 <- renderUI ({
    tagList(a("Technical Report",
              href = "https://github.com/jiangs17/WHJ-/wiki/P2_technical_report"))
  })
  
}


