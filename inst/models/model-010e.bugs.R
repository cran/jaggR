# model file model-010e.bug fits an intercept and gradient model then finds the
# corresponding callibrated value for an unknown value of y corresponding R file
# model-010.r DO NOT DO IT THIS WAY!


model{
  
  for (i in 1:n) {
    y[i] ~ dnorm(mu[i], tau)
    mu[i] <- b1 * x[i] + b0
  }
  
  
  unknown.x ~ dnorm(mu1, tau1)
  mu1 <- (unknown.y - b0)/b1
  
  tau ~ dgamma(0.05, 0.05)
  b0 ~ dnorm(0, 1e-05)
  b1 ~ dnorm(0, 1e-05)
  
  tau1 ~ dgamma(0.05, 0.05)
}
