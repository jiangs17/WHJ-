library(shiny)

ui <- fluidPage(
  titlePanel("United States Cancer"),
  
    navbarPage("Cancer Information",
               tabPanel("Overview"),
               tabPanel("Research Question"),
               navbarMenu("Visualization Maps",
                          tabPanel("Visualization #1"),
                          tabPanel("Visualization #2")
                          ),
               tabPanel("Conclusion"),
               tabPanel("About Us")
               )
 
)

