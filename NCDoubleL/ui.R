library(shiny)

ui <- fluidPage(
  titlePanel("United States Cancer"),
  navbarPage("Cancer Information",
             # Overview = introduction + insights + research questions + conclusion 
             tabPanel("Overview",
                      sidebarLayout(
                        sidebarPanel(
                          class = "side",
                          tags$div(
                            h3("Research Questions"),
                            tags$ol(
                              tags$li("What is the overview of the cancer rate in United States?",
                                tags$br(),
                                tags$p("")
                              ),
                              tags$li("Does the cancer rate differ by State?",
                                tags$br(),
                                tags$p("")
                              )
                              
                            )
                          ),
                          tags$p(""),
                          tags$div(
                            h3("About Us")
                          )
                        ),
                        mainPanel(
                          class = "main",
                          tags$div(
                            h3("Introduction"),
                            tags$b(tags$blockquote("Cancer is a widespread disease that can
                                   possibly occur in people everywhere. Also,
                                   its symptoms are hardly notable until cancer
                                   grows big enough. Once it reaches the
                                   terminal cancer stage, the person may not
                                   survive. Also, the cancers are being caused
                                   by the different factors depends on the
                                   area. A big portion of people tend to be optimistic
                                   about their health until they feel significant
                                   changes or pain in their body. However, cancer
                                   is not a normal disease like a cold, it is
                                   very dangerous. Therefore, we want to give
                                   information to people about which factor is
                                   being a dangerous factor for them in the place
                                   where they live."))
                          ),
                          tags$p(""),
                          tags$div(
                            h3("Insights"),
                            tags$ul(
                              tags$li(tags$b("In every 100,000 men and women, 439.2
                                            cases of cancer are discovered, and 163.5
                                            cases are fatal.")),
                                tags$br(),
                              tags$li(tags$b("Men indeed have higher cancer mortality
                                             rate than women, whereas African American
                                             Men's cancer mortality rate is the highest
                                             among all and Asian/Pacific Islander Women's
                                             rate is the lowest."))
                            ),
                              tags$br(),
                            tags$i("All the above information are found from the website
                                   of National Cancer Institute. For more information,
                                   please go to:")
                          ),
                          tags$p(""),
                          tags$div(
                            h3("Conclusion")
                          )
                          
                        )
                      )
             ),      
             navbarMenu("Visualization Maps",
                        tabPanel("Visualization #1"),
                        tabPanel("Visualization #2"),
                        tabPanel("Visualization #3")
             )
     )
  
)