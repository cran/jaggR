# model-022i.bug - model for means of grouped observations - corner constrained
# parameterisation and design and paper weight plus their interaction as
# covariates corresponding R file model-022.r


data{
  n <- length(distance)
  n.papers <- max(paper)
  n.angles <- max(angle)
  n.designs <- max(design)
  n.levels.interaction <- max(interaction)
}


model{
  
  for (i in 1:n) {
    distance[i] ~ dnorm(mu[i], tau)
    mu[i] <- b0 + b1[paper[i]] + b3[design[i]] + b4[interaction[i]]
  }
  
  for (j in 2:n.papers) {
    b1[j] ~ dnorm(0, 1e-07)
  }
  b1[1] <- 0  # corner constrain paper weights
  
  # dummy iterations
  for (k in 2:n.angles) {
    b2[k] <- angle[k]
  }
  
  
  for (m in 2:n.designs) {
    b3[m] ~ dnorm(0, 1e-07)
  }
  b3[1] <- 0  # corner constrain launch angle
  
  for (p in 4:n.levels.interaction) {
    b4[p] ~ dnorm(0, 1e-07)
  }
  b4[1] <- 0  # corner constrain 80gsm advanced design
  b4[2] <- 0  # corner constrain 50gsm advanced design 
  b4[3] <- 0  # corner constrain 80gsm simple design
  
  tau ~ dgamma(0.001, 0.001)
  b0 ~ dunif(0, 10000)
}

