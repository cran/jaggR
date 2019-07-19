# model file model-001b.bug fits a variance for a known mean corresponding R file
# model-001.r
data{
  n <- length(length)
}

model{
  
  for (i in 1:n) {
    length[i] ~ dnorm(95, tau)
  }
  
  tau ~ dgamma(2.5, 2.5)
}


