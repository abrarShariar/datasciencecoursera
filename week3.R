

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv", destfile = "us-comm.csv", method="curl")
uscommdata <- read.csv("us-comm.csv")


install.packages("xlsx")
library("xlsx")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx", destfile="gas.xlsx", method="curl")
gasdata <- readxlsx("gas.xlsx")


install.packages("readxl")
library("readxl")
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FDATA.gov_NGAP.xlsx", destfile="gas.xlsx", method="curl")
gasdata <- read_excel("gas.xlsx")
head(gasdata)
gasdata<-complete.cases(gasdata)
dat <-gasdata[18:23,7:15]
sum(dat$Zip*dat$Ext,na.rm=T)


download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml", destfile="r.xml", method="curl")
install.packages("XML")

library("XML")
library("methods")
doc <- xmlTreeParse("r.xml", useInternalNodes = TRUE)
rootnode <- xmlRoot(doc)

zipcodes <- xpathSApply(rootnode,"//zipcode",xmlValue)
length(which(zipcodes == "21231"))

install.packages("data.table")
library(data.table)

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv", destfile = "s-data.csv", method="curl")
DT <- fread("s-data.csv")

sleep_for_a_minute <- function() { Sys.sleep(60) }
start_time <- Sys.time()

mean(DT[DT$SEX ==1,]$pwgtp)

end_time <- Sys.time()
end_time - start_time

1_ 53
2)

4) 127

5) Not tapply






print(data)

a <- xmlToDataFrame(getNodeSet(data, ""))





head(uscommdata$VAL)
table(uscommdata$VAL)

table(uscommdata$FES)

head(uscommdata[1:20, "FES"])

property_val <- which(uscommdata$VAL > 1000000 & !is.na(uscommdata$VAL))
print(property_val)

