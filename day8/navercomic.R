library(rvest)
library(XML)
library(httr)

comicName<-NULL; comicSummary<-NULL; comicGrade<-NULL; comic<-NULL

for(i in 1:20){
  url <- paste0("https://comic.naver.com/genre/bestChallenge.nhn?&page=",i)
  text <- read_html(url,encoding = 'UTF-8')
  
  for(idx in 1: 12){
    #웹툰 이름
    ctitle<-html_text(html_nodes(text,"#content > div:nth-child(5) > table > tr > td > div.challengeInfo > h6 > a")[idx])
    title<-gsub(" ","",ctitle)
    title<-gsub("\n","",title)
    comicName[((i-1)*24)+idx] <- title
  
    #웹툰 써머리
    summary<-html_text(html_nodes(text,"#content > div:nth-child(5) > table > tr > td > div.challengeInfo > div.summary")[idx])
    comicSummary[((i-1)*24)+idx] <- summary
    
    #웹툰 평점
    Grade<-html_text(html_nodes(text,"#content > div:nth-child(5) > table > tr > td > div.challengeInfo > div.rating_type > strong")[idx])
    comicGrade[((i-1)*24)+idx] <- Grade
  }
  for(idx in 1: 12){
    #웹툰 이름
    ctitle<-html_text(html_nodes(text,"#content > div:nth-child(7) > table > tr > td > div.challengeInfo > h6 > a")[idx])
    title<-gsub(" ","",ctitle)
    title<-gsub("\n","",title)
    comicName[((i-1)*24)+idx+12] <- title
    
    #웹툰 써머리
    summary<-html_text(html_nodes(text,"#content > div:nth-child(7) > table > tr > td > div.challengeInfo > div.summary")[idx])
    comicSummary[((i-1)*24)+idx+12] <- summary
    
    #웹툰 평점
    Grade<-html_text(html_nodes(text,"#content > div:nth-child(7) > table > tr > td > div.challengeInfo > div.rating_type > strong")[idx])
    comicGrade[((i-1)*24)+idx+12] <- Grade
  }
}

#데이터프레임
comic <- data.frame(comicName,comicSummary,comicGrade)
View(comic)
write.csv(comic,"navercomic.csv")




# for(idx in 0: 11){
#   #웹툰 이름
#   selectTitle <- paste0("#content > div:nth-child(5) > table > tbody > tr:nth-child(",idx%/%4+1,") > td:nth-child(",(idx%%3)*2+1,") > div.challengeInfo > h6 > a")
#   print(html_text(html_nodes(text,selectTitle)))
#   #comicName[idx+1] <- html_text(html_nodes(text,selectTitle))
# }



