# model file model-101c.bug calibration model for continuous on continuous with
# nominal sex for common intercepts model corresponding R file model-101.r

data{
  n <- length(rdt)
  n.sexes <- max(sex)
}


model{
  for (i in 1:n) {
    rdt[i] ~ dnorm(mu[i], tau)
    mu[i] <- b0 + (b1 + b3[sex[i]]) * age[i]
  }
  
  for (k in 2:n.sexes) {
    b3[k] ~ dnorm(0, 1e-04)
  }
  
  b3[1] <- 0  # corner constrain gradient
  # reference category female
  
  b0 ~ dnorm(0, 1e-04)
  b1 ~ dnorm(0, 1e-04)
  tau ~ dgamma(0.005, 0.005)
  
  estimated.age <- (rdt.unknown - b0)/(b1 + b3[sex.unknown])
}

