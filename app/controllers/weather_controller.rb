class WeatherController < ApplicationController
  def index
    @capitals_weather = Weather.get_all_capitals_weather
    if params[:city]
      @weather = Weather.get_weather(params[:city])
    end
  end

  def show
    @city = params[:id]
    @weather = Weather.get_weather(@city)
    @forecast = Weather.get_forecast(@city)
  end
end
