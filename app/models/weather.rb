class Weather < ApplicationRecord
  require "net/http"
  require "json"

  CAPITAL_CITIES = [
    "Beijing",     # 中国
    "Tokyo",       # 日本
    "London",      # 英国
    "Paris",       # 法国
    "Washington",  # 美国
    "Berlin",      # 德国
    "Moscow",      # 俄罗斯
    "Rome",        # 意大利
    "Ottawa",      # 加拿大
    "Canberra"     # 澳大利亚
  ]

  def self.get_weather(city)
    api_key = "9b78c8134756b6d17952ec490e1390c1"
    url = "http://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=#{api_key}&units=metric"

    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  rescue JSON::ParserError, URI::InvalidURIError, SocketError => e
    Rails.logger.error("Error fetching weather: #{e.message}")
    nil
  end

  def self.get_all_capitals_weather
    CAPITAL_CITIES.map do |city|
      get_weather(city)
    end.compact
  end

  def self.get_forecast(city)
    api_key = "9b78c8134756b6d17952ec490e1390c1"
    url = "http://api.openweathermap.org/data/2.5/forecast?q=#{city}&appid=#{api_key}&units=metric"

    uri = URI(url)
    response = Net::HTTP.get(uri)
    JSON.parse(response)
  rescue JSON::ParserError, URI::InvalidURIError, SocketError => e
    Rails.logger.error("Error fetching forecast: #{e.message}")
    nil
  end
end
