# model file model-101b.bug calibration model for continuous on continuous using
# estimated age as stochastic corresponding R file model-101.r

data{
  n.sexes <- max(sex)
  n <- length(rdt)
}



model{
  
  for (i in 1:n) {
    rdt[i] ~ dnorm(mu[i], tau)
    mu[i] <- (b0 + b1 * age[i])
  }
  
  estimated.age ~ dnorm(mu.est, tau)
  mu.est <- (rdt.unknown - b0)/b1
  
  b0 ~ dnorm(0, 1e-04)
  b1 ~ dnorm(0, 1e-04)
  tau ~ dgamma(0.005, 0.005)
}


