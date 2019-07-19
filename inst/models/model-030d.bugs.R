# model-030d.bug - model delta 13C observations and temperature corresponding R
# file model-030.r has two different intercepts, one for each site can be termed
# a 'common gradients' model
data{
  n <- length(carbon)
  n.sites <- max(site)
}


model{
  
  for (i in 1:n) {
    # each value of iso is dependent upon its corresponding value of temperature and
    # a site specific intercept term
    carbon[i] ~ dnorm(mu[i], tau)
    mu[i] <- (b0 + b1[site[i]]) + (b2 * temp[i])
  }
  
  # updating of the site specific intercept
  for (j in 2:n.sites) {
    b1[j] ~ dnorm(0, 1e-04)
  }
  
  # corner constraint for Babingley reference
  b1[1] <- 0
  
  tau ~ dgamma(0.001, 0.001)
  b0 ~ dnorm(0, 1e-04)
  b2 ~ dnorm(0, 1e-04)
}

