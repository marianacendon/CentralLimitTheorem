##########################################################
# Mariana Llamas-Cendon
# MSDS 6303 - 405
# Homework 4
# Second exponential distribution
# 19 Oct 2016
##########################################################

# Create an exponential distribution of 50 observations and a rate of 10

## initialize vector y to contain the exponential distribution 

y <- rexp(50, 10)

### Find the mean of the exponential distribution sample 

ybar <-mean(y)
ybar

## The number of replications for bootstrapping will remain at 1000 

### Initialize vector nsims to store the number of replications

nsims <- 1000

### Generate vector called bootex to coerce nsims into a numeric type (in case is not numeric)

bootex <- numeric(nsims)

### Use a for loop to bootstrap sample and obtain an estimate of the population mean

for (i in 1:nsims){
  bootsample <-sample(y, 50, replace=TRUE) # initialize vector bootsamps to get a sample for each of the 1000 repetitions, with replacement
  bootex[i] <- mean(bootsample)} # put the mean of that sample into vector bootmean, that will return 1000 sample means from the 1000 bootstrap samples

### Get a summary for the bootstrap sample
summary(bootex)

### Create histogram for vector bootran

hist(bootex)

### Identify the mean of the random normal distribution sample xbar on the histogram 

abline(v=ybar, col="red", lwd=2)

### Identify the mean of the bootstrap sample on the histogram

abline(v=mean(bootex), col="blue", lwd=3, lty=3)

### Compare to the mean of the normal distribution x

abline(v=22, col="cyan", lwd=2, lty=2)

### Calculate standard deviation of bootex

sd(bootrex)

### Calculate Mean Square Error of original exponential distribution sample

msqerror <- sd(y)/sqrt(50)
msqerror

