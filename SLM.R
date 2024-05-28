dataset = read_csv('/Users/thabangmolefi/Documents/Machine Learning A-Z (Codes and Datasets)/Part 2 - Regression/Section 4 - Simple Linear Regression/Python/Salary_Data.csv')
dataset = dataset[, 2:3]

#Splitting the dataset
library(caTools)
set.seed(123)
split = sample.split(dataset$Salary,SplitRatio = 2/3)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)


# Fitting SLM to the Training Set
regressor = lm(formula = Salary-YearsExperience,
               data = training_set)
