#[문제1] 다음과 같이 값이 구성되는 리스트를 정의하여 L1 에 저장한다.
L1<-list(name="scott",sal=3000)

# 3000 을 추출하여 2를 곱한 후에 result1 변수에 저장한다.
result1 <- c(L1$sal*2)
result1


#[문제2] 다음과 같이 값이 구성되는 리스트를 정의하여 L2 에 저장한다.
L2<-list("scott",c(100,200,300))
L2

#[문제3] 다음 리스트에서 A를 "Alpha"로 대체한다.(L3)
L3 <- list(c(3,5,7), c("A", "B","C"))
L3[[2]][1] <- "Alpha"

#[문제4] 다음 리스트에서 첫 번째 원소(alpha)의 각 값에 10을 더하여 출력한다.(L4)
L4 = list(alpha=0:4, beta=sqrt(1:5), gamma=log(1:5))
L4 <- L4[[1]] + 10
L4

#[문제5] 다음과 같은 원소들로 구성되는 리스트를 생성한다.(L5)
emp<-read.csv("R/data/emp.csv")
da1 <- LETTERS
da2 <- emp[1:3,,]
da3 <- L4
L5 = list(data1=da1,data2=da2,data3=da3)
L5
L5$data1[1];L5$data2$ename; L5$data3$gamma

#[문제6] 다음 리스트는 math, writing, reading의 중간고사 및 기말고사 점수이다. (L6)
L6 = list(math=list(95, 90), writing=list(90, 85), reading=list(85, 80))
unlist(L6)
mean(unlist(L6$math))
mean(unlist(L6$writing))
mean(unlist(L6$reading))

#[문제7]
grade = sample(1:6, 1)
if(grade <= 3){
  cat(grade,"학년은 저학년입니다")
}
if(grade >= 4){
  cat(grade,"학년은 저학년입니다")
}

#[문제8]
choice = sample(1:5,1)
if(choice == 1){
  result = 300 + 50
}
if(choice == 2){
  result = 300 - 50
}
if(choice == 3){
  result = 300 * 50
}
if(choice == 4){
  result = 300 / 50
}
if(choice == 5){
  result = 300  %% 50
}
cat("결과값 : ", result)

#[문제9]
count <- sample(3:10, 1)
deco <- sample(1:3, 1)
if(deco == 1){
  for(i in 1:count)
  print("*")
}
if(deco == 2){
  for(i in 1:count)
    print("$")
}
if(deco == 3){
  for(i in 1:count)
    print("#")
}

#[문제10]
score = sample(0:100, 1)
s=10-as.integer(score/10)
if(s > 6){s<-6}
if(s == 0 ){s = 1}
d<- switch(s,'A','B','C','D','F')
cat(score,"점은",d,"등급입니다")

#[문제 11]
alpha <- paste(letters,LETTERS)
alpha
