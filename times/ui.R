library(shiny)
library(xtable)

# Define UI for application that calculates total times
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Calculate Total Race Times"),

    # Sidebar with a slider inputs for the pace
    sidebarLayout(
      sidebarPanel(  
  numericInput("pminutes", label = h4("Minutes"), value = 8),
  numericInput("pseconds", label = h4("Seconds"), value = 30)
  ),
  
    mainPanel(
      tableOutput('mytable1')
    )
  )
))
