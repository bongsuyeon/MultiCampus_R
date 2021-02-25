#[문제1] iris 라는 데이터셋이 몇 개의 관측치를 가지고 있으며 어떠한 변수들을 가지고 있는지 채크하려 한다. 이 때 사용되는 R코드를 작성하시오.
str(iris)

#[문제2] 다음과 같이 값이 구성되는 데이터프레임을 정의하여 df1 에 저장한다.
df1 <- data.frame(
  x<-(1:5), 
  y<-seq(from = 2,to = 10, by=2)
)
colnames(df1)<- c('x','y')
df1

#[문제3] 다음과 같이 값이 구성되는 데이터프레임을 정의하여 df2 에 저장한다.
df2 <- data.frame(
  col1<-(1:5), 
  col2<-letters[1:5],
  col3<-(6:10)
)
colnames(df2)<- c('col1','col2','col3')
df2

#[문제4] c() 함수로 먼저 벡터를 생성한 다음 data.frame()사용해서 다음과 같이 구성되는 데이터 프레임 df3를 만들어 출력해 본다.(제품명이 팩터형이 되지 않게 한다.)
제품명 = c("사과","딸기","수박")
가격 = c(1800,1500,3000)
판매량 = c(24,38,13)
df3 = data.frame(제품명, 가격, 판매량)
df3

#[문제5] 앞에서 만든 데이터 프레임을 이용해서 과일 가격 평균, 판매량 평균을 구하여 출력한다.
mean(df3$가격);mean(df3$판매량)

#[문제 6]다음 세 벡터를 이용하여 데이터프레임 df4를 생성하고 구조를 확인한다.
name <- c("Potter", "Elsa", "Gates", "Wendy", "Ben")
gender <- factor(c("M", "F", "M", "F", "M"))
math <- c(85, 76, 99, 88, 40)

df4 <- data.frame(name, gender, math);df4

#(a) stat 변수를 추가하시오. 
stat <- c(76, 73, 95, 82, 35)
df4$stat = stat; df4
  
#(b) score 변수를 추가하는데 score 변수의 값은 math 변수와 stat 변수의 합을 구하여 저장하시오. 
score = math + stat
df4$score = score

#(c) 논리 연산 인덱싱을 이용하여 score가 150 이상이면 A, 100 이상 150 미만이면 B, 70 이상 100 미만이면 C, 70 미만이면 D 등급을 부여하고 grade 변수에 저장하시오.	
df4$grade = ifelse(df4$score>=150,"A",
                   ifelse(df4$score>=100,"B",
                          ifelse(df4$score>=70,"C","D")))
df4

#[문제7] myemp변수에 할당된 데이터프레임 객체의 구조를 점검한다.
myemp <- read.csv(file.choose()) # read.csv("data/emp.csv")
str(myemp)

#[문제8] myemp 에서 3행, 4행 , 5행만 출력한다.
myemp[3:5,,]

#[문제9] myemp 에서 사번열을 제외하고 출력한다.
myemp[,-1]

#[문제10] myemp 에서 ename컬럼만 출력한다.
myemp$ename
myemp["ename"]

#[문제11] myemp 에서 ename 과 sal컬럼만 출력한다.
myemp[c("ename","sal")]

#[문제12] myemp 에서 직무가 SALESMAN 인 사원의 이름, 월급, 직업을 출력한다.
myemp[myemp$job =="SALESMAN",c("ename","sal","job")]

#[문제13] myemp 에서 월급이 1000 이상이고 3000이하인 사원들의 이름, 월급, 부서번호를 출력한다.
myemp[myemp$sal >= 1000 & myemp$sal <3000 ,c("ename","sal","deptno")]

#[문제14] myemp 에서 직무가 ANALYST 가 아닌 사원들의 이름, 직업, 월급을 출력한다.
myemp[myemp$job != "ANALYST" ,c("ename","job","sal")]

#[문제15] myemp 에서 직무가 SALESMAN 이거나 ANALYST 인 사원들의 이름, 직업을 출력한다.
myemp[myemp$job == "ANALYST" | myemp$job == "SALESMAN" ,c("ename","job")]

#[문제16] myemp 에서 커미션이 정해지지 않은 직원의 이름과 월급 정보를 출력한다.(NA 값을 채크하는 것은 제공된 교육자료(워드문서)의 1 페이지를 참고한다.)
myemp[is.na(myemp$comm),c("ename","sal")]


#[문제17] myemp 에서 월급이 적은 순으로 모든 직원 정보를 출력한다.
myemp
myemp[order(myemp$sal),]
#[문제18] myemp의 행과 열의 갯수를 점검한다.
dim(myemp)

#[문제19] myemp 에서 부서별 직원이 몇 명인지 출력한다.
summary(as.factor(myemp$deptno))

#[문제20] myemp 에서 직무별 직원이 몇 명인지 출력한다.
summary(as.factor(myemp$job))

