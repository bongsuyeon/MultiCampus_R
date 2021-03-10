library(RSelenium)

remDr <- remoteDriver(remoteServerAddr = "localhost" , port = 4445, browserName = "chrome")
remDr$open()

remDr$navigate("https://hotel.naver.com/hotels/item?hotelId=hotel:Shilla_Stay_Yeoksam&destination_kor=%EC%8B%A0%EB%9D%BC%EC%8A%A4%ED%85%8C%EC%9D%B4%20%EC%97%AD%EC%82%BC&rooms=2")
Sys.sleep(10)

naverhotel<-NULL
repeat{
  #리뷰 내용 읽어오기
  ReviewNodes<-remDr$findElements(using ="css selector","div.review_desc > p")
  naverhotel <- append(naverhotel,sapply(ReviewNodes,function(x){x$getElementText()}))
  Sys.sleep(8)

  #다음 버튼 클릭
  DaumBtn <- remDr$findElement(using='css selector','div.review_ta.ng-scope > div.paginate > a.direction.next')
  DaumBtn$clickElement()
  
  Sys.sleep(1)

  #마지막이면 나가기
  if(DaumBtn$getElementAttribute("class") == "direction next disabled"){
    print("완료")
    break;
  }
}
naverhotel_vector<- unlist(naverhotel)
write.table(naverhotel_vector,file="R/day9/naverhotel.txt",quote=FALSE,append = FALSE,eol = "\n")


