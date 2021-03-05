library(rvest)
library(XML)
library(httr)

url <- "http://media.daum.net/ranking/popular/"
text <- read_html(url)

newstitle<-NULL; newspapername<-NULL

for(idx in 1: 50){
   #뉴스 타이틀
   selectTitle <- paste0("#mArticle > div.rank_news > ul.list_news2 > li:nth-child(",idx,") > div.cont_thumb > strong > a")
   newstitle[idx] <- html_text(html_nodes(text,selectTitle))
   #뉴스사
   selectName <- paste0("#mArticle > div.rank_news > ul.list_news2 > li:nth-child(",idx,") > div.cont_thumb > strong > span")
   newspapername[idx] <- html_text(html_nodes(text,selectName))
   
}
#데이터프레임
newsCrawl <- data.frame(newstitle,newspapername)
write.csv(newsCrawl,"output/daumnews.csv")