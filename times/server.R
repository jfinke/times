library(shiny)
library(lubridate)

# Define server logic required to output table



shinyServer(function(input, output) {
  
  totalsec <- (input$pminutes*60)+(input$pseconds) #grab input
  
  # Calculate time for distance
  fivek<-(totalsec * 3.1069)
  fivem<-(totalsec * 5)
  tenk<-(totalsec * 6.2138)
  tenm<-(totalsec * 10)
  halfmara<-(totalsec * 13.10938)
  mara<-(totalsec * 26.21875)
  
  # Covert to human readable time
  fivek<-round(seconds_to_period(fivek))
  fivem<-round(seconds_to_period(fivem))
  tenk<-round(seconds_to_period(tenk))
  tenm<-round(seconds_to_period(tenm))
  halfmara<-round(seconds_to_period(halfmara))
  mara<-round(seconds_to_period(mara))
  
  output$mytable1 <- renderDataTable({
    
    
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
