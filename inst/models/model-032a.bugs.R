# model-030a.bug - model for mortality and radiation exposure with bit to
# generate and extract the residuals corresponding R file model-030.r

data{
  n <- length(mortality)
}

model{
  for (i in 1:n) {
    mortality[i] ~ dnorm(mu[i], tau)
    mu[i] <- b0 + b1 * exposure[i]
    residual[i] <- mortality[i] - mu[i]
  }
  
  # dummy node to supress warning about county being unused
  county[1] ~ dnorm(0, 1)
  
  tau ~ dgamma(0.002, 0.002)
  b0 ~ dnorm(0, 1e-04)
  b1 ~ dnorm(0, 1e-04)
}
