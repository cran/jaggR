# model file model-010b.bug fits an intercept only model getting around the
# warning about having unused variable fat in the data corresponding R file
# model-010.r

data{
  n <- length(energy)
  n1 <- length(fat)  # gets around unused variable fat warning - n1 not used
}


model{
  
  for (i in 1:n) {
    energy[i] ~ dnorm(b0, tau)
  }
  
  tau ~ dgamma(0.05, 0.05)
  b0 ~ dnorm(0, 1e-04)
  
}

