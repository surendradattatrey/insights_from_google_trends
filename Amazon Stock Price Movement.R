getwd()
install.packages('e1071')
library('e1071')
AMZdf <- read.csv('table.csv', stringsAsFactors = FALSE)
head(AMZdf)
str(AMZdf)
colnames(AMZdf) <- c("TrendingWeek","popularityscore","Open","High","Low","Close","Volume","Adj.Close")

# Univariate analyses for PopularityScore from Google trends
mean(AMZdf$popularityscore)

median(AMZdf$popularityscore) 

hist(AMZdf$popularityscore)
boxplot(AMZdf$popularityscore)

# Univariate analyses for Adjusted Close Price on last day of a week
mean(AMZdf$Adj.Close)

median(AMZdf$Adj.Close)

hist(AMZdf$Adj.Close)
boxplot(AMZdf$Adj.Close)

# Univariate analyses for Volume on last day of a week
mean(AMZdf$Volume)

median(AMZdf$Volume)

hist(AMZdf$Volume)
boxplot(ATdf$Volume)

#Bivariate analyses between Adj. Closing price / Popularity Score
plot( Adj.Close ~ popularityscore , data=AMZdf)

#Bivariate analyses between Volume / Popularity Score
plot(Volume ~ popularityscore , data=AMZdf)

#Correlation matices between Adj. Closing price / Popularity Score
cor(AMZdf$Adj.Close , AMZdf$popularityscore)

#Correlation matices between Volume / Popularity Score
cor(AMZdf$popularityscore,AMZdf$Volume)

