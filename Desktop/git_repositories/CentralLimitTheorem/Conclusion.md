# Conclusion
Mariana Llamas-Cendon  
10/21/2016  

### Central Limit Theorem

##### This project consists in proving the Central Limit Theorem using the boostrap method by creating two random normal distributions and two exponential distributions, and comparing each of the results. 



```r
setwd("/Users/marianallamas-cendon/Desktop/git_repositories/CentralLimitTheorem")
```

#### First random normal distribution sample containing 50 observations, mean of 22 and standard deviation of 5.
###### To boostrap, the number of replications was set to 1000.


```r
source("Data/Rnorm.R")
```

![](Conclusion_files/figure-html/unnamed-chunk-2-1.png)<!-- -->


###### On the histogram, we can observe a normal distribution. Also, the means of the random normal distibution sample (red), and that of the bootstrap sample mean (dotted blue line) converge almost exactly, which supports the assumption that they both come from normally distributed populations. The mean of 22 (dotted cyan line), denotes that the mean of 22 that was set is located relatively further, at distance of aproximately 0.04 from the bootstrap sample mean. 

###### Also, the standard deviation of the bootstrap sample and the MSE of the original random normal distribution sample are quite close in values. 

#### Second random normal distribution sample containing 100 observations, mean of 22 and standard deviation of 5.
###### To boostrap, the number of replications was set to 1000.


```r
source("Data/Rnorm2.R")
```

![](Conclusion_files/figure-html/unnamed-chunk-3-1.png)<!-- -->

###### From the histogram, we can also observe a normal distribution. In this case,  the means of the random normal distibution sample (red), and that of the bootstrap sample mean (dotted blue line) converge, again supporting the assumption that they both come from normally distributed populations. The mean of 22 (dotted cyan line), denotes that the mean of 22 that was set is located at close distance of about 0.5. 

###### The standard deviation of the bootstrap sample and the MSE of the random normal distributed sample show a minimal difference. 

#### Third random normal distribution sample containing 100 observations, mean of 22 and standard deviation of 5.
###### To boostrap, the number of replications was set to 10000.


```r
source("Data/Rnorm3.R")
```

![](Conclusion_files/figure-html/unnamed-chunk-4-1.png)<!-- -->

#### Exponential distributions 

##### Exponential distribution sample 1
##### 50 observations and a rate of 5. 

```r
source("Data/Rexponential.R")
```

![](Conclusion_files/figure-html/unnamed-chunk-5-1.png)<!-- -->

###### The histogram display a relatively normal distribution, slighty skewed to the right. Although the mean for the exponential sample (red) and that of the bootstrap (dotted blue line) converge completely. 

##### Exponential distribution sample 2
##### 50 observations and a rate of 10.

```r
source("Data/Rexponential2.R")
```

![](Conclusion_files/figure-html/unnamed-chunk-6-1.png)<!-- -->

###### Both histograms (of exponential sample 1 and 2) display a relatively normal distribution, slighty skewed to the right. Although the mean for the exponential sample (red) and that of the bootstrap (dotted blue line) converge completely. 

##### Also the standard deviation of the bootstrap samples and the MSE of the original exponential samples are almost equal. 

#### Conclusion: A large sample of replicating random values will result in a normal or near normal distribution, which is what the Central Limit Theorem states.
