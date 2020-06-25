fifa19Data <- read.csv("D:\\Projects\\Machine Learning Datasets\\Dataset1.csv\\data.csv", 
                        header = T, na.strings = "", stringsAsFactors = F)

library(dplyr)


View(fifa19Data)
head(fifa19Data$Release.Clause)
names(fifa19Data)
str(fifa19Data)
fifa19Data$Name <- as.factor(fifa19Data$Name)
levels(fifa19Data$Name)
model <- lm(fifa19Data$Overall~fifa19Data$Potential+fifa19Data$Release.Clause,data = fifa19Data)
summary(model)
View(model)
View(fifa19Data$Release.Clause)
fifa19Data$Release.Clause <- gsub('[â,¬]','',fifa19Data$Release.Clause)
View(fifa19Data$Release.Clause)
x <- fifa19Data$Release.Clause
x<- as.numeric(sub(c("M"), c("e6"), x, fixed = TRUE))
x
x<- as.numeric(sub(c("K"), c("e3"), x, fixed = TRUE))
View(x)
View(x)
x <- as.numeric(sub(c("M","K"), c("e6","e3"), x, fixed = TRUE))
tail(fifa19Data$Release.Clause)

sort(Fifa19Data$Release.Clause)


#Cleaning the data for wage as it is in thousands only.

fifa19Data$Wage <- gsub('[â,¬]','',fifa19Data$Wage)
View(fifa19Data$Wage)
wage<- fifa19Data$Wage
wage<- as.numeric(sub(c("K"), c("e3"), wage, fixed = TRUE))
View(wage)
fifa19Data
#wages are cleaned and in integers.

newdataFifa <- fifa19Data[,-c(5,7,11,16,19,20,21,24)]
View(newdataFifa)
#columns which are not required are removed, also there are 89 total column we have to remove alot.

#now we will be selecting 10,000 rows 

df
dnow <- newdataFifa(x=rnorm(10000), y=runif(100000))
head(dnow,4)

cor(Release.Clause,value,wage)

Hey<- fifa19Data[0:10000,]
nrow(Hey)
View(Hey)








