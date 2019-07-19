model{
  for (i in 1:n) {
    energy[i] ~ dnorm(mu[i], tau)
    mu[i] <- b0 + b1[activity[i]]
    residual[i] <- mu[i] - energy[i]
  }
  
  
  for (j in 1:(n.activities - 1)) {
    b1[j] ~ dnorm(0, tau.1)
  }
  
  b1[3] <- 0
  # use cycling as reference as all others will be greater thus coefficients +ve
  
  b0 ~ dnorm(0, tau.1)
  tau ~ dgamma(0.002, 0.002)
  tau.1 ~ dgamma(0.002, 0.002)
}
