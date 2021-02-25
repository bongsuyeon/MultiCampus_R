# matrix 실습
x1 <-matrix(1:8, nrow = 2)
x1
x1<-x1*3
x1

sum(x1); min(x1);max(x1);mean(x1)

x2 <-matrix(1:8, nrow =3)
x2

(chars <- letters[1:10])

mat1 <-matrix(chars)
mat1; dim(mat1)
matrix(chars, nrow=1)
matrix(chars, nrow=5)
matrix(chars, nrow=5, byrow=T)
matrix(chars, ncol=5)
matrix(chars, ncol=5, byrow=T)
matrix(chars, nrow=3, ncol=5)
matrix(chars, nrow=3)


vec1 <- c(1,2,3)
vec2 <- c(4,5,6)
vec3 <- c(7,8,9)
mat1 <- rbind(vec1,vec2,vec3); mat1
mat2 <- cbind(vec1,vec2,vec3); mat2
mat1[1,1]
mat1[2,];mat1[,3]
mat1[1,1,drop=F]
mat1[2,,drop=F];mat1[,3,drop=F]

rownames(mat1) <- NULL
colnames(mat2) <- NULL
mat1;mat2
rownames(mat1) <- c("row1","row2","row3")
colnames(mat1) <- c("col1","col2","col3")
mat1
ls()
mean(x2)
sum(x2)
min(x2)
max(x2)
summary(x2)

mean(x2[2,])
sum(x2[2,])
rowSums(x2); colSums(x2)

apply(x2, 1, sum); apply(x2, 2, sum)  
?apply
apply(x2, 1, max)
apply(x2, 1, min)
apply(x2, 1, mean)

apply(x2, 2, max)
apply(x2, 2, min)
apply(x2, 2, mean)

#Array 실습
a1 <- array(1:30, dim=c(2,3,5))
a1

a1[1,3,4]
a1[,,3]
a1[,2,]
a1[1,,]
a1[,2,]