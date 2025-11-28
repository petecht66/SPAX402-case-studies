# reading in the data, creating data frame, describing data
NFLConversionData <- read.csv("https://raw.githubusercontent.com/petecht66/SPAX402-case-studies/refs/heads/main/case-study-5/Entropy%20in%20the%20NFL%20Revisited%20Data.csv")
summary(NFLConversionData)
head(NFLConversionData)

# creating simple linear regression (SLR) between first down success rate and the standardized entropy
# for each team regarding run/pass variability on 3rd or 4th and 2
firstDownRateSLR <- lm(First.Down.Rate ~ Standardized.Entropy, data = NFLConversionData)
summary(firstDownRateSLR)