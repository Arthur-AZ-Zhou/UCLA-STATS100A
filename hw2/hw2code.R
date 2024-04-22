
n <- 100 
m <- 1000

coin_flips <- matrix(runif(n * m, min = 0, max = 1) < 0.5, nrow = m, ncol = n)
X <- rowSums(coin_flips)

hist(X, main = "Number of Heads per Frequency (X)", xlab = "Number of Heads", ylab = "Frequency", col = "lightblue", border = "blue")
hist(X/n, main = "Number of Heads per Frequency Proportion (X/n)", xlab = "Proportion of Heads", ylab = "Frequency", col = "lightgreen", border = "darkgreen")
