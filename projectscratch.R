library(lubridate)

p<-hms("0:5:0") #pace is five minutes

h<-0
m<-7
s<-15

totalsec<- (h*120)+(m*60)+(s)

fivek<-(totalsec * 3.1069)
tenk<-(totalsec * 6.2138)
tenm<-(totalsec * 10)
halfmara<-(totalsec * 13.1)
mara<-(totalsec * 26.2)

seconds_to_period(fivek)
seconds_to_period(tenk)
seconds_to_period(tenm)
seconds_to_period(halfmara)
seconds_to_period(mara)
