#문제 1
v1<-c('Happy', 'Birthday', 'to', 'You')
length(v1)+length(extractNoun(v1))

#문제 2
v1_paste <- paste(v1, collapse=" ")
length(v1_paste)+length(extractNoun(v1_paste))

#문제 3
paste(LETTERS[1:10], 1:10)
paste0(LETTERS[1:10], 1:10)

#문제 4
v2<-c('Good Morning')
v2<-strsplit(v2, split=" ")
v2_list<-list(v2[[1]][1],v2[[1]][2])
v2_list

#문제 5
v3 <- c("Yesterday is history, tommrrow is a mystery, today is a gift!", 
  "That's why we call it the present – from kung fu Panda")
gsub("[,|–]","",v3)

#문제 6
s1 <- c("@^^@Have a nice day!! 좋은 하루!! 오늘도 100점 하루....")
r1<-gsub("[가-힣]","",s1)
r2<-gsub("[[:punct:]]","",s1)
r3<-gsub("[가-힣|[:punct:]]","",s1)
r4<-gsub("100","백",s1)

#문제 7
hotel_data <- readLines("data/hotel.txt")
hotel_word <- extractNoun(hotel_data)
hotel_unword <- unlist(hotel_word)
hotel_table <- table(hotel_unword)

hotel_unword2 <- Filter(function(x) {nchar(x) >= 2}, hotel_unword)
hotel_table2 <- table(hotel_unword2)

wordCnt <- sort(hotel_table2, decreasing = T)
wordCnt10 <-head(wordCnt, 10)

write.csv(wordCnt10,"hotel_top_word.csv")





undata2 <- Filter(function(x) {nchar(x) >= 2}, undata)
word_table2 <- table(undata2)
word_table2

final <- sort(word_table2, decreasing = T)


