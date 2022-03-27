# importing database
#install.packages("readr")
library(readr)
# First Steps

setwd('working-dir')
getwd()

#Creating a vector
heights <- c(1.50, 1.86, 1.74)
heights

ages <- c(20, 28, 24)
ages

#Creating a matrix
matrix <- data.frame(heights, ages)
matrix

# Changing the name of columns and rows
colnames(matrix) <- c("Height", "Age")
colnames(matrix)

rownames(matrix) <- c("João", "Renato", "Maria")
rownames(matrix)



HR_comma_sep_PT <- read_csv("HR_comma_sep_PT.csv")

data <- HR_comma_sep_PT

#Remove a line in Environment
rm(HR_comma_sep_PT)

# Initial Recognition Analysis
head(data)
  # Retorna o cabeçalho da base de dados

summary(data)
  #Retorna resumidamente as informações para entender os dados e verificar se exitem problemas logo de cara

# Initial adjustment on database
is.na(data$satisfacao)
  # "$" shows a specific column
which(is.na(data$satisfacao))

#Inserting Data
data$satisfacao [2] <- 0.86
summary(data)

colnames(data) == "comercial"
which(colnames(data) == "comercial")
colnames(data) [9] <- "area"
summary(data)


#Saving an object from database
save(data, file = "saved_dt.RData")

#Saving Script >> Click on floppy disk >> select FTU  - 8 or something like that
data
#1  What is the number of observations of the salary variable for each of its categories?
table(data$salario)
#2 In how many different areas are employees classified?
table(data$area)
length(unique(data$area))
#3 What is the average time employees stay in the company?
mean(data$tempo_cia)
#4 What is the name of the third variable of the dataset?
colnames(data)[3] #3rd column
unlist(t(data))[3] #3rd value in the first row
unlist(data)[3] #3rd value in the 1st column
#data #not sure what is the third variable
