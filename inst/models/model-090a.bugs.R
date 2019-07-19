model{
  for (i in 1:n) {
    energy[i] ~ dnorm(b0, tau)
  }
  
  b0 ~ dnorm(0, tau.1)
  tau ~ dgamma(0.002, 0.002)
  tau.1 ~ dgamma(0.002, 0.002)
}
