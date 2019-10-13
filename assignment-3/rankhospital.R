data <- read.csv("dataset/outcome-of-care-measures.csv", colClasses = "character")
rankhospital <- function (state, outcome, num="best") {
  colIndex <- 0
  if (outcome == "heart attack") {
    colIndex <- 11 
  } else if (outcome == "heart failure") {
    colIndex <- 17
  } else if (outcome == "pneumonia") {
    colIndex <- 23
  } else {
    stop("invalid outcome")
  }
  
  compressed_data <- data[,c(2,7,colIndex)]
  compressed_data <- compressed_data[compressed_data$State == state,]
  if(!nrow(compressed_data)){
    stop("invalid state")
  }
  compressed_data <- compressed_data[!is.na(as.numeric(compressed_data[,3])),]
  # fix COL 3 char
  grouped_data <- tapply(as.numeric(compressed_data[,3]), compressed_data$Hospital.Name, sum)
  grouped_data <- data.frame(grouped_data)
  sorted_data <- data.frame(sort(grouped_data[,1], decreasing = FALSE))
  if (num == "best") {
    num <- 1
  } else if (num == "worst") {
    num = nrow(sorted_data)
  }
  
  if (num > nrow(sorted_data)) {
    stop("NA")
  }
  # contains the data at rank = num
  temp <- data.frame(sorted_data[num,])
  print(rownames(temp))
}

