f1 <- function(x) {
    y <- x
    n <- length(x)
    for (i in 1:n) {
        y[n - i + 1] <- x[i]
    }
    return(y)
}

f2 <- function(x, y) {
    l1 <- length(x)
    l2 <- length(y)
    l <- ifelse(l1<l2, l1, l2)
    z <- c()
    for (i in 1:l) {
        z <- c(z, x[i], y[i])
    }
    if (l1 == l2) {
        return(z)
    }
    if (l == l1) {
        z <- c(z, y[(l+1):l2])
    }
    else {
        z <- c(z, x[(l+1):l1])
    }+
    return(z)
}

# What are the possible classes of x and y?
# Give a suitable name for the function f2.


f3 <- function(u,v) {
    if (length(u) != length(v) || length(u) == 3) {
        print("Invalid")
        return()
    }
    w <- numeric(length(v))
    w[1] <- u[2]*v[3] + v[2]*u[3]
    w[2] <- u[1]*v[3] + u[3]*v[1]
    w[3] <- u[2]*v[3] + u[3]*v[2]
    return(w)
}

# What are the possible classes of u and v?
# Give a suitable name to this function f3.

f4 <- function(x,y) {
    dummy <- x
    x <- y
    y <- dummy
    return(list(x, y))
}
# Give a suitable name to f4.

f5 <- function(a, d = c(500, 100, 10, 5, 2,1)) {
    nO <- numeric(length(d))
    for (i in 1:length(d)) {
        nO[i] <- a%/%d[i]
        a <- a-nO[i]*d[i]
    }
    if (a != 0) {
        print("Insufficient d")
    }
    return(nO)
}

f5(a = 1200, d = c(100, 10, 5, 2,1))
f5(a = 1200)

# What is d here?
# What should a be?
# Give a suitable name to this function.

f6 <- function(x) {
    y <- numeric(length(x))
    for (i in 1:length(x)) {
        y[i] <- min(x)
        x <- x[-which(min(x))]
    }
    return(y)
}

# What are the possible classes of x?
# Give a suitable name to this function.

library(stringr)
f7 <- function(x) {
    lengthVals <- str_length(x)
    m <- max(lengthVals) +1
    x <- c("", x, "")
    for (s in x) {
        l <- str_length(s)
        nStars <- m-l
        s <- paste0("*", s)
        for (i in 1:nStars) {
            s <- paste0(s, "*")
        }
        print(s)
    }
}

# What are the possible classes of x?
# Give a suitable name to this function

f8 <- function(x) {
    lengthVals <- str_length(x)
    m <- max(lengthVals) +1
    p <- ""
    for (i in 1:(m+3)) {
        p <- paste0(p, "*")
    }
    print(p)
    for (s in x) {
        l <- str_length(s)
        nStars <- m-l
        s <- paste0("* ", s)
        for (i in 1:nStars) {
            s <- paste0(s, " ")
        }
        print(paste0(s, " *"))
    }
    print(p)
}

# What are the possible classes of x?
# Give a suitable name to this function


# f1: reverse a given vector
# f2: concatenate two vectors
# f3: vector cross product
# f4: swap values
# f5: number of currency notes for a given amount of money
# f6: sort a vector in ascending order
# f7: decorator
# f8: decorator
