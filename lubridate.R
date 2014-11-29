library(quantmod)
library(lubridate)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn) 
times2012 <- sampleTimes[year(sampleTimes)=="2012"]
print(length(times2012))
print(sum(wday(times2012, label=T)=="Mon"))