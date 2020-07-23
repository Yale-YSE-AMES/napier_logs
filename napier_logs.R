N <- 10^7
L <- 0
Ls <- c()
Ns <- c()

for (i in 1:100) {
        L <- L + 1
        N <- 10^7*(1 - 10^(-7))^i
        Ls[i] <- L
        Ns[i] <- N
}

table1 <- data.frame("L" = Ls, "N" = Ns)
