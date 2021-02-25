#[문제1]
v1 = sample(1:30, 10, replace=T)
names(v1)<-c("z", "y", "x", "w", "v", "u", "t","s", "r", "q")
v2 <- names(v1)
v1 #출력#
v2 #출력#

#[문제2]
v = seq(from = 10, to = 38, by = 2)
m1 <- matrix(v, nrow=3, ncol=5)
m2 <- m1+100
m_max_v = max(m1)
m_min_v = min(m1)
row_max = apply(m1,1,max)
col_max = apply(m1,2,max)
m1; m2; m_max_v; m_min_v; row_max; col_max #출력#

#[문제3]
n1 = c(1,2,3)
n2 = c(4,5,6)
n3 = c(7,8,9)
m2 <- cbind(n1,n2,n3); m2

#[문제4]
m3 = matrix(1:9 , nrow =3, ncol =3, byrow=T); m3

#[문제5]
m4 <- m3
rownames(m4) <- c("row1","row2","row3")
colnames(m4) <- c("col1","col2","col3")
m4

#[문제6]
alpha = matrix(letters[1:6], nrow = 2, ncol = 3)
alpha2 <- matrix(alpha, rbind("x","y","z"));alpha2
alpha3 <- matrix(alpha, cbind("s","p"));alpha3

#[문제7] 
#(1) 2행3열4층의 데이터를 출력한다.
a <- array(1:24, c(2,3,4));a

#(2) 각 층마다 2행의 데이터를 출력한다.
a[2,,]

#(3) 각 층마다 1열의 데이터를 출력한다.
a[,1,]

#(4) 3층의 모든 데이터를 출력한다.
a[,,3]

#(5) a라는 배열을 구성하는 모든 데이터에 100을 + 연산하여 출력한다.
a+100

#(6) 4층의 모든 데이터들에 100을 곱한 결과를 출력한다.
a[,,4]*100

#(7) 각층의 1행, 2열과3열만 출력한다.
a[1,2:3,]

#(8) 2층의 2행 데이터들의 값을 100을 더한 값으로 변경한다.
a[2,,2] <- a[2,,2]+100;a

#(9) 1층의 모든 데이터들의 값에 2를 뺀 값으로 변경한다.
a[,,1] <- a[,,1]-2;a

#(10) a 배열의 모든 데이터 값들을 10을 곱한 값으로 변경한다.
a<-a*10;a

#(11) a 배열을 삭제한다.
rm(a)
