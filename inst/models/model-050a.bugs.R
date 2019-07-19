# model-050a.bug - model for survival to release weight of hedgehogs
# corresponding R file model-050.r model fits an intercept term only
data{
  n <- length(survived)
}


model{
  
  for (i in 1:n) {
    # each survival is binary
    survived[i] ~ dbern(p[i])
    p[i] <- ilogit(b0)
  }
  
  b0 ~ dnorm(0, 1e-04)
  
  # dummy calculations to stop warnings about unused variable BI
  BI[2] ~ dnorm(0, 1)
}
# Note: alternative to ilogit p[i] <- 1 / (1 + exp(b0))

