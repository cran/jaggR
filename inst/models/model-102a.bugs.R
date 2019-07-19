# model file model-102a.bug intercept only GLM for dics for model sequence
# corresponding R file model-102.r

data{
  n <- length(age)
  n.sexes <- max(sex)  # sex not used in this model
}


model{
  
  for (i in 1:n) {
    rdt[i] ~ dnorm(mu[i], tau)
    mu[i] <- b0
  }
  
  b0 ~ dnorm(0, 1e-04)
  tau ~ dgamma(0.005, 0.005)
}


