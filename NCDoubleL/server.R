# http://shiny.rstudio.com/

library(shiny)

server <- function(input, output) {
  output$page1 <- renderUI ({})
  
  output$page2 <- renderUI ({})
  
  output$page3 <- renderUI ({})
  
  output$page4 <- renderUI ({})
  
  output$page5 <- renderUI ({})
  
  output$page6 <- renderUI ({})
}

shinyServer(server)