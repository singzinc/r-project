# this is first commit

# Learning outcome
# 1. introduc the data type
# 2. Data Object
# 3. missing value



# Logical   Example:	TRUE, FALSE	
# numeric   Example:  10.1 , 10, 100, 999.99
# Integer	  Example:  2L, 34L, 0L	
# Character	Example:  'a' , '"good", "TRUE", '23.4'	
# Complex   Example:  12+5i
# Raw	      Example:  "Hello" is stored as 48 65 6c 6c 6f

################# Logical Example ###############
v <- TRUE 
print(class(v))
v
class(v)

################# Numeric Example ###############
v <- 999.99
print(class(v))
v
class(v)


################# Integer Example ###############
v <- 2L
print(class(v))
v
class(v)

################# Complex Example ###############
v <- 3+5i
print(class(v))
v
class(v)


##############################################

## basic example 
#defualt the vector (number)
X<-c(1,2,3)
Y<-c(4,5,6)
Z<-X+Y

# print out the var
Z


long<-1:10
long

short<-c(1:5)
short

# short will repeat 
sumup <- long+short
sumup




# learning outcome
#Vectors
#Lists
#Matrices
#Arrays
#Factors
#Data Frames



#################### vector store charter
#create vector
myvars <- c("v1", "v2", "v3")
myvars

# check the name of the 
names (myvars)

# assign names to vector members
names(myvars) = c("data1", "data2" , "data3") 
myvars



## advance test case in vector

singTestRow1 = c("a","b","c", 1,2,3,1.2)
singTestRow1


singTestRow1 = c(TRUE , FALSE)
singTestRow1

singTestRow1 = c(T , F)
singTestRow1

singTestRow1 = c(T , F, 1,2,3)
singTestRow1

singTestRow1 = c(T , F, 1,2,3.2)
singTestRow1

str(singTestRow1)

singTestRow2 <- c("a","b","c")
singTestRow2

singTestRow2 <- c("1","2","3")
singTestRow2


##########******************************* todo *************


## convert the data type

singTestRow2 = as.numeric(singTestRow2)
singTestRow2

## is.numeric
## is.character
## is.logical
## as.numeric
## as.character
## as.logical



############################ List #########################

listx <- list(1,"a" , TRUE, 1+4i)
listx




############### Data Frames ###############
# assign the vector into the data frames
number = c(2, 3, 5) 
string = c("aa", "bb", "cc") 
boolean = c(TRUE, FALSE, TRUE) 

df = data.frame(number, string, boolean)  
df



############### List 






######## singTestCase3
v1 = 8:17
v1
names(v1) <- letters[1: length(v1)]
v1


######### subset
v1[2]
v1[c(2,3,6,8)]


length(v1)



v1[c(1,length((v1)))]
v1[-c(1,length((v1)))]


########## recycleing
v1[c(T,F)]
v1[c(T,F,F)]
v1[-c(T,F,F)] ########## this onw have problem


v1[!c(T,F,F)]




################ matrix ############$
# cbind and rbind


v1 <- 1:4
v2 <- 5:8
v3 <- 9:12
cbind(v1, v2, v3)

m1 <- cbind(v1, v2, v3)

colnames(m1) <- c("col1" , "col2", "col3")
rownames(m1) <- c("row1" , "row2", "row3" , "row4")
m1


# get row 1 to 2 and column 
m1[1:2,]
m1[c(1:2),]

#get all row and 1 to  3 column 
m1[,c(1:3)]

#get all rows and 1 to 2 column 
m1[,c(1:2)]

# get row 2 to 3 and all column 
m1[c(2:3),]

# get the value in 1,2,3 and 6,7,8
m1[c(1:3, 6:8)]

#get all the value without 1,2, and 4,5
m1[-c(1:2 , 4:5)]

#create the new matrix and make 4 row and 3 column 
m2=matrix(m1, nrow=4 , ncol=3)
m2

# create the new matrix and make 2 row and 3 column
m2 = matrix(1:6, nrow = 2 , ncol =3)
m2

# Create the new 
# create the new matrix and make 3 row and 3 column
### it will repeat it 
m2 = matrix(1:6, nrow = 3 , ncol =3)
m2

# Create the new 
# create the new matrix and make 3 row and 3 column
### it will trim it with warning message  
m2 = matrix(1:20, nrow = 3 , ncol =3)
m2


################################### play with data frame ###########

#cretae the data frame
df <- data.frame(col1= 1:3, col2=c("this","is" ,"test"), col3 = c(T,F,F), col4=c(2.5,4.2,pi))
df

# rename the column name 
colnames(df) <- c("col1x" , "col2x", "col3x", "col4x")
df

##########n R function get the number of row and number of col
nrow(df)
ncol(df)


# column 4 is factor (discuss later)
df <- data.frame(col1= 1:3, col2=c("this","is" ,"test"), col3 = c(T,F,F), col4=c(2.5,4.2,pi), strinsAsFactors=FALSE)
df


df <- data.frame(col1= 1:3, col2=c("this","is" ,"test"),col2b =c(col2), col3 = c(T,F,F), col4=c(2.5,4.2,pi), stringsAsFactors = FALSE)
df

str(df)


df$col2<-as.factor(df$col2)

?length

######## get the title only 
attributes (v1)

getV1Attributes <- attributes (v1)
getV1Attributes


####### remove the title
attributes (v1)<- NULL
v1





########## factor ################
# factor is a special type of vector , it can order or unorder

fac <- factor(c("yes", "yes" , "no" , "no" , "yes", "no" , "yes"))
fac

table (fac)

unclass(fac)

# set the level of the factor

fac <- factor(c("yes", "yes" , "no" , "no" , "yes", "no" , "yes") , levels = c("yes" , "no"))
fac



# ============================= missing value ===================================
# https://www.r-bloggers.com/difference-between-na-and-nan-in-r/
# difference between NA and NaN in R

# NaN (“Not a Number”) means 0/0
# NA (“Not Available”) is generally interpreted as a missing value and has various forms – NA_integer_, NA_real_, etc. 
# Therefore, NaN ≠ NA and there is a need for NaN and NA.

x <- c(1 , 2, NA , 10, 3)
is.na (x)
is.nan(x)


x <- c(1 , 2, NA , NaN, 3)
is.na (x)
is.nan(x)



# ==================================================================================

## other R 
#convert it to string
str(singTestRow2)

singTestRow2

# help function in R
help("packageName")



