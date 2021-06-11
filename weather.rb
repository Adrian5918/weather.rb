require 'http'

response = HTTP.get("http://api.openweathermap.org/data/2.5/weather?q=chicago&appid=#{ENV['OPEN_WEATHER_API_KEY']}&units=imperial")

data = response.parse(:json)

p data 

city_name = data['name']

p city_name

temperature = data['main']['temp']

p temperature