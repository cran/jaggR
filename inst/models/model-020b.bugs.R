# model-020a.bug - model for means of grouped observations - corner constraint
# parameterisation corresponding R file model-020.r


model{
  
  for (i in 1:n) {
    # each value of y is normal with a mean for some reference category then a bit
    # you add on for the other categories
    weight[i] ~ dnorm(mu[i], tau.within)
    mu[i] <- b0 + b1[breed[i]]
  }
  
  for (j in 2:n.breeds) {
    b1[j] ~ dnorm(0, tau.between)
  }
  
  b0 ~ dnorm(0, 1e-06)
  
  # the real trick to corner constraint paramertisation is to set the reference
  # category to zero
  b1[1] <- 0
  
  # note here we sample a sd within and between then convert them to the precisions
  tau.within <- sd.within^-0.5
  tau.between <- sd.between^-0.5
  
  sd.within ~ dunif(0, 10)
  sd.between ~ dunif(0, 10)
}

