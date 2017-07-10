# learing outcome 
# 1. use the ggplot2
# 2. rmarkdown
# 3. sqldf





install.packages("ggplot2")
library(ggplot2)


colnames(mpg)


# basic testing 
ggplot(mpg,aes(x=displ,y=hwy))+geom_point()

# 

ggplot(mpg,aes(x=displ,y=hwy,colour=class))+geom_point()
ggplot(mpg,aes(x=displ,y=hwy,shape=drv))+geom_point()
ggplot(mpg,aes(x=displ,y=hwy,size=cyl))+geom_point()

# confidence
ggplot(mpg,aes(x=displ,y=hwy))+geom_point()+geom_smooth()

#Turn off the confidence interval
ggplot(mpg,aes(x=displ,y=hwy))+geom_point()+geom_smooth(se=F)





ggplot(mpg,aes(displ,hwy))+geom_point()+facet_wrap(~class)

# use the other function 

ggplot(mpg,aes(x=displ,y=hwy))+geom_line()

ggplot(mpg,aes(x=displ))+geom_histogram()

ggplot(mpg,aes(x=displ,y=hwy))+geom_boxplot()

ggplot(mpg,aes(x=displ))+geom_histogram()

ggplot(mpg,aes(x=hwy))+geom_histogram()
ggplot(mpg,aes(x=hwy))+geom_histogram(binwidth = 1)
ggplot(mpg,aes(x=hwy))+geom_histogram(binwidth = 2.5)

ggplot(mpg,aes(x=hwy))+geom_histogram(binwidth = 5)



# https://en.wikipedia.org/wiki/Density_estimation
# need to study the Density
ggplot(mpg,aes(x=hwy))+geom_density()
ggplot(mpg,aes(x=hwy))+geom_freqpoly()






ggplot(mpg,aes(displ,hwy))+geom_boxplot()+facet_wrap(~class)


ggplot(mpg,aes(class,hwy))+geom_boxplot()



# more example in http://www.cookbook-r.com/Graphs/Plotting_distributions_(ggplot2)/


ggplot(mpg, aes(x=hwy)) + 
  geom_histogram(aes(y=..density..),      # Histogram with density instead of count on y-axis
                 binwidth=.5,
                 colour="black", fill="white") +
  geom_density(alpha=.2, fill="#FF6666")  # Overlay with transparent density plot




#######################################################################



install.packages("quantmod")
library(quantmod)



AAPL<-getSymbols("AAPL", src="yahoo" , from='2016-01-01', to='2016-12-21',auto.assign=F)

head(AAPL)

chartSeries(AAPL,subset='2016-02::2016-04',theme=chartTheme('white'),TA="addVo(); addBBands();addEMA()")




HSI<-getSymbols("^hsi", src="yahoo" , from='2016-01-01', to='2016-12-21',auto.assign=F)

head(HSI)

chartSeries(HSI,subset='2016-02::2016-04',theme=chartTheme('white'),TA="addVo(); addBBands();addEMA()")


my_indicator<-function(x){
  return(x+90)
}

newEMA<-newTA(my_indicator,Cl,legend.name="my Fancy Indicator",on=1,col=5)
newEMA(col=6)

# on = NA >>>>> insert the new diagram under the chart
newEMA(on=NA,col=6)



############################ study R amrkdown #####################


install.packages("rmarkdown")




############################ SQLDF ############################


install.packages("sqldf")

