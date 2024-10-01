sin()
tan()
log()
round()
cos()

#//////////////////////////////////////////////////////////////////

prenom <- readline('enter your name: ')
cat('Bienvenue', prenom)
notes <- scan(nmax = 4, quiet = TRUE)
somme <- sum(notes)
moyenne <- somme / 4
cat(paste('la moyenne est de', moyenne))

#///////////////////////////////////////////////////////////////////

quantite <- readline('quantite demande: ')
if(quantite < 10){
  print('petite commande')
}else if(quantite <= 50){
  print('moyenne commande')
}else{
  print('grande commande')
}
...

#//////////////////////////////////////////////////////////////////

ventes <- numeric(6)
c <- 1
repeat{
  cat('Entrez les ventes du mois', c)
  vente <- scan(n=1)
  if (vente < 0){
    cat('ERREUR: le nombre doit etre positif.')
  }else{
    ventes[c] <- vente
    c <- c + 1
    if(c > 6){
      break
    }
  }
}


for (i in 1:6) {
  vente <- ventes[i]
  if(vente>3000){
    print(vente,'dh de vente pendant le mois',i)
  }
}


counter <- 1
totale_ventes <- 0
while(counter < 7){
  totale_ventes <- totale_ventes + ventes[counter]
}
if(totale_ventes < 20000){
  nouv_totale <- 20000 - ventes[6]
}
x <- ventes[6]
while(nouv_totale < 20000){
  print('ajoutons 10%')
  x <- x + (0.1 * x)
  nouv_totale <- nouv_totale + x
}

#////////////////////////////////////////////////////////////////

bienv <- function(){
  print('Bienvenue!')
}
somme2_func <- function(x,y){
  return(sum(x,y))
}
somme3_func <- function(x=0, y=0, z=0){
  return(sum(x,y,z))
}
moyenne_func <- function(x){
  return (sum(x) / length(x))
}
bienv()
somme2_func(5,4)
somme3_func(5,4,5)
x <- c(7,6,5)
moyenne_func(x)