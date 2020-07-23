N <- 10^7
L <- 0
Ls <- c(L)
Ns <- c(N)

for (i in 1:100) {
        L <- L + 1
        N <- 10^7*(1 - 10^(-7))^i
        idx <- i + 1
        Ls[idx] <- L
        Ns[idx] <- N
}

table1 <- data.frame("L" = Ls, "N" = Ns)

ratio <- table1$N[101]/table1$N[1]
N2 <- 10^7
L2 <- 0
L2s <- c(L2)
N2s <- c(N2)

for (i in 1:50) {
        L2 <- L2 + 1
        N2 <- 10^7*ratio^i
        idx <- i + 1
        L2s[idx] <- L2
        N2s[idx] <- N2
}

table2 <- data.frame("L" = L2s, "N" = N2s)

ratio2 <- table2$N[51]/table2$N[1]
N3 <- 10^7
L3 <- 0
L3s <- c(L3)
N3s <- c(N3)

for (i in 1:20) {
        L3 <- L3 + 1
        N3 <- 10^7*ratio2^i
        idx <- i + 1
        L3s[idx] <- L3
        N3s[idx] <- N3
}

table3 <- data.frame("L" = L3s, "N" = N3s)

ratio3 <- table3$N[21]/table3$N[1]
N4 <- 10^7
L4 <- 0
L4s <- c(L4)
N4s <- c(N4)

for (i in 1:68) {
        L4 <- L4 + 1
        N4 <- 10^7*ratio3^i
        idx <- i + 1
        L4s[idx] <- L4
        N4s[idx] <- N4
}

table4 <- data.frame("L" = L4s, "N" = N4s)

plot(table4$L, table4$N)
