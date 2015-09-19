library(shiny)
library(xtable)

# Define UI for application that calculates total times
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Calculate Total Race Times"),
  
  # Sidebar with a slider inputs for the pace
  sidebarLayout(
    sidebarPanel(
      sliderInput("pminutes",
                  "Pace Minutes:",
                  min = 1,
                  max = 20,
                  value = 8),
      sliderInput("pseconds",
                  "Pace Seconds:",
                  min = 0,
                  max = 59,
                  value = 30)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      dataTableOutput('mytable1')
    )
  )
))
