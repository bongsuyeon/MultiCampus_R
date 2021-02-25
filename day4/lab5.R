#[ 문제 1 ] 
exam1 <- function(){
  alpha <- paste(letters,LETTERS)
  return (alpha)
}
exam1()

#[ 문제 2 ]
exam2 <- function(n){
  sum <- 0
  for(i in 1:n){
    sum = sum + i
  }
  return (sum)
}
exam2(10)

#[ 문제 3 ]
exam3 <- function(x,y){
  di <- x-y
  if(di < 0){
    di=di*-1
  }
  return (di)
}
exam3(30,29)

#[ 문제 4 ]
exam4 <- function(a,b,c){
  if(b == "+")
  {
    return (a+c)
  }
  if(b == "-")
  {
    return (a-c)
  }
  if(b == "*")
  {
    return (a*c)
  }
  if(b == "%/%")
  {
    if(a==0)
    {
      return("오류1")
    }
    if(c==0)
    {
      return("오류2")
    }
    return (a%/%c)
  }
  if(b == "%%")
  {
    if(a==0)
    {
      return("오류1")
    }
    if(c==0)
    {
      return("오류2")
    }
    return (a%%c)
  }
  else{
    return("규격의 연산자만 전달하세요")
  }
}
exam4(0,'%%',29)


#[ 문제5 ]
exam5 = function(n,ch='#'){
  if(n > 0){
    for (i in 1:n)
    {
      cat(ch)
    }
    return(NULL)
  }
}
exam5(10,'a')
exam5(4)
exam5(-4)

#[ 문제6 ]
exam6 = function(...){
  n <- c(...)
  for(i in n){
    if(is.na(i)==FALSE){
      if(i >= 85 & i < 101){
        sc<-"상"
      }
      if(i >= 70 & i < 85){
        sc<-"중"
      }
      if(i < 70){
        sc<-"하"
      }
      p<- paste(i,"점은",sc,"입니다")
    }
    else{
      p<- paste("NA 는 처리불가")
    }
  print(p)
  }
}
exam6(80, 50, 70, 66, NA, 35)
