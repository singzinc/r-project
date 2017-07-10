# learning outcome
# 1. load the csv and play with it (read.table, read.csv)
# 2. reading large data
# 3. subset 
# 4. fill the missing date
# 5. removing missing values
# 6. loop : apply(),lapply(),sapply(),tapply()
# 7. function 
# 8. symbol binding
# 9. Dates and times
# 10. Summary function 




# load the defualt dataset
# Once you start your R program, there are example data sets available within R along with loaded packages
# http://www.ats.ucla.edu/stat/r/faq/data_sets_avaiable_R.htm

# call and list the dataset
library(MASS)
data()

# let say call the phone data set 
data(phones)
phones







df1<- read.csv("TrainingData_latest.csv", nrows=1)
df1

## tell R, the first row of the data is header ,
## to read the csv file and store it as data frame df
df<-read.table("TrainingData_latest.csv", header=T,sep =";" ,stringsAsFactors=F)

#the number of the rows and columns in df
nrow(df)
ncol(df)

# To store the column names of data frame df as separate vector
colnames_df<-colnames(df)
# To check if there exisits missing vlues in the data frame
sum(is.na(df))

# sum(is.na(df))


colnames_df

str(df)

##### update the column type from int to Factor
df$NumComplains<- as.factor(df$NumComplains)

str(df)

################ get the title ######################
head(df)

library(lubridate)

## for check the library
##library()

df$hour_id<-mdy_hm(df$hour_id)




str(df)


col(df)

df



### get one of the column and 


# RACH_Setup_Completion_Success_Rate_AVG to be aother vector called test
test_avg <- df$RACH_Setup_Completion_Success_Rate_AVG

test_avg

summary(test_avg)

test_assign_df <- summary(test_avg)
test_assign_df 
str(test_assign_df)




#library(xlsx)

#write.xlsx(test_assign_df, "export", sheetName="test" , col.names=TRUE, row.names=TRUE, append=FALSE, showNA=TRUE)

##### export the excel 

test_assign_df1 <- as.matrix(test_assign_df)
write.xlsx(test_assign_df1, "export1.xlsx")


test_assign_df1 <- head(test_assign_df)
write.xlsx(test_assign_df1, "export2.xlsx")

##########  na value in the df
is.na(test_avg)
########## check how many number of the na value in the df
sum(is.na(test_avg))


which(is.na(test_avg))



length(unique(df$LCID))



#### get
df[1561,]

df[which(is.na(test_avg)),]

missVarDf <- df[which(is.na(test_avg)),]
missVarDf



df[which(is.na(test_avg))]




df[which(is.na(test_avg)),2]

df[which(is.na(test_avg)),3]



df[which(is.na(test_avg)),1:10]
df[which(is.na(test_avg)),c(1:10)]
df[which(is.na(test_avg)),-c(1:10)]


################## get the column ######################
KPI_list<-c("RACH_Setup_Completion_Success_Rate_AVG" , "Average_CQI_AVG" , "HO_Success_Ratio_intra_eNB_AVG")
colnames(df) %in% KPI_list
df[which(is.na(test_avg)),colnames(df) %in% KPI_list]

df[which(is.na(test_avg)),KPI_list]






################ delete some column  #####################
df[which(is.na(test_avg)),!colnames(df) %in% KPI_list]

head(df)


tempData <- subset(df,  ID> 10300)
tempData


############################# sub set #################################

tempData <- subset(df, ERAB_Drop_Ratio_with_UE_Lost_cause_initiated_by_eNB_AVG = 1)

tempData[4]


tempData <- subset(df, ID < 10  )
tempData


tempData <- subset(df, ID < 10 |  ID > 12000 )
tempData

tempData <- subset(df,   ID > 12000 | ID < 10 )
tempData

##########################################################  Data example ###############################

# basic
# date example 
ymd("20110604"); mdy("06-04-2011"); dmy("04-06-2011"); ymd("110604"); mdy("06-04-11"); dmy("4-6-11")




arrive <- ymd_hms("2011-06-04 12:00:00", tz = "Pacific/Auckland")
## "2011-06-04 12:00:00 NZST"
leave <- ymd_hms("2011-08-10 14:00:00", tz = "Pacific/Auckland")
## "2011-08-10 14:00:00 NZST"



second(arrive)
## 0
second(arrive) <- 25
arrive
## "2011-06-04 12:00:25 NZST"
second(arrive) <- 0
wday(arrive)
## 7
wday(arrive, label = TRUE)
## Sat


