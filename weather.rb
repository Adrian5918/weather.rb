require 'http'

response = HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=chicago&units=imperial&appid=")

data = response.parse(:json)

p data 

city_name = data['name']
 p city_name
