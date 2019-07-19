# model file model-010d.bug fits an intercept and gradient model then finds the
# corresponding callibrated values for multiple unknown values of y corresponding
# R file model-010.r

model{
  
  for (i in 1:n) {
    y[i] ~ dnorm(mu[i], tau)
    mu[i] <- x[i] * b1 + b0
  }
  
  
  tau ~ dgamma(0.05, 0.05)
  b0 ~ dnorm(0, 1e-05)
  b1 ~ dnorm(0, 1e-05)
  
  
  for (j in 1:m) {
    unknown.x[j] <- (unknown.y[j] - b0)/b1
  }
  
  
}



