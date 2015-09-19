library(shiny)
library(lubridate)
library(xtable)

# Define server logic required to output table



shinyServer(function(input, output) {
  
  # Reactive Calls
  
  chart <- reactive({
    pminutes<-input$pminutes
    pseconds<-input$pseconds

  
  #totalsec <- (5 * 60)+(31) # Calculate total seconds
  totalsec <- (pminutes * 60)+(pseconds) # Calculate total seconds
  
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

  data.frame(
    Name = c("5 K", "5 Miles", "10 K", "10 Miles", "Half Marathon", "Marathon"),
    Value = as.character(c(fivekr, 
                           fivemr,
                           tenkr,
                           tenmr,
                           halfmarar,
                           marar)), 
    stringsAsFactors=FALSE)
  }) 
  
  #})
  
  
  
  output$mytable1 <- renderDataTable({
    chart()
    
  })
  
})
