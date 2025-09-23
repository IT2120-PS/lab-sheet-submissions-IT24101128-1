setwd("C:\\Users\\GAMING\\OneDrive\\Desktop\\IT24101128\\Lab 08")

##Question 1

data<-read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)


popmean <- mean(Weight.kg.)
popsd   <- sd(Weight.kg.)

popmean
popsd

##Question 2

samples <- matrix(nrow = 6, ncol = 25)  

for(i in 1:25){
  samples[, i] <- sample(Weight.kg., 6, replace = TRUE)
}

colnames(samples) <- paste0("S", 1:25)

s_means <- apply(samples, 2, mean)
s_sds   <- apply(samples, 2, sd)

s_means
s_sds


##Question 3

sample_mean <- mean(s_means)

sample_sd <- sd(s_means)

sample_mean
sample_sd

theoretical_sd <- popsd / sqrt(6)
theoretical_sd