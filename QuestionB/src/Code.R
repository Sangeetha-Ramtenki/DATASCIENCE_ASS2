
#To ensure work reproducibility
set.seed(7)
diabetes<- read.csv('~/Downloads/diabetes.csv')
sample_data <- diabetes[sample(nrow(diabetes), 25), ]
View(sample_data)

sample_BMI <- quantile(sample_data$BMI, probs = 0.98)
sample_BMI

diabetes_BMI <- quantile(diabetes$BMI, probs = 0.98)
diabetes_BMI

vec <- c(sample_BMI, diabetes_BMI)
names <- c("Sample", "Diabetes")

# Create barplot
bp <- barplot(vec, main = "98th Percentiles of BMI",xlab = "Data",ylab = "98th percentile of BMI", names.arg = names, col = c("purple","yellow"), ylim = c(0,60))

text(x = bp, y = vec, labels = vec, pos = 3, cex = 0.9, col = "black")

