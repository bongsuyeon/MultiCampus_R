library(KoNLP)
yes_data <- readLines("R/data/yes24.txt",encoding = 'UTF-8')
#head(yes_data) #확인

#1. 명사만을 추출
yes_word <- extractNoun(yes_data) 
head(yes_word);trail(yes_word)

#2. 텍스트 전처리 - 한글이 아닌 것은 모두 제거
yes_unword <- unlist(yes_word)
yes_unword_korean<-gsub("[A-z|[:punct:]|0-9]","",yes_unword)

#3. 단어의 길이가 2자이상이고 4자 이하
yes_unword_2 <- Filter(function(x) {nchar(x) >= 2}, yes_unword_korean)
yes_unword_24 <- Filter(function(x) {nchar(x) <= 4}, yes_unword_2)
head(yes_unword_24)


#4. 각 단어의 개수를 센다& 많은 순으로 정렬한다
yes_table <- table(yes_unword_24)
yes_wordCnt <- sort(yes_table, decreasing = T)

#6. 데이터 프레임으로 만든다
yes_dataframe <- data.frame(yes_wordCnt)

#7. 워드크라우드2로 시각화한다. 
yes_wc<-wordcloud2(data = yes_dataframe) # str(demoFreq)

#8. 시각화 한 것을 htmltools::save_html () 함수를 사용하여 yes24.html 로 저장
htmltools::save_html(yes_wc, "R/day11/yes24.html")




