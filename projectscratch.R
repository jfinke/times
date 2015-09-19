library(lubridate)

p<-hms("0:5:0") #pace is five minutes

h<-0
m<-7
s<-15

totalsec<- (h*120)+(m*60)+(s)

fivek<-(totalsec * 3.1069)
fivem<-(totalsec * 5)
tenk<-(totalsec * 6.2138)
tenm<-(totalsec * 10)
halfmara<-(totalsec * 13.10938)
mara<-(totalsec * 26.21875)

round(seconds_to_period(fivek))
round(seconds_to_period(fivem))
round(seconds_to_period(tenk))
round(seconds_to_period(tenm))
round(seconds_to_period(halfmara))
round(seconds_to_period(mara))


half<-seconds_to_period(halfmara)
round(half)


