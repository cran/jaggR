# model file model-102c.bug fits a callibration model for continuous on
# continuous corresponding R file model-102.r common gradients model

data{
  n <- length(rdt)
  n.sexes <- max(sex)
}


model{
  
  for (i in 1:n) {
    rdt[i] ~ dnorm(mu[i], tau)
    mu[i] <- (b0 + b2[sex[i]]) + b1 * age[i]
  }
  
  
  for (k in 2:n.sexes) {
    b2[k] ~ dnorm(0, 1e-04)
  }
  b2[1] <- 0  # corner constrain sex
  
  b0 ~ dnorm(0, 1e-04)
  b1 ~ dnorm(0, 1e-04)
  tau ~ dgamma(0.005, 0.005)
}



