# [문제1]
countEvenOdd <- function(p){
  evenCnt = 0
  oddCnt = 0
  if(!is.vector(p)|typeof(p) == "character"){
    return(NULL)
  }
  for (i in p){
    if(i %% 2 == 0){
      evenCnt = evenCnt + 1
    }
    if(i %% 2 == 1){
      oddCnt = oddCnt + 1
    } 
  }
  return(list(odd=oddCnt,even=evenCnt))
}
v<-c(1,2,3,4,5)
countEvenOdd(v)
v<-c(1,2,3,4,5,"gg")
countEvenOdd(v)


# [문제2]
vmSum <- function(p){
  
  if(!is.vector(p)){
    return("벡터만 전달하숑!")
  }
  if(typeof(p) == "character"){
    print("숫자 벡터만 전달하숑!")
    return(0)
  }
  
  return(sum(p))
}
v<-c(1,2,3,4,5)
vmSum(v)
v<-c(1,2,3,4,5,"gg")
vmSum(v)


# [문제3]
vmSum2 <- function(p){
  if(!is.vector(p)){
    stop("벡터만 전달하숑!")
  }
  if(typeof(p) == "character"){
    warning("숫자 벡터만 전달하숑!")
    return(0)
  }
  
  return(sum(p))
}
v<-c(1,2,3,4,5)
vmSum2(v)
v<-c(1,2,3,4,5,"gg")
vmSum2(v)


# [문제4]
mySum <- function(p){
  oddSum <-0
  evenSum <- 0
  
  if(!is.vector(p)){
    stop("벡터만 처리 가능!!")
  }
  if(any(is.na(p))){
    warning("NA를 최저값으로 변경하여 처리함!")
    min <- p[1]
    for(i in 1:length(p)){
      if (i < min)
        min <- i
    }
    p[(which(is.na(p)))]<-min
  }
  if(is.null(p)){
    return(NULL)
  }
  
  for(i in 1:length(p)){
    if(i%%2==0)
      evenSum<- evenSum + p[i]
    if(i%%2==1)
      oddSum<-oddSum + p[i]
  } 
  return(list(odd=oddSum,even=evenSum))
}

v<-c(1,2,3,4,5,NA)
mySum(v)


# [문제5]
myExpr <- function(f){
  if(is.function(f)){
    return (f(sample(1:45,6)))
  }
  else{
    warning("수행 안할꺼임!!")
  }
}
myExpr(1)
myExpr(sum)
myExpr(length)


# [문제6]
createVector1 <- function(...){
  item <- c(...)
  if(is.null(item))
    return(NULL)
  if(any(is.na(item)))
    return(NA)
  return(item)
}

createVector1()
createVector1(1,2,3,4,NA)
createVector1(1,2,4,5)
createVector1(1,2,'A')


# [문제7]
io <- scan("R/data/iotest1.txt")

cat("오름차순 :");print(sort(io))
cat("내림차순 :");print(sort(io,decreasing=TRUE))
cat("합 :");print(sum(io))
cat("평균 :");print(mean(io))


# [문제8]
io2 <- scan("R/data/iotest2.txt",what="")
word <- summary(factor(io2))
cat("가장 많이 등장한 단어는",names(which.max(word)),"횟수는 ", max(word), "회 입니다.")

