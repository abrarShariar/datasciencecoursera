pollutantmean <- function(directory, pollutant, id = 1:332) {
  combined_data <- 0
  for (i in id) {
    n_char <- nchar(as.character(i));
    file_name <- as.character(i)
    if (n_char == 1) {
      file_name <- paste("00", file_name, sep="")
    } else if (n_char == 2) {
      file_name <- paste("0", file_name, sep="")
    } 
    # filtering out column based on pollutant
    col_list <- c("NULL", "NULL", "NULL", "NULL")
    if (pollutant == "sulfate") {
      col_list[2] <- NA
    } else {
      col_list[3] <- NA 
    }
    # read the file_name - only pollutant column - filter NA
    file_data <- read.csv(paste(directory,"/",file_name,".csv", sep=""), header = TRUE, colClasses = col_list)
    complete_data_only <- file_data[complete.cases(file_data),]
    combined_data <- c(combined_data, complete_data_only)
  }
  mean(combined_data)
}

pollutantmean("specdata", "nitrate")