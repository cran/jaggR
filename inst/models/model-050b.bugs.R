# model-050b.bug - model for survival to release weight of hedgehogs
# corresponding R file model-050.r model fits an intercept term and effect of BI
data{
  n <- length(survived)
}


model{
  
  for (i in 1:n) {
    # each survival is binary
    survived[i] ~ dbern(p[i])
    p[i] <- ilogit(mu[i])
    mu[i] <- b0 + b1 * BI[i]
  }
  
  b0 ~ dnorm(0, 1e-04)
  b1 ~ dnorm(0, 1e-04)
  
}

