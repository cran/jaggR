model{
  for (method in 1:2) {
    x[method] ~ dbinom(pi[method], n)
    pi[method] ~ dunif(0, 1)
  }
  pi.diff <- abs(pi[1] - pi[2])
  p05 <- ifelse(pi.diff < 0.05, 1, 0)
}
