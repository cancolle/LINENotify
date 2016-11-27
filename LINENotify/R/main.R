LINENotify <- function(token, LINEMessage) {
  url <- "https://notify-api.line.me/api/notify"
  body <- list(message=LINEMessage)
  LINEtoken <- paste("Bearer ", token, sep="")
  POST(url, add_headers(Authorization = LINEtoken),
       body = body, encode = "multipart", content_type = "application/x-www-form-urlencoded")
}
