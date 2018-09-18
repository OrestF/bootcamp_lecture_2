
require 'net/http'
require 'uri'
require 'json'

class Weather
  attr_reader :city
  def initialize(city)
    @city = city
  end

  def open(url)
    Net::HTTP.get(URI.parse(url))
  end

  def read
    JSON.parse(open("https://www.metaweather.com/api/location/search/?query=#{city}"))
  end
end
