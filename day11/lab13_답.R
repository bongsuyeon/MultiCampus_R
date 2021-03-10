yes1 <- readLines("output/yes24.txt", encoding="UTF-8")
yes2 <- unlist(extractNoun(yes1))
yes3 <- gsub("[^가-힣]","",yes2) 
yes4 <- Filter(function(x){nchar(x)>=2 & nchar(x)<=4}, yes3) 
yes5 <- table(yes4)
yes6 <- sort(yes5, decreasing = T) 
data <- data.frame(yes6) 

result <- wordcloud2(data = data, fontFamily = "휴먼옛체")



# [^가-힣[:space:]] # \\s 불가능






