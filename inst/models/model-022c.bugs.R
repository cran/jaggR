# model-022c.bug - model for means of grouped observations - corner constrained
# parameterisation and plane design as a covariate corresponding R file
# model-022.r


data{
  n <- length(distance)
  n.papers <- max(paper)
  n.angles <- max(angle)
  n.designs <- max(design)
}


model{
  
  for (i in 1:n) {
    distance[i] ~ dnorm(mu[i], tau)
    mu[i] <- b0 + b3[design[i]]
  }
  
  # dummy iterations
  for (j in 2:n.papers) {
    b1[j] <- paper[j]
  }
  
  # dummy iterations
  for (k in 2:n.angles) {
    b2[k] <- angle[k]
  }
  
  
  for (m in 2:n.designs) {
    b3[m] ~ dnorm(0, 1e-07)
  }
  b3[1] <- 0
  
  tau ~ dgamma(0.001, 0.001)
  b0 ~ dunif(0, 10000)
}


