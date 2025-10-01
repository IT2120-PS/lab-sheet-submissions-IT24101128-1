setwd("C:\\Users\\GAMING\\OneDrive\\Desktop\\IT24101128\\Lab 09")

#Exercise

## Parameters
mean_time <- 45
sd_time <- 2
sample_size <- 25


## i. Generate random sample
set.seed(123)
sample_data <- rnorm(sample_size, mean = mean_time, sd = sd_time)
print(sample_data)


## ii. One-tailed t-test: H0: mean = 46, H1: mean < 46
t_test <- t.test(sample_data, mu = 46, alternative = "less")
print(t_test)
