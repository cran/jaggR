# model file model-012b.bug fits an intercept and gradient model with an
# additional squared term to make the model a quadratic fit corresponding R file
# model-012.r
model{
  for (i in 1:n) {
    weight[i] ~ dnorm(mu[i], tau)
    mu[i] <- b0 + b1 * day[i] + b2 * day2[i]
  }
  
  tau ~ dgamma(0.05, 0.05)
  b0 ~ dnorm(0, 1e-05)
  b1 ~ dnorm(0, 1e-05)
  b2 ~ dnorm(0, 1e-05)
}

