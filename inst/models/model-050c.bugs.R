# model-050c.bug - model for survival to release weight of hedgehogs
# corresponding R file model-050.r model fits an intercept term and effect of BI
# fixes b0 to get around lack of identifiability
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
  
  # b0 ~ dnorm(0, 0.0001)
  b0 <- 0.15
  
  b1 ~ dnorm(0, 1e-04)
}

