# model-090c.bug - model for energy use and activity with a random effect for the
# subject

data{
  n <- length(energy)
  n.activities <- max(activity)
  n.subjects <- max(subject)
}

model{
  
  for (i in 1:n) {
    energy[i] ~ dnorm(mu[i], tau)
    mu[i] <- b0 + b1[activity[i]] + b2[subject[i]]
    residual[i] <- mu[i] - energy[i]
  }
  
  for (j in 1:(n.activities - 1)) {
    b1[j] ~ dnorm(0, tau.1)
  }
  
  b1[3] <- 0
  # use cycling as reference as all others will be greater thus coefficients +ve
  
  
  for (k in 1:(n.subjects - 1)) {
    b2[k] ~ dnorm(0, tau.1)
  }
  
  # sum to zero constraint for b2
  b2[n.subjects] <- -sum(b2[1:(n.subjects - 1)])
  
  b0 ~ dnorm(0, tau.1)
  tau ~ dgamma(0.002, 0.002)
  tau.1 ~ dgamma(0.002, 0.002)
  
}
