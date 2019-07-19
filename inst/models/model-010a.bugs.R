model{
  for (i in 1:n) {
    energy[i] ~ dnorm(b0, tau)
  }
  
  tau ~ dgamma(0.05, 0.05)
  b0 ~ dnorm(0, 1e-05)
}
