##########################################################
# Mariana Llamas-Cendon
# MSDS 6303 - 405
# Homework 4
# First exponential distribution
# 19 Oct 2016
##########################################################

# Create an exponential distribution of 50 observations and a rate of 5

## initialize vector x to contain the exponential distribution 

x <- rexp(50, 5)

### Find the mean of the exponential distribution 

xbar <-mean(x)
xbar

## To boostrap, set number of replications 1000 
### Initialize vector nsims to store the number of replications

nsims <- 1000

### Generate vector called bootran to coerce nsims into a numeric type (in case is not numeric)

bootrex <- numeric(nsims)

### Use a for loop to bootstrap sample and obtain an estimate of the population mean of each of the replications

for (i in 1:nsims){
  bootsample <-sample(x, 50, replace=TRUE) # initialize vector bootsamps to get a sample for each of the 1000 repetitions, with replacement
  bootrex[i] <- mean(bootsample)} # put the mean of that sample into vector bootmean, that will return 1000 sample means from the 1000 bootstrap samples

### Get a summary for the bootstrap sample
summary(bootrex)

### Create histogram for vector bootrex

hist(bootrex)

### Identify the mean of the random normal distribution sample xbar on the histogram 

abline(v=xbar, col="red", lwd=2)

### Identify the mean of the bootstrap sample on the histogram

abline(v=mean(bootrex), col="blue", lwd=3, lty=3)


### Calculate standard deviation of bootrex

sd(bootrex)

### Calculate Mean Square Error of exponential distribution sample

msqerror <- sd(x)/sqrt(50)
msqerror




