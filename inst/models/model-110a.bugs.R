# model−110a.bug−model for mean of loglikelihoods for getting a facial comparison
# correct
data{
  n <- length(response)
  n.comparisons <- max(comparison)
  n.subjects <- max(subject)
  n.departments <- max(department)
}
model{
  for (i in 1:n) {
    response[i] ~ dbern(pr[i])
    pr[i] <- ilogit(b0)
  }
  b0 ~ dnorm(0, 0.001)
}
