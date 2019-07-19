# model-030c.bug - model delta 13C observations and temperature corresponding R
# file model-030.r
data{
  n <- length(carbon)
  n.sites <- max(site)
}


model{
  
  for (i in 1:n) {
    # each value of iso is dependent upon its corresponding value of temperature
    carbon[i] ~ dnorm(mu[i], tau)
    mu[i] <- b0 + (b2 * temp[i])
  }
  
  # dummy iterations to supress warnings about unused site variable
  for (j in 1:n.sites) {
    site[j] ~ dunif(0, 1)
  }
  
  tau ~ dgamma(0.001, 0.001)
  b0 ~ dnorm(0, 1e-04)
  b2 ~ dnorm(0, 1e-04)
}


