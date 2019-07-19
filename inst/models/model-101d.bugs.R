# model file model-101d.bug fits a calibration model for continuous on continuous
# and nominal sex for multiple unknowns corresponding R file model-101.r

data{
  n <- length(rdt)
  n.sexes <- max(sex)
  n.unknowns <- length(rdt.unknown)
}


model{
  
  for (i in 1:n) {
    rdt[i] ~ dnorm(mu[i], tau)
    mu[i] <- b0 + (b1 + b3[sex[i]]) * age[i]
  }
  
  
  for (j in 2:n.sexes) {
    b3[j] ~ dnorm(0, 1e-04)
  }
  
  b3[1] <- 0
  
  for (k in 1:n.unknowns) {
    estimated.ages[k] <- (rdt.unknown[k] - b0)/(b1 + b3[sex.unknown[k]])
  }
  
  b0 ~ dnorm(0, 1e-04)
  b1 ~ dnorm(0, 1e-04)
  tau ~ dgamma(0.005, 0.005)
}


