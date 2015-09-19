library(shiny)
library(lubridate)
library(xtable)

# Define server logic required to output table



shinyServer(function(input, output) {
  
  # Reactive Calls
  
  pminutes <- reactive({
    input$pminutes
  })
  
  pseconds <- reactive({
    input$pseconds
  })
  
  totalsec <- (5 * 60)+(31) # Calculate total seconds
  #totalsec <- (pminutes * 60)+(pseconds) # Calculate total seconds
  
  # Calculate time for distance
  fivek<-(totalsec * 3.1069)
  fivem<-(totalsec * 5)
  tenk<-(totalsec * 6.2138)
  tenm<-(totalsec * 10)
  halfmara<-(totalsec * 13.10938)
  mara<-(totalsec * 26.21875)
  
  # Covert to human readable time
  fivekr<-as.character(round(seconds_to_period(fivek)))
  fivemr<-as.character(round(seconds_to_period(fivem)))
  tenkr<-as.character(round(seconds_to_period(tenk)))
  tenmr<-as.character(round(seconds_to_period(tenm)))
  halfmarar<-as.character(round(seconds_to_period(halfmara)))
  marar<-as.character(round(seconds_to_period(mara)))
  
  # Add to Dataframe
  chart<-data.frame(fivekr, fivemr, tenkr, tenmr, halfmarar, marar)
  # Add Colnames
  colnames(chart) <- c("5 K", "5 Miles", "10 K", "10 Miles", "Half Marathon", "Marathon")
  
  output$mytable1 <- renderDataTable({
    chart
    
  })
  
  
  
#   
#   # Expression that generates a histogram. The expression is
#   # wrapped in a call to renderPlot to indicate that:
#   #
#   #  1) It is "reactive" and therefore should re-execute automatically
#   #     when inputs change
#   #  2) Its output type is a plot
#   
#   output$distPlot <- renderPlot({
#     x    <- faithful[, 2]  # Old Faithful Geyser data
#     bins <- seq(min(x), max(x), length.out = input$bins + 1)
#     
#     # draw the histogram with the specified number of bins
#     hist(x, breaks = bins, col = 'darkgray', border = 'white')
#   })
})
