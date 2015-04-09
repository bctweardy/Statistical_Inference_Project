library(ggplot2)

lambda = .2

sd_exp_dist <- 1/lambda
n = 40

exp_dist <- rep(NA, 1000)

for (i in 1:1000) {
        exp_dist [i] <- mean(rexp(n, lambda))
}

## Theoretical Distribution Mean
theo_mean <- 1 / lambda
theo_mean

## Exponential Distribution Mean 
exp_dist_mean <- mean(exp_dist)
exp_dist_mean



## Theoretical Distribution Variance
theo_var <- ((sd_exp_dist) ^ 2) / n 
theo_var

## Exponential Distribution Variance
exp_dist_var <- var(exp_dist)
exp_dist_var 

hist(exp_dist, main = "Theoretical Distribution Mean
     vs
     Exponential Distribution Mean",
     xlab = "Distribution", ylab = "Frequency", "col" = "grey")
abline(v = exp_dist_mean, col = "red", lwd = 4)
abline(v = theo_mean, col = "green", lwd = 4)
legend("topright", c("Theoretical Mean", "Exponential Mean"), 
       col = c("green", "red"), lwd = 3)

exp_dist_scale <- scale(exp_dist)
hist(exp_dist_scale, main = "Theoretical Distribution Mean
     vs
     Exponential Distribution Mean",
     xlab = "Distribution", ylab = "Frequency", "col" = "gray", prob = TRUE)
lines(density(exp_dist_scale), col = "purple", lwd = 2)
curve(dnorm(x, 0, 1), -3, 3, add = TRUE, col = "orange", lwd = 2)
