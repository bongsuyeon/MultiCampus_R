memo <- readLines("R/data/memo.txt",encoding = 'UTF-8')

memo[1] <- gsub("[&^%*!#$@]", "",memo[1])
memo[2] <- gsub("e", "E",memo[2])
memo[3] <- gsub("[[:digit:]]","",memo[3]) 
memo[4] <- gsub("[A-z]","",memo[4]) 
memo[5] <- gsub("[0-9!<>]","",memo[5])
memo[6] <- gsub("[[:space:]]", "",memo[6]) 
memo[7] <- gsub("YOU", "you" ,memo[7])
memo[7]<- gsub("OK", "ok" ,memo[7])

write.table(memo,file ="R/data/memo_new.txt")
