url <- "http://unico2013.dothome.co.kr/crawling/exercise_bs.html"
html <- read_html(url)

h1 <- html_node(html, "h1")
h1_content <- html_text(h1)
h1_content

a <- html_nodes(html, "a")
a_href <- html_attr(a, "href")
a_href

img <- html_node(html, "img")
img_src <- html_attr(img, "src")
img_src

h2_1 <- html_nodes(html, "h2:nth-of-type(1)")
h2_1_content <- html_text(h2_1)
h2_1_content

li <- html_nodes(html, "ul>li[style$='green']")
li_content <- html_text(li)
li_content

h2_2 <- html_nodes(html, "h2:nth-of-type(2)")
h2_2_content <- html_text(h2_2)
h2_2_content

ol_child <- html_nodes(html, "ol>*")
ol_child_content <- html_text(ol_child)
ol_child_content

table_child <- html_nodes(html, "table *")
table_child <- html_text(table_child)
table_child

tr_name <- html_nodes(html, "tr.name")
tr_name_content <- html_text(tr_name)
tr_name_content

td_target <- html_nodes(html, "td#target")
td_target_content <- html_text(td_target)
td_target_content

