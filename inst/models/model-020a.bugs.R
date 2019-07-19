# model-020a.bugs.R - model for means of grouped observations - corner
# constrained parameterisation corresponding R file model-020.r
model{
  for (i in 1:n) {
    # each value of y is normal with a mean for some reference category then a bit
    # you add on for the other categories
    weight[i] ~ dnorm(mu[i], tau)
    mu[i] <- b0 + b1[breed[i]]
  }
  
  
  # the real trick to corner constrained parameters is to set the reference
  # category to zero
  b1[1] <- 0
  
  
  for (j in 2:n.breeds) {
    b1[j] ~ dnorm(1, 1e-04)
  }
  
  
  tau ~ dgamma(0.001, 0.001)
  b0 ~ dnorm(0, 1e-04)
}
