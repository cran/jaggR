# model file model-012c.bug fits an intercept and gradient model with an
# additional squared and cubed terms make the model a cubic fit corresponding R
# file model-012.r
model{
  for (i in 1:n) {
    weight[i] ~ dnorm(mu[i], tau)
    mu[i] <- b0 + b1 * day[i] + b2 * day2[i] + b3 * day3[i]
  }
  
  tau ~ dgamma(0.001, 0.001)
  b0 ~ dnorm(0, 1e-05)
  b1 ~ dnorm(0, 1e-05)
  b2 ~ dnorm(0, 1e-05)
  b3 ~ dnorm(0, 1e-05)
}
