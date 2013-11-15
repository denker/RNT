require "open-uri"
url = 'http://littlesms.ru/api/message/send?user=tim.zuev@gmail.com&recipients=79201112500&message=New%20request%20on%20renewtext.ru&test=1&apikey=667sbE'
puts sdata = URI.parse(url).read