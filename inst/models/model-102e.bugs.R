# model file model-102d.bug fits a callibration model for continuous on
# continuous corresponding R file model-102.r common intercepts model

data{
  n <- length(rdt)
  n.sexes <- max(sex)
}


model{
  
  for (i in 1:n) {
    rdt[i] ~ dnorm(mu[i], tau)
    mu[i] <- (b0 + b2[sex[i]]) + (b1 + b3[sex[i]]) * age[i]
  }
  
  
  for (k in 2:n.sexes) {
    b3[k] ~ dnorm(0, 1e-04)
    b2[k] ~ dnorm(0, 1e-04)
  }
  b2[1] <- 0  # corner constrain intercept for sex
  b3[1] <- 0  # corner constrain gradient for sex
  
  b0 ~ dnorm(0, 1e-04)
  b1 ~ dnorm(0, 1e-04)
  tau ~ dgamma(0.005, 0.005)
}


