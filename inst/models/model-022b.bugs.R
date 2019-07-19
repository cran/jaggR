# model-022b.bug - model for means of grouped observations - corner constrained
# parameterisation for paper weight as a covariate corresponding R file
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
    mu[i] <- b0 + b1[paper[i]]
  }
  
  for (j in 2:n.papers) {
    b1[j] ~ dnorm(0, 1e-07)
  }
  
  b1[1] <- 0
  
  # dummy iterations
  for (k in 2:n.angles) {
    b2[k] <- angle[k]
  }
  
  # dummy iterations
  for (m in 2:n.designs) {
    b3[m] <- design[m]
  }
  
  tau ~ dgamma(0.001, 0.001)
  b0 ~ dunif(0, 10000)
}


