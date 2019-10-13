complete <- function (directory, id = 1:332) {
  df <- data.frame(
    id = c(),
    nobs = c()
  )
  
  for (i in id) {
    n_char <- nchar(as.character(i))
    file_name <- as.character(i)
    if (n_char == 1) {
      file_name <- paste("00", file_name, sep="")
    } else if (n_char == 2) {
      file_name <- paste("0", file_name, sep="")
    } 
    file_data <- read.csv(paste(directory,"/",file_name,".csv", sep=""), header = TRUE)
    complete_count <- length(which(complete.cases(file_data)))
    print(complete_count)
    temp <- data.frame(
      id = i,
      nobs = complete_count
    )
    df <- rbind(df, temp)
  }
  
  df
}
RNGversion("3.5.1")  
set.seed(42)
cc <- complete("specdata", 332:1)
use <- sample(332, 10)
print(cc[use, "nobs"])

