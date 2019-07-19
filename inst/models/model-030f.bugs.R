# model-030f.bug - model delta 13C observations and temperature corresponding R
# file model-030.r has two different gradients, one for each site - and two
# different gradients again one for each site - in a sense this is model in which
# both sites are completely different
data{
  n <- length(carbon)
  n.sites <- max(site)
}


model{
  
  for (i in 1:n) {
    # each value of iso is dependent upon its corresponding value of temperature and
    # a site specific gradient term
    carbon[i] ~ dnorm(mu[i], tau)
    mu[i] <- (b0 + b1[site[i]]) + ((b2 + b3[site[i]]) * temp[i])
  }
  
  # updating of the site specific gradient and intercept
  for (j in 2:n.sites) {
    b3[j] ~ dnorm(0, 1e-04)
    b1[j] ~ dnorm(0, 1e-04)
  }
  
  # corner constraint for Babingley
  b3[1] <- 0  # corner constraint on gradient
  b1[1] <- 0  # corner constraint on intercept
  
  tau ~ dgamma(0.001, 0.001)
  b0 ~ dnorm(0, 1e-04)
  b2 ~ dnorm(0, 1e-04)
}


