# Read the train.csv file
data <- read.csv("train.csv")

# Check the structure of the data
str(data)

# Check the first few rows of the data
head(data)

# Create two-way cross tabulations for specified pairs
cross_table1 <- table(data$Pclass, data$Survived)
cross_table2 <- table(data$SibSp, data$Parch)



# Print the cross tabulations
print(cross_table1)
print(cross_table2)


# Visualize the relationship for Pclass vs Survived
barplot(cross_table1, main = "Pclass vs Survived",
        xlab = "Pclass", ylab = "Frequency",
        col = c("blue", "red"),
        legend.text = TRUE)

# Visualize the relationship for SibSp vs Parch
barplot(cross_table2, main = "SibSp vs Parch",
        xlab = "SibSp", ylab = "Parch",
        col = c("blue", "yellow"))


