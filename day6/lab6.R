# 문제 1
countEvenOdd <- function(vt){
  if (!is.numeric(vt)||!is.vector(vt)) 
    return()
  else {
    total <- length(vt)
    even <- 0
    for (i in 1:total) {
      if (vt[i] %% 2 == 0) {
        even <- even+1; 
       # odd <- total-even
      }
    }
    odd <- total-even
    return (list(even = even, odd = odd))
  }
}

countEvenOdd(c(1,4,3))
countEvenOdd(c(1,2,3,4,5))




# 문제 2
vmSum <- function(vt){
  if (!is.vector(vt) || is.list(vt)){
    return("벡터만 전달하숑!")
  } else if(!is.numeric(vt)){
    print("숫자 벡터를 전달하숑!");
    return(0)
  } else
    return(sum(vt))
}

vmSum(c(1,4,3))
vmSum(c(1,2,3,4,5))
vmSum(c(1,"가"))
vmSum(c("가","1"))
vmSum(data.frame(1,2,3))
vmSum(list(1,2,3))




# 문제 3
vmSum2 <- function(vt){
  if (!is.vector(vt) || is.list(vt)) 
    stop("벡터만 전달하숑!") #  에러발생
  else if(!is.numeric(vt)){
    warning("숫자 벡터를 전달하세요");
    return(0)
  } else
    return(sum(vt))
}

vmSum2(c(1,4,3))
vmSum2(c(1,"가"))
vmSum2(data.frame(1,2,3))




# 문제 4
mySum <- function(vt){
  if (!is.vector(vt) || is.list(vt)) 
    stop("벡터만 처리가능!")
  else if(any(is.na(vt))){
    warning("NA를 최저값으로 변경하여 처리함!")
    #vs <- vt
    #vs <- order(vs)
    #vt[is.na(vt)] <- vs[1]
    vt[is.na(vt)] <- min(vt, na.rm=T)
    total <- length(vt)
    odd <- 0
    for (i in 1:total) {
      if (i %% 2 != 0) 
        odd <- odd + vt[i]
    }
    return(list(oddSum = odd, evenSum =sum(vt)-odd))
  } 
  else if(is.null(vt)) 
    return()
  else{ 
    total <- length(vt)
    odd <- 0
    for (i in 1:total) {
      if (i %% 2 != 0) odd <- odd + vt[i]
    }
    return(list(oddSum = odd, evenSum =sum(vt)-odd))
  }
}

mySum(c(NA,2,3,5))
mySum(data.frame(2))
mySum(1:5)
mySum(c(1,5,2,7,10))

test <- c(NA,2,3,5)
order(test)
min(test, na.rm=T)
is.na(test)
test[is.na(test)] <- min(test, na.rm=T)


# 문제 5 (sum은 왜 수행이 안되는지?)
myExpr <- function(f1){
  if (is.function(f1)){
    return (f1(sample(1:45,6)))
  }
  else 
    stop("수행안할꺼임")
}

myExpr(2)
myExpr(mean)
myExpr(max)
myExpr(sort)
myExpr(base::sum)

sort

sum

ls()


# 문제 6
createVector1 <- function(...){
  p <- c(...)
  if (is.null(p)) return()
  else if (any(is.na(p))) return (NA)
  else return (p)
}

createVector1()
createVector1(1,NA,2)
createVector1(1,2,5)
createVector1(1,2,5,'A')
createVector1(1,2,5,T)
createVector1(1,2,5,T,'A')




# 문제 7
createVector2 <- function(...){
  p <- list(...)
  if (is.null(p)) 
    return()
  else 
    return(p)
}

createVector2()
createVector2(1,2,"가나")
createVector2(A = c(1:2),LETTERS,"가나다",TRUE)
createVector2(1,2,5)
createVector2(1,2,5,'A')
createVector2(1,2,5,T)
createVector2(1,2,5,T,'A')



