##########################################################
# Mariana Llamas-Cendon
# MSDS 6303 - 405
# Homework 4
# First random distribution sample
# 19 Oct 2016
##########################################################

# Generate a normal distribution random sample of 50 observations with a mean of 22 and a SD of 5

x <- rnorm(50, 22, 5)

### Find the mean of the sample previously generated.

xbar <-mean(x)
xbar

## To bootstrap, determine number of replications to 1000 
### Initialize vector nrepeats to store the number of replications

nrepeats <-1000

### generate vector called bootnorm to coerce nrepeats into a numeric type (in case is not numeric)

bootnorm <- numeric(nrepeats)

### Use a for loop to bootstrap sample and obtain an estimate of the population mean

for (i in 1:nrepeats){
   bootsamps <-sample(x, 50, replace=TRUE) # initialize vector bootsamps to get a sample for each of the 1000 repetitions, with replacement
   bootnorm[i] <- mean(bootsamps)} # put the mean of that sample into vector bootmean, that will return 1000 sample means from the 1000 bootstrap samples

### Get a summary for the bootstrap sample
summary(bootnorm)

### Create histogram for bootnorm

hist(bootnorm)

### Identify the mean of the random normal distribution sample xbar on the histogram 

abline(v=xbar, col="red", lwd=2)

### Identify the mean of the bootstrap sample on the histogram

abline(v=mean(bootnorm), col="blue", lwd=3, lty=3)

### Compare to the mean of the normal distribution x

abline(v=22, col="cyan", lwd=2, lty=2)

### Calculate standard deviation of bootnorm

sd(bootnorm)

### Calculate the Mean Square Error of the random normal distribution sample to see if it is close to the standard deviation of the boostrap sample.

msqerror <- sd(x)/sqrt(50)
msqerror

