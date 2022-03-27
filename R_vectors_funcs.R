# vectors
temps <- c(34, 45, 34, 53, 56)
temps1 <- c(34, NA, 34, 53, 56, NA)
bool <- c(T, F, T, F, T)
a <- which(temps == 50)
is.na(temps1)

which(is.na(temps1))


#pares_values <-  funtion (x) {

#  which (x/2) 
#}



10 / 2
10 %% 2
13 %% 2

















odd_nums <- function(vec) {
return(vec[which(vec %% 2 == 0)])
}
replace_nas <- function(vector) {
vector[which(is.na(vector))] <- mean(vector, na.rm=T)
return(vector)
}

odd_nums(c(1, 2, 3 ,4))

# Ilya is handsome and hot
# Darlaine is hotter tho <3