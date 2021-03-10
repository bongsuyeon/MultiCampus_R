#####   CASE 1

# 문제 1 -  'Happy', 'Birthday', 'to', You'로 구성된 텍스트 벡터 v1 생성한 후 벡터의 길이와 문자 개수의 합을 계산

v1 <- c('Happy', 'Birthday', 'to', 'You')
length(v1)
sum(nchar(v1))


# 문제 2
v2 <- paste(v1,collapse = " ")
v2
length(v2)
nchar(v2)

# 문제 3

paste(LETTERS[1:10], 1:10)
paste0(LETTERS[1:10], 1:10)

# 문제 4
text1 <- 'Good Morning'
(splited_text = strsplit(text1, split=" ")[[1]])
list(splited_text[1], splited_text[2])

#다른 방법
#library(stringr)
list(str_sub(text1,1,4), str_sub(text1,-7))
list(substr(text1,1,4), substring(text1,6))

# 문제 5
text2 <- c("Yesterday is history, tommrrow is a mystery, today is a gift!",  
           "That's why we call it the present – from kung fu Panda")
(text2 <- gsub("[[:punct:]]", "", text2))
#gsub("[,-]", "", text2)
#gsub("[,–]", "", text2)
(text2 <- gsub("\\s{2}", " ", text2))
splited_text2 <- unlist(strsplit(text2 , " "))
splited_text2

# 문제 6
s1 <- "@^^@Have a nice day!! 좋은 하루!! 오늘도 100점 하루...."
# (1) 한글만 삭제하여 r1 에 저장 한다.
(r1 <- gsub("[가-힣]", "", s1)) # [A-Z]
# (2) 특수문자들을 삭제하여 r2 에 저장 한다.
(r2 <- gsub("[[:punct:]]", "", s1))
# (3) 한글과 특수문자들을 삭제하여 r3 에 저장 한다.
(r3 <- gsub("[[가-힣][:punct:]]", "", s1))
(r3 <- gsub("[가-힣]|[[:punct:]]", "", s1))
# (4) 100을 '백'으로 변환하여 r4에 저장 한다.
(r4 <- gsub("100", "백", s1))


# 문제7

word_data <- readLines("output/hotel.txt")
word_data2 <- extractNoun(word_data) # 알아서 각각의 문장마다 명사 뽑아냄.
word_data2

undata <- unlist(word_data2) # 리스트 해제
undata

undata <- gsub("[[:punct:]]", "", undata)

undata2 <- Filter(function(x) {nchar(x) >= 2}, undata) # 2개이상 단어만 추출
word_table2 <- table(undata2)
word_table2

final <- sort(word_table2, decreasing = T)
final2 <- data.frame(final[1:10])
write.csv(final2, file="output/hotel_top_word.csv")


#####   CASE 2
install.packages('stringr')
library('stringr')

# 문제 1
v1 <- c('Happy', 'Birthday', 'to', 'You')
a <- str_count(v1)
cat('벡터의 길이 : ', length(v1), '\n')
cat('문자 개수의 합 :', sum(a), '\n')

# 문제 2
v1.text <- paste0(v1, collapse = " ")
print(v1.text)
cat('벡터의 길이 : ', length(v1.text), '\n')
cat('문자 개수의 합 :', str_length(v1.text), '\n')

# 문제 3
a <- LETTERS[1:10]
paste(a, seq(1:10))
paste0(a, seq(1:10))

# 문제 4 -> 리스트 출력 확인인
txt <- 'Good Morning'
(a <- strsplit(txt, " "))
txt.list <- list(a[[1]][1], a[[1]][2])


b <- str_split_fixed(txt, " ", 2) # 다른 방법

# 문제 5
a <- c("Yesterday is history, tommrrow is a mystery, today is a gift!",
       "That's why we call it the present - from kung fu Panda")
a <- gsub("[,-]", "", a)
a <- strsplit(a, " ")

# b <- c(a[[1]], a[[2]]) 하나의 벡터에 담으려면
unlist(a)

a <- c("Yesterday is history, tommrrow is a mystery, today is a gift!",
       "That's why we call it the present - from kung fu Panda")
a <- gsub("[,-]", "", a)
a <- gsub("\\s{2}", " ", a)
a <- strsplit(a, " ")
unlist(a)
# 문제 6
s1 <- "@^^@Have a nice day!! 좋은 하루!! 오늘도 100점 하루...."
r1 <- gsub("[가-힣]", "", s1)
r2 <- gsub("[[:punct:]]", "", s1)
r3 <- gsub("[[:punct:]]|[가-힣]", "", s1)
r4 <- gsub("100", "백", s1)

# 문제 7
a <- readLines('output/hotel.txt') # 강사의 hotel.txt 는 문자셋이 ANSI 임
class(a)
library(KoNLP)
a <- sapply(a, extractNoun, USE.NAMES = F)
a <- table(unlist(a))
a <- sort(a, decreasing = T)
df <- data.frame(a[1:10])
colnames(df) <- c('wname', 'wcount')
View(df)

write.csv(df, 'output/hotel_top_word.csv', row.names = F)
