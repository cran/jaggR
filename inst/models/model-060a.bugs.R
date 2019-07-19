# model-060c.bug - model for means and variances of axial and laterial sway data
# as a bivariate for a proper multivariate model

data{
  D <- dim(movement)
  n <- D[1]  # n rows
  m <- D[2]  # m columns
  # t is the prior for the covariance matrix
  t[1, 1] <- 0.5
  t[1, 2] <- 0.3
  t[2, 1] <- 0.3
  t[2, 2] <- 0.5
}


model{
  
  for (i in 1:n) {
    movement[i, ] ~ dmnorm(b0, tau)
  }
  
  # prior for the mean in each dimension
  for (j in 1:m) {
    b0[j] ~ dnorm(0, tau.1)
  }
  
  # convert precision to covariance
  cov <- inverse(tau) * 2
  
  # prior for multivariate data is dwishert
  tau ~ dwish(t, n)
  
  # prior for the variances of the means is dgamma
  tau.1 ~ dgamma(2.5, 2.5)
  
  # dummy iterations to surpress warnings about age being an unused variable
  age[1] ~ dnorm(0, 1)
}


