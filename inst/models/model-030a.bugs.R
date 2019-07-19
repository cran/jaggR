# model-030a.bug - model for means of delta 13C observations corresponding R file
# model-030.r
data{
  n <- length(carbon)
  n.sites <- max(site)
}



model{
  
  for (i in 1:n) {
    # each value of iso is normal with a mean
    carbon[i] ~ dnorm(b0, tau)
  }
  
  # dummy iterations to supress warnings about unused site variable
  for (j in 1:n.sites) {
    temp[j] ~ dnorm(0, 1e-04)
    site[j] ~ dunif(0, 1)
  }
  
  tau ~ dgamma(0.001, 0.001)
  b0 ~ dnorm(0, 1e-04)
}


