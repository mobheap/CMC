L1 <- c('Tamesna', 'Marrakesh', 'Tanger', 'Casablanca')
L2 <- c('Paris', 'Nantes', 'Lyon', 'Marseille')
cat('longeur de L1',length(L1))
cat('longeur de L2',length(L2))
L1[1] <- 'Rabat'
VillesRegiona1 <- c(L1[2:4])
L1 <- sort(L1)
L1 <- rev(L1)
L3 <- seq(10, 10000, by=10)
L4 <- rep(c(0,1,2), each=6)
print(L4)
print(max(L3))
print(min(L3))
print(sum(L3))
print(median(L3))
print(sd(L3))

# /////////////////////////////////////////////////////////////////////

x <- 'cite'
y <- 'des'
z <- 'metiers'
t <- 'competences'
substr(x,1,3)
paste(x,y)
toupper(z)
sum(unlist(strsplit(t, "")) == "R")

#//////////////////////////////////////////////////////////////////////

A <- "Bonjour" 
nchar(A)

B <- "Exemple"
substr(B, 1, 4)

nom <- "iMAD"
age <- 25
paste(nom, age)

C <- "bonjour"
toupper(C)

D <- "Bonjour"
tolower(D)

nom <- "Imad"
age <- 30
paste0(nom, age)

E <- "Bonjour à tous"
strsplit(E, " ")

f <- "excellent"
gsub("e", "E", f)

chaine <- c("chat", "chien", "oiseau")
grep("ch", chaine)

G <- "excellent"
sub("e", "E", G)

nom <- "Alice"
age <- 25
sprintf("Nom: %s, Age: %d", nom, age)

#///////////////////////////////////////////////////////////////////////////////////////

notes <- matrix(c(15, 18, 13, 17,14,19,12,16,15,16,18,14), nrow = 3, ncol = 4)
colnames(notes) <- c("EGTSA206", "M201", "M203", "M204")
rownames(notes) <- c("Stagiaire1", "Stagiaire2", "Stagiaire3")
print(colnames(notes))
print(rownames(notes))
print(notes)
print(dim(notes))
print(length(notes))
print(colMeans(notes))
print(rowMeans(notes))
apply(notes, 1, summary)
apply(notes,2, summary)

#////////////////////////////////////////////////////////////////////////////////////////

liste_notes <- list(
  Stagiaire1 = c(EGTSA206 = 15, M201 = 17, M203 = 12),
  Stagiaire2 = c(EGTSA206 = 18, M201 = 14, M203 = 16),
  Stagiaire3 = c(EGTSA206 = 13, M201 = 19, M203 = 15)
)
print(length(liste_notes))
cat("Structure de la liste : ")
str(liste_notes)
Stagiaire4 <- c(EGTSA206 = 16, M201 = 15, M203 = 14)
liste_notes <- c(liste_notes, list(Stagiaire4))
names(liste_notes) <- c("Stagiaire1","Stagiaire2","Stagiaire3","Stagiaire4")
unlisted_notes <- unlist(liste_notes)
print(unlisted_notes)
moyenne_par_stagiaire <- sapply(liste_notes, mean)
print(moyenne_par_stagiaire)
arrondies_notes <- lapply(liste_notes, round)
print(arrondies_notes)
resume_statistique <- lapply(liste_notes, summary)
print(resume_statistique)
View(liste_notes)

# //////////////////////////////////////////////////////////////////////////

df <- data.frame(
  EGTSA206 = c(15, 18, 13),
  M201 = c(17, 14, 19),
  M203 = c(12, 16, 15),
  M204 = c(16, 18, 14),
  row.names = c("Stagiaire1", "Stagiaire2", "Stagiaire3")
)
print(df)

str(df)
ncol(df)
dim(df)
colnames(df)
rownames(df)
moy <- apply(df, 1, mean)
print(moy)
moy <- apply(df, 2, mean)
print(moy)
print(colMeans(df))
print(rowMeans(df))
print(summary(df))

#///////////////////////////////////////////////////////////////////////////////

