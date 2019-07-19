# model file model-012e.bug fits an intercept and gradient model with an
# additional squared terms make the model a quintic fit corresponding R file
# model-012.r


data{
  n <- length(weight)
  day2 <- day^2
  day3 <- day^3
  day4 <- day^4
  day5 <- day^5
}


model{
  
  for (i in 1:n) {
    weight[i] ~ dnorm(mu[i], tau)
    mu[i] <- b0 + b1 * day[i] + b2 * day2[i] + b3 * day3[i] + b4 * day4[i] + 
      b5 * day5[i]
  }
  
  tau ~ dgamma(0.05, 0.05)
  b0 ~ dnorm(0, 1e-05)
  b1 ~ dnorm(0, 1e-05)
  b2 ~ dnorm(0, 1e-05)
  b3 ~ dnorm(0, 1e-05)
  b4 ~ dnorm(0, 1e-05)
  b5 ~ dnorm(0, 1e-05)
  
}

