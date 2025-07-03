# command to download dataset
source("http://thegrantlab.org/misc/cdc.R")
View(cdc)
#Q1 
tail(cdc$weight,20)
#Q2 scatterplot 
plot(cdc$height,cdc$weight, col = "blue", xlab = "Height", ylab = "Weight")
#Q3 + Q4 correlation 
cor(cdc$height, cdc$weight)
# next part 
hist(cdc$weight)
hist(cdc$height)
# creating height.m
height_m <- cdc$height * 0.0254
# Q5 creating weight.m 
weight_kg <- cdc$weight * .454
#Q6 calculating BMI 
bmi = (weight_kg)/(height_m^2)
plot(cdc$height, bmi, col = "purple", xlab = "height", ylab = "bmi")
#Q7 correlation 
cor(cdc$height, bmi)
#Q8
bmi >= 30
sum(bmi>=30)
#proportiond
sum(bmi >=30)/length(bmi)
#Q9
plot(cdc[1:100, "height"])
plot(cdc[1:100,]$height)
plot(cdc[1:100,5])
#10 
sum(bmi >= 30 & cdc$gender == "m")
table(sum(bmi >= 30 & cdc$gender == "m"))
#ALTERNATE TRY

# Subset to include only those with BMI ≥ 30
obese_data <- cdc[bmi >= 30, ]

# Use table() to count the number of males (assuming 'Male' is the label for males)
obese_gender_count <- table(obese_data$gender)

# Print the number of obese males
obese_gender_count["m"]
