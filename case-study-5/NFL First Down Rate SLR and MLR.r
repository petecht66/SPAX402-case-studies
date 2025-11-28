# reading in the data, creating data frame, describing data
NFLConversionData <- read.csv("https://raw.githubusercontent.com/petecht66/SPAX402-case-studies/refs/heads/main/case-study-5/Entropy%20in%20the%20NFL%20Revisited%20Data.csv")
summary(NFLConversionData)
head(NFLConversionData)

# creating simple linear regression (SLR) between first down success rate and the standardized entropy
# for each team regarding run/pass variability on 3rd or 4th and 2
firstDownRateSLR <- lm(First.Down.Rate ~ Standardized.Entropy, data = NFLConversionData)
summary(firstDownRateSLR)

# creating multiple linear regression (MLR) between first down success rate and standardized entropy while
# controlling for team pass grade, team pass block grade, team rush grade, team rush block grade, and 
# team receiving grade
firstDownRateMLR <- lm(First.Down.Rate ~ Standardized.Entropy + PASS.GRD + PBLK.GRD + 
    RUSH.GRD + RBLK.GRD + REC.GRD, data = NFLConversionData)
summary(firstDownRateMLR)
