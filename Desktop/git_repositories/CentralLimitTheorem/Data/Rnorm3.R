##########################################################
# Mariana Llamas-Cendon
# MSDS 6303 - 405
# Homework 4
# Third random normal distribution sample
# 19 Oct 2016
##########################################################


## As in Rnorm2.R , the random normal distribution sample that will be generated with 100 observations, a mean of 22 and a SD of 5

z <- rnorm(100, 22, 5)

### Again, we will find the mean of the random normal distribution sample generated in the previous step.

zbar <-mean(z)
zbar

## In this case the number of replications will be increased from 1000 to 10000 in order to see if a larger number of replications will return a closer mean value between the random normal distribution sample and the bootstrap sample.
### Initialize vector nsims to store the number of replications

nsims <- 10000

### Generate vector called bootran to coerce nsims into a numeric type (in case is not numeric)

bootran <- numeric(nsims)

### Use a for loop to bootstrap sample and obtain an estimate of the population mean

for (i in 1:nsims){
  bootsample <-sample(z, 100, replace=TRUE) # initialize vector bootsamps to get a sample for each of the 1000 repetitions, with replacement
  bootran[i] <- mean(bootsample)} # put the mean of that sample into vector bootmean, that will return 1000 sample means from the 1000 bootstrap samples

### Get a summary for the bootstrap sample
summary(bootran)

### Create histogram for vector bootran

hist(bootran)

### Identify the mean of the random normal distribution sample xbar on the histogram 

abline(v=zbar, col="red", lwd=2)

### Identify the mean of the bootstrap sample on the histogram

abline(v=mean(bootran), col="blue", lwd=3, lty=3)

### Compare to the mean of the normal distribution x

abline(v=22, col="cyan", lwd=2, lty=2)

### Calculate standard deviation of bootran

sd(bootran)

### Calculate Mean Square Error of original random normal distribution sample

msqerror <- sd(z)/sqrt(100)
msqerror





