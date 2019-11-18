library(shiny)

ui <- fluidPage(
  titlePanel("United States Cancer"),
  
    navbarPage("Cancer Information",
               tabPanel("Overview", uiOutput('page1')),
               tabPanel("Research Question", uiOutput('page2')),
               navbarMenu("Visualization Maps",
                          tabPanel("Visualization #1", uiOutput('page3')),
                          tabPanel("Visualization #2", uiOutput('page4'))
                          ),
               tabPanel("Conclusion", uiOutput('page5')),
               tabPanel("About Us", uiOutput('page6'))
               )
 
)

shinyUI(ui)