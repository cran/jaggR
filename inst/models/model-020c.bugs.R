# model-020b.bug - model for means of grouped observations - sum to zero
# parameterisation corresponding R file model-010.r


model{
  
  for (i in 1:n) {
    # each value of y is normal with a mean for some reference category then a bit
    # you add on for the other category
    weight[i] ~ dnorm(mu[i], tau.within)
    mu[i] <- alpha + nu[breed[i]]
  }
  
  for (j in 2:n.breeds) {
    nu[j] ~ dnorm(0, tau.between)
  }
  
  alpha ~ dnorm(0, 1e-06)
  
  # the trick to sum to zero paramertisation is to set one of the categories to
  # minus the sum of the other categories in this case this is equivalent of
  # setting to minus nu[2]
  nu[1] <- -sum(nu[2:2])
  
  # note here we sample a sd within and between then convert them to the precisions
  tau.within <- var.within^-1
  tau.between <- var.between^-1
  
  sd.within ~ dunif(0, 10)
  sd.between ~ dunif(0, 10)
  
  var.within <- sd.within^2
  var.between <- sd.between^2
}

