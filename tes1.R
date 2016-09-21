
x <- rbind(matrix(rnorm(100, sd = 0.3), ncol = 2),matrix(rnorm(100, mean = 1, sd = 0.3), ncol = 2))
results <- matrix(nrow=14, ncol=2, dimnames=list(2:15,c("clusters","sumsquares")))
 for(i in 2:15) {
  +     fit <- kmeans(x,i)
  +     results[i-1,1] <- i
  +     results[i-1,2] <- fit$totss
  + }
plot(results)






