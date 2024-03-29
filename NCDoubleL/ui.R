library(shiny)
library(ggplot2)
library(dplyr)
library(shinythemes)

ui <- fluidPage(theme = shinytheme('flatly'),
  titlePanel("Cancer in the US"),
  navbarPage("Statistics about cancer",
    tabPanel("Overview",
      sidebarLayout(
        sidebarPanel(
          class = "side",
          tags$div(
            h3("Research Questions"),
            tags$ol(
              tags$li("Does the number of people diagnosed with cancer
                      differ by age groups?",
                tags$br(),
                tags$p("")
              ),
              tags$li("What are the statistics of the specific type of cancer
                      in each state?",
              tags$br(),
              tags$p("")
              )
            ) 
          )
        ),
        mainPanel(
          class = "main",
          tags$div(
            h3("Introduction"),
            tags$b(tags$blockquote("Cancer is a collection of related
                   diseases that affects all age groups across all
                   populations. It can start from almost anywhere
                   in the body, the symptoms can be hardly noticeable
                   until it reaches a certain stage. Different cancer
                   has different survival rate, though there's no
                   cure for cancer yet, patients' condition can
                   be significantly improved if detected early enough.
                   Thus, it is vital for people to know what kind
                   of factors may trigger cancer in the long run
                   therefore are able to prevent them accordingly.
                   In this web page, we provided a couple of
                   information that are related to cancer statistics
                   in the United States for the user to gain
                   a better idea about the current situation of cancer,
                   including age, states, etc.."))
          ),
          tags$p(""),
          tags$div(
            h3("Insights"),
            tags$ul(
              tags$li(tags$b("In every 100,000 men and women, 439.2
                            cases of cancer are discovered, and 163.5
                            cases are fatal.")),
              tags$br(),
              tags$li(tags$b("It is estimated that 1,790 children and
                             adolescents whose age was between 0 - 19
                             died from cancer in 2017, and there were
                             15,270 cancer cases in total.")),
              tags$br(),
              tags$li(tags$b("Men indeed have higher cancer mortality
                             rate than women, whereas African American
                             Men's cancer mortality rate is the highest
                             among all and Asian/Pacific Islander Women's
                             rate is the lowest."))
            ),
              tags$br(),
              tags$i("All the above information are found from the
                     website of National Cancer Institute. For
                     more information, please go to:", 
                     uiOutput("tab"))
          )
        ) 
      )
   ),
    navbarMenu("Visualization Maps",
      tabPanel("Cancer Rate By Age",
        sidebarLayout(
          sidebarPanel(
            selectInput("age", "Age:",
                        choices = c("Under5", "5to14",
                                    "15to49", "50to69",
                                    "70More")),
            hr(),
            helpText("Choose the age group")
          ),
            mainPanel(
            plotOutput("plot1"),
            hr(),
            tags$div(tags$b(h4(Checked = NA, class = "Research Question and
                               Findings",
                tags$p("Research Question: Does the number of people diagnosed
                       with cancer differ by age groups?"))),
                tags$p(tags$blockquote("Findings: This barplot shows the
                            number of people with cancer in selected age
                            group during the given year period (from 1990
                            to 2017). It helps users to understand the
                            trend of cancer in the different age group.")),
                tags$p(tags$blockquote("With the default value, we can get the
                            barplot for people who are under five years old
                            have cancer from 1990 to 2017. The barplot
                            shows that the trend is steady for the given age
                            group (Under five years old. Even though it is
                            constant, but the number is still high. It is
                            shown that above 90,000 children under five years
                            old have cancers during the given year periods."))
              )
           )
        )
    ),
      tabPanel("Cancer By States",
        sidebarLayout(
          sidebarPanel(
            selectInput("cancerType", "Type:",
                        choices = c("ALL_CASES", "FEMALE_BREAST",
                                    "UTERINE_CERVIX", "COLON_and_RECTUM",
                                    "UTERINE_CORPUS", "LEUKEMIA",
                                    "LUNG_BRONCHUS", "MELANOMA_OF_THE_SKIN",
                                    "NON_HODGKIN_LYMPHOMA", "PROSTATE",
                                    "URINARY_BLADDER")),
            hr(),
            helpText("Choose a cancer type")
         ),
         mainPanel(
           plotOutput("plot4"),
           hr(),
           tags$div(tags$b(h4("Research Question: What are the statistics of the
                              specific type of cancer in each state?"))),
           tags$p(tags$blockquote("Findings: This US map with the numerical facts about the type of cancer in
                        every states give users information about what is the most prevalent type of
                        cancer in specific area.")),
           tags$p(tags$blockquote("By looking at the default value, it has been proven that
                        people are suffering from various cancers in various areas.
                        In fact, it is important for users to know which type of cancers
                        that they are being exposed and be aware so they can prevent themselves
                        from those prevalent cancers in their place."))
         )
      )
   )
),
     tabPanel("Conclusion",
       tags$div(
       h4("#1. Cancer Rate By Age"),
       tags$blockquote("By understanding the trend, the direct stakeholders
                       people who have cancer and indirect stakeholders
                       like people who do not have cancer but want to be
                       aware of the issue can better understand the cancer
                       situation in the United States. Thus, those direct
                       or indirect stakeholders can use appropriate strategies
                       to reduce the chances of getting cancers or worsening
                       cancers by not going to doctors. These findings provide 
                       alerts to indirect stakeholders, for instance, parents should
                       be aware that young children can also get
                       cancers and they should bring their children
                       to constant body checks. By doing so,
                       cancers or any abnormal symptoms can be
                       detected early as possible"),
       tags$blockquote("We found that the trend for the older age group is increasing.
                       The reason might be the development of cancer detecting technology
                       and the treatment for cancers. More people are detected with cancer
                       , so the number of cases will increase. People with cancer might die 
                       soon in the 90s. With the better treatments, people with cancer tend
                       to live longer with cancers")
      ),
      tags$div(
        h4("#2. Cancer Rate By State"),
        tags$blockquote("When users first look at the US map, they might think
                        that California has the highest cancer rate. However,
                        this visualized map only shows the total number of cancers
                        in each state. In deed, California has comparatively
                        highest number of people which cause them to have highest
                        number of cancer"),
        tags$blockquote("An interesting finding we discovered is that the number
                        of people who are suffering from Melanoma is higher than
                        the other cancers in the State of Washington. Turns out that
                        People in west Washington believes there's no need to wear
                        sunscreen under such a cloudy weather. However, the UV index
                        is indeed the highest during cloudy weather. Thus explained
                        the higher rate of having Melanoma in Washington.")
      )
   ), 
   tabPanel("About",
      tags$div(
        h4("- About Tech"),
        "This is the link to our technical report:",
         uiOutput("tab2")
      ),
      hr(),
      tags$div(
        h4("- About Us"),
        tags$p("As students in info 201, we hope to
               benefit people using what've learned.
               We chose this topic because more and more cancer cases
               are discovered each year, we wanted to help people
               realize that these diseases are actually closer than we
               think. And at the same time advocate for a healthier 
               lifestyle to keep these diseases away."),
        tags$p("Project Contributors: Sinmyung Han, Ziqing Wang, Victoria Jiang")
        )
     )
  )
)