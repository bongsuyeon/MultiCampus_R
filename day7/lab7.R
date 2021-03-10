install.packages('rvest')
install.packages('XML')
install.packages('httr')

library(rvest)
library(XML)
library(httr)


url <- "http://unico2013.dothome.co.kr/crawling/exercise_bs.html"
text <- read_html(url)
text
new_text<-list()

#(Find) h1
new_text<-append(new_text, html_text(html_nodes(text, "h1")) )


#(Find)  a href
a <- html_nodes(text, "a")
href <- html_attr(a, "href") # 태그 선택자
new_text[[length(new_text)+1]] <- c(href)

#(Find)  img
img <- html_nodes(text, "img")
src <- html_attr(img, "src") # 태그 선택자
new_text <- append(new_text,src)

#(Find)  h2[1]
h2 <- html_text(html_nodes(text, "h2")[1])
new_text <- append(new_text,h2)

#(Find) ul
li<-html_nodes(text, "ul>li")
li_num<-grep("green",html_attr(li,"style"))
new_text <- append(new_text, html_text(li[li_num]) )

#style<-(html_nodes(text, "li"),"style")
#grep("green",style)

#(Find)  h2[2]
h2_2 <- html_text(html_nodes(text, "h2")[2])
new_text <- append(new_text,h2_2)


#(Find) ul
oli<-html_text(html_nodes(text, "ol>li"))
new_text[[length(new_text)+1]] <- c(oli)


#(Find) table
new_text[[length(new_text)+1]] <-c(html_text(html_nodes(text,"table *")))


#(Find) table class
class <- html_text(html_nodes(text,".name"))
new_text<- append(new_text, class)

#(Find) table id
id<- html_text(html_nodes(text,"#target"))
new_text<- append(new_text, id)


new_text
