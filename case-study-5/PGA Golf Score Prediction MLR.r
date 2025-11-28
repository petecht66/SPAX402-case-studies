# reading in the data, creating data frame, describing data
PGAScores <- read.csv("https://raw.githubusercontent.com/petecht66/SPAX402-case-studies/refs/heads/main/case-study-5/Relative%20Importance%20of%20Predictors%20PGA%20Golf%20Data.csv")
summary(PGAScores)
head(PGAScores)

# creating multiple linear regression (MLR) between average score and the 4 predictor variables:
# average drive distance, greens in regulation percentage, average strokes gained putting, and 
# scrambling percentage
averageScoreMLR <- lm(Avg ~ D + G + P + S, data = PGAScores)
summary(averageScoreMLR)