setwd('working-dir')
#install.packages('corrplot')
#install.packages('tmvnsim')
#install.packages('mnormt')
#nstall.packages('psych')
library(readr)
library(psych)
library(corrplot)
Aval_Lider <- read.csv("~/working-dir/Aval_Lider.csv")
data <- Aval_Lider
rm(Aval_Lider)
data
View(data)
head(data)
colnames(data)[1] <- 'NAME'
data
hist(data$GERAL)
hist(data$GERAL, main = "General Evaluation", xlab='evaluations grade', ylab='amount of managers')
multi.hist(data[, -1])
data[-1 -2 -3 -4 ]

Mcor <- data[ , -1]
mcor <- cor(data[ ,-1])
Mcor

corrplot(mcor)

corrplot(Mcor, method = "square", type = "lower", tl.col = "black", tl.srt = 45, addCoef.col = "white", tl.cex = 0.7, number.cex = 0.7)

x <- runif(n = 5, min = 1, max = 10)
y <- runif(n = 5, min = 10, max = 15)
z <- runif(n = 5, min = 20, max = 25)

df <- data.frame(x, y, z)
row.names(df) <- paste('name', 1:5, sep='')
round(df, 2)
multi.hist(df)
