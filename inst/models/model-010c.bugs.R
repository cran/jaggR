# model file model-010c.bug fits an intercept and gradient model corresponding R
# file model-010.r


data{
  n <- length(energy)
}


model{
  
  for (i in 1:n) {
    energy[i] ~ dnorm(mu[i], tau)
    mu[i] <- b0 + b1 * fat[i]
  }
  
  tau ~ dgamma(0.05, 0.05)
  b0 ~ dnorm(0, 1e-05)
  b1 ~ dnorm(0, 1e-05)
}

