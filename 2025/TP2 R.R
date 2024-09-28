a <- 1:10
b <- c(3, 5, 7, 9)
print(a > 5)
print(a %in% b)
print(a < 4)


ages <- c(25, 30, 22, 40, 35)
salaires <- c(30, 50, 25, 70, 60)
print(ages > 30)
print(salaires > 40)
expensive <- salaires > 45

depenses <- c(200, 300, 150, 400, 250)
revenus <- c(1000, 1500, 800, 2000, 1200)
solde <- revenus - depenses
pourcentage_depenses <- (depenses / revenus) * 100
totale_depenses <- sum(depenses)
