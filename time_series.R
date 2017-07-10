price_vector<-c(101.02,101.03,101.03,101.04,101.05,101.03,101.02,101.01,101.00,100.99)
dates<-c("03/12/2013 08:00:00.532123","03/12/2013 08:00:01.532123",
         "03/12/2013 08:00:02.532123","03/12/2013 08:00:03.532123",
         "03/12/2013 08:00:04.532123","03/12/2013 08:00:05.532123",
         "03/12/2013 08:00:06.532123","03/12/2013 08:00:07.532123",
         "03/12/2013 08:00:08.532123","03/12/2013 08:00:00.532123")
time_index<-strptime(dates,format="%d/%m/%Y %H:%M:%OS")
xts_price_vector<-xts(price_vector,time_index)
library(xts)
library(forecast)
?ma
?stl

plot(xts_price_vector,main="Ficitious price series",cex.main=0.8)

time_index1<-as.POSIXct(dates,format="%d/%m/%Y %H:%M:%OS")

my_time<-as.POSIXct("03/12/2013 08:00:03.004554",format="%d/%m/%Y %H:%M:%OS")
abline(v=my_time,lwd=2,lty=2)

#Exercise 2

plot(AirPassengers)                                               
lAirPassengers <- log(AirPassengers)
plot(lAirPassengers, ylab="log(AirPassengers)")
fit <- stl(lAirPassengers, s.window="period")           
plot(fit)
fit$time.series                                 
exp(fit$time.series)

str(fit)

library(quantmod)

ICBC1<-getSymbols("1398.HK",from='2006-01-01', to='2016-12-21',auto.assign=F)

ICBC_price<-ICBC1$"1398.HK.Close"

lICBC_price<-log(ICBC_price)

library(forecast)
fit<-ets(nhtemp,model="ANN")
fit
accuracy(fit)
forecast(fit,1)

plot(forecast(fit,1))

fit1<-ets(nhtemp)

fit1

accuracy(fit1)

plot(fit1)

fit3<-ets(log(AirPassengers),model="AAA")

plot(fit3)

?ets
?nhtemp
?ma


