
# name => Hospital.name
# outcome => {Hospital.30.Day.Death..Mortality..Rates.from.{outcome}}
outcome_map <- data.frame(
  "heart.attack" = 11,
  "heart.failure" = 17,
  "pneumonia" = 23
)

data <- read.csv("dataset/outcome-of-care-measures.csv", colClasses = "character")


best <- function (state, outcome) {
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
  # get the min of the grouped_data
  # but WTF is grouped_data$grouped_data?? SO? or Coursera fourm
  min_val <- grouped_data[which.min(grouped_data$grouped_data),]
  
  # group data sorted 
  grouped_data_order <- data.frame(grouped_data[order(grouped_data),])
  result <- rownames(data.frame(grouped_data_order[grouped_data_order[,1] == min_val,]))
  print(result)
}

# test cases
best("TX", "heart attack")
best("TX", "heart failure")
best("MD", "pneumonia")

# error
best("BB", "heart attack")
best("NY", "hert attack")
