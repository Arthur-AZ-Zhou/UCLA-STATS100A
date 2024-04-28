
#generate 1k uniform numbers between 0 and 1
random_numbers <- runif(1000, min = 0, max = 1)

#plot the histograms of the random numbers
hist(random_numbers, main = "Histogram of Uniform Random Numbers", xlab = "Value", ylab = "Frequency",col = "lightblue", border = "blue")


#num of times to repeat generating 2 numbers
n <- 1000

#generate n uniform random numbers for X and Y
X <- runif(n, min = 0, max = 1)
Y <- runif(n, min = 0, max = 1)

#plot the scatterplot of X vs Y
plot(X, Y, main = "Scatterplot of Independent Uniform Random Numbers", xlab = "X Values", ylab = "Y Values", col = "blue", pch = 19)


#num of points to generate
n <- 10000

#generate n random numbers for X and Y in range [-1, 1]
X <- runif(n, min = -1, max = 1)
Y <- runif(n, min = -1, max = 1)

#count how many points fall within unit circle
points_inside <- sum(X^2 + Y^2 < 1)

#estimate pi
pi_estimate <- (points_inside/n) * 4

#print
print(pi_estimate)


#generate uniform number between 0 and 1
U <- runif(1, min = 0, max = 1)

#determine value Z based on U
Z <- ifelse(U < 0.5, 0, 1)

#print result
print(Z)


#Number of coin flips
n <- 10

# Generate n uniform random numbers U between 0 and 1
U <- runif(n, min = 0, max = 1)

# Determine the value of Z for each U
Z <- ifelse(U < 0.5, 0, 1)

# Print the results
print(Z)


# Number of trials
trials <- 10000

# Initialize vectors to store the results
mean_u <- numeric(trials)
clt_u <- numeric(trials)

# Number of observations (change this to see different effects)
n <- 30

# Simulation
for (i in 1:trials) {
    # Generate n uniform random numbers
    U <- runif(n, min = 0, max = 1)
    
    # Calculate the mean
    mean_u[i] <- mean(U)

    # Calculate for CLT
    clt_u[i] <- sqrt(n) * (mean_u[i] - 1/2)
}

# Plot the histogram of mean_u to demonstrate LLN
hist(mean_u, main = "LLN: Histogram of U-bar", xlab = "U-bar", ylab = "Frequency", col = "lightblue", border = "blue", breaks = 30)

# Plot the histogram of clt_u to demonstrate CLT
hist(clt_u, main = "CLT: Histogram of sqrt(n) (U-bar - 1/2)", xlab = "sqrt(n) (U-bar - 1/2)", ylab = "Frequency", col = "lightgreen", border = "darkgreen", breaks = 30)
