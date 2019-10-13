# read data from csv but get only specific pollutant cols using colClasses 
test_data <- read.csv("specdata/010.csv", header = TRUE)
complete_only <- mean(test_data[complete.cases(test_data),"sulfate"])
all_data <- read.csv("specdata/001.csv", header = TRUE)
complete_data_only <- file_data[complete.cases(file_data),]
colList <- c("NULL", NA, "NULL", "NULL")
directory <- "specdata"
file_name <- "001"
file_data <- read.csv(paste(directory,"/",file_name,".csv", sep=""), header = TRUE, colClasses = colList)
complete_data_only <- file_data[complete.cases(file_data),]

length(which(complete.cases(file_data)))

df <- data.frame(
  id = c(),
  nobs = c()
)

for (i in 1:100) {
  temp <- data.frame(
    id = i,
    nobs = i * 100
  )
  df <- rbind(df, temp)  
}
print(df)


all_files = list.files("specdata")
for (file in all_files) {
  print(file)
}

































