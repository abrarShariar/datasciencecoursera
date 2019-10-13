corr <- function (directory, threshold = 0) {
  result = c()
  all_files = list.files(directory)
  for (file in all_files) {
    file_data <- read.csv(paste(directory,"/",file, sep=""), header = TRUE)
    complete_count <- length(which(complete.cases(file_data)))
    if (complete_count > threshold) {
      result <- c(result, cor(file_data$sulfate, file_data$nitrate, use="complete.obs"))
    }
  }
  result
}

cr <- corr("specdata", 2000)                
n <- length(cr)                
cr <- corr("specdata", 1000)                
cr <- sort(cr)
print(c(n, round(cr, 4)))
