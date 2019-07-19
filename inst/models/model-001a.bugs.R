# model file model-001a.bug fits an intercept (mean) only model with known
# variance corresponding R file model-001.r

data{
  n <- length(length)
}


model{
  for (i in 1:n) {
    length[i] ~ dnorm(mu, 0.00023)
  }
  
  mu ~ dnorm(0, 1e-04)
}

