gdp_data <- read.csv("gdp.csv", skip=4, header=TRUE)
colnames(gdp_data) <- c("country_code", "rank", "X", "economy", "amount")
#filter column only on gdp_data
gdp_data <- gdp_data[,c(1,2,4,5)]
edu_data <- read.csv("edu.csv")

merge_data[,c("rank", "economy", "CountryCode")]
sm <- merge_data[,c("rank", "economy", "CountryCode")]
sm$rank <- as.numeric(as.character(sm$rank))
arrange(sm, desc(rank))

mean(sm[sm$Income.Group == "High income: OECD",]$rank.x)
sm <- merge(sm, merge_data, by.x="CountryCode", by.y="CountryCode")[, 1:5]


sm <- sm[,c("CountryCode","rank.x","Income.Group")]
sm <- mutate(sm, quantile=ntile(sm$rank.x,5))

