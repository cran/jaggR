
model{
  for (i in 1:n) {
    x[i] ~ dnorm(mu, 0.1111)
  }
  
  mu ~ dnorm(0, 1e-04)
}
