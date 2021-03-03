# 문제 9
word <- scan("data/iotest2.txt",what="")
word2 <- summary(factor(word))
cat("가장 많이 등장한 단어는",names(which.max(word2)),"횟수는 ", max(word2), "회 입니다.")
