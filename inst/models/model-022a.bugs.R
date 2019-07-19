# model-022a.bug - model for means of grouped observations - intercept only model
# corresponding R file model-022.r


data{
  n <- length(distance)
  n.papers <- max(paper)
  n.angles <- max(angle)
  n.designs <- max(design)
}


model{
  
  for (i in 1:n) {
    distance[i] ~ dnorm(b0, tau)
  }
  
  # dummy iterations
  for (j in 2:n.papers) {
    b1[j] <- paper[j]
  }
  
  # dummy iterations
  for (k in 2:n.angles) {
    b2[k] <- angle[k]
  }
  
  # dummy iterations
  for (m in 2:n.designs) {
    b3[m] <- design[m]
  }
  
  tau ~ dgamma(0.001, 0.001)
  b0 ~ dnorm(0, 1e-04)
}


