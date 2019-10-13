library("dplyr")
data <- read.csv("dataset/outcome-of-care-measures.csv", colClasses = "character")

rankall <- function (outcome, num = "best") {
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
  compressed_data <- compressed_data[!is.na(as.numeric(compressed_data[,3])),]
  colnames(compressed_data) <- c("hospital", "state", "rate")
  # sorted by group 
  result <- compressed_data[order(compressed_data$state, compressed_data$rate, compressed_data$hospital),]
  if (num == "best") {
    num <- 1
  } else if (num == "worst") {
    num = nrow(result)
  }
  
  if (num > nrow(result)) {
    stop("NA")
  }
  # group by and chill!  
  result_asc_rank <- group_by(result, result$state) %>% mutate(rank=rank(rate)) %>% arrange(rank)
  temp <- group_by(result_asc_rank,state) %>% filter(rank == num)
  print(temp)
}