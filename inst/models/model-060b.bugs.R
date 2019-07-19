# model-060b.bug - model for means and variances of axial and laterial sway data
# as a bivariate for a proper multivariate model - this fits a different mean for
# each direction of sway for each agegroup

data{
  D <- dim(movement)
  n <- D[1]  # n rows
  m <- D[2]  # m columns
  # t is the prior for the covariance matrix
  t[1, 1] <- 0.5  # variance of axial
  t[1, 2] <- 0.3  # axial/lateral covariance
  t[2, 1] <- 0.3  # axial/lateral covariance
  t[2, 2] <- 0.5  # variance of lateral
}


model{
  
  for (i in 1:n) {
    movement[i, ] ~ dmnorm(c(b0[1] + b1[age[i]], b0[2] + b2[age[i]]), tau)
  }
  
  # b1 is bit added to axial movement
  for (j in 1:1) {
    b1[j] ~ dnorm(0, tau.1)
  }
  
  # setting category corresponding to younger ages as the reference category
  b1[2] <- 0
  
  # b2 is bit added to lateral movement
  for (l in 1:1) {
    b2[l] ~ dnorm(0, tau.1)
  }
  
  # setting category corresponding to younger ages as the reference category
  b2[2] <- 0
  
  # for the mean in each dimension
  for (j in 1:m) {
    b0[j] ~ dnorm(0, tau.1)
  }
  
  # convert precision to covariance
  cov <- inverse(tau) * 2
  
  # prior for multivariate covariance matrix is dwishert
  tau ~ dwish(t, n)
  
  # prior for the variances of the means is dgamma
  tau.1 ~ dgamma(2.5, 2.5)
}

