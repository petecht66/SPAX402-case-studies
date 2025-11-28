
# reading in the data, creating data frame, describing data
MLBwins <- read.csv("https://raw.githubusercontent.com/petecht66/SPAX402-case-studies/refs/heads/main/case-study-5/Calculated%20Fields%20MLB%20Win%20Predictions%20Data.csv")
summary(MLBwins)
head(MLBwins)

# creating simple linear regression between second half wins and first half wins
firstHalfSLR <- lm(W.2H ~ W.1H, data = MLBwins)
summary(firstHalfSLR)

# creating simple linear regression between second half wins and first half run differential
runDiffSLR <- lm(W.2H ~ Calculated.Field...1H, data = MLBwins)
summary(runDiffSLR)