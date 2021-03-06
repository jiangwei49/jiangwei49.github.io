---
title       : How to use the application
subtitle    : Assignment for Developing Data Products
author      : Wei Jiang
job         : Web Developer
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax]            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Contents

1. Raw data
2. The application
3. The algorithm

--- .class #id 

## Raw data

1. The raw data "galton" comes from UsingR package. It is a data frame with 928 observations on 2 variables: child's height and parent's height.


```r
library(UsingR)
data(galton)
```

2. Summary like below:


```r
summary(galton)
```

```
##      child           parent     
##  Min.   :61.70   Min.   :64.00  
##  1st Qu.:66.20   1st Qu.:67.50  
##  Median :68.20   Median :68.50  
##  Mean   :68.09   Mean   :68.31  
##  3rd Qu.:70.20   3rd Qu.:69.50  
##  Max.   :73.70   Max.   :73.00
```

---


## The application

1. The data can be looked as population
2. User can guess a mu value (sample mean), using the slider
3. The application will then calculate the MSE - mean squared error
4. Application link: https://jiangwei49.shinyapps.io/ass1/

---

## The algorithm

1. Here is the formula to calculate the MSE:

$$MSE=\frac{\sum_{i=1}^{n} (y_i-\overline{y_i})}{n}$$.

2. In R, it is:

mse <- mean( (galton$child - mu)^2 )
