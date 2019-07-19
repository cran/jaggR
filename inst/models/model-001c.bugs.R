# model file model-001c.bug fits both variance and mean corresponding R file
# model-001.r

data{
  n <- length(length)
}

model{
  for (i in 1:n) {
    length[i] ~ dnorm(mu, tau)
  }
  
  mu ~ dnorm(0, 1e-04)
  sd ~ dunif(0, 1000)
  
  # note here how we sample from the sd and change it to the precision
  tau <- 1/pow(sd, 2)
}
