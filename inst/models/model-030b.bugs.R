# model-030a.bug - model for means of delta 13C observations corresponding R file
# model-030.r a corner constrained bit for each site

data{
  n <- length(carbon)
  n.sites <- max(site)
}


model{
  
  for (i in 1:n) {
    # each value of iso is normal with a mean
    carbon[i] ~ dnorm(mu[i], tau)
    mu[i] <- b0 + b1[site[i]]
    
    # dummy iterations to supress warnings about unused variables
    temp[i] ~ dnorm(0, 1e-04)
    
  }
  
  for (j in 2:n.sites) {
    b1[j] ~ dnorm(0, 1e-04)
  }
  
  # corner constrained site Babingley reference
  b1[1] <- 0
  
  tau ~ dgamma(0.001, 0.001)
  b0 ~ dnorm(0, 1e-04)
}


