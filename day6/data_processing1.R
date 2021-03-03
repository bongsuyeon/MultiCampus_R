numToalp <- function(v){
  alpha<-c()
  for(i in 1:length(v)){
    alpha[i] <- c(LETTERS[v[i]])
  }
  return(alpha)
}

v <- sample(1:26, 10)
sapply(v,numToalp)
