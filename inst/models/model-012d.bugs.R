# model file model-012d.bug fits an intercept and gradient model with an
# additional squared terms make the model a quartic fit corresponding R file
# model-012.r
model{
  for (i in 1:n) {
    weight[i] ~ dnorm(mu[i], tau)
    mu[i] <- b0 + b1 * day[i] + b2 * day2[i] + b3 * day3[i] + b4 * day4[i]
  }
  
  tau ~ dgamma(0.05, 0.05)
  b0 ~ dnorm(0, 1e-05)
  b1 ~ dnorm(0, 1e-05)
  b2 ~ dnorm(0, 1e-05)
  b3 ~ dnorm(0, 1e-05)
  b4 ~ dnorm(0, 1e-05)
}
