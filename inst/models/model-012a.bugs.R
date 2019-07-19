# model file model-012a.bug fits an intercept and gradient model corresponding R
# file model-012.r

data{
  n <- length(weight)
}


model{
  
  for (i in 1:n) {
    weight[i] ~ dnorm(mu[i], tau)
    mu[i] <- b0 + b1 * day[i]
  }
  
  tau ~ dgamma(0.05, 0.05)
  b0 ~ dnorm(0, 1e-05)
  b1 ~ dnorm(0, 1e-05)
}

