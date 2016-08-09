class WeathersController < ApplicationController
    # API_KEY = ENV["WUNDER_KEY"]

  def index
    # @weather_results = 'poop'
    key = ENV['WUNDER_KEY']
    if params[:zipcode]
      url = "http://api.wunderground.com/api/#{key}/conditions/q/#{params[:zipcode]}.json"
      url2 = "http://api.wunderground.com/api/#{key}/forecast/q/#{params[:zipcode]}.json"
      response = HTTParty.get(url)
      response2 = HTTParty.get(url2)
      @weather_results = response['current_observation']
      @precipitation = response2['forecast']['txt_forecast']['forecastday'][0]['pop']

      puts @weather_results['display_location']['full']
      puts @weather_results['icon_url']
      puts @weather_results['temp_f']
      puts @weather_results['weather']
      puts @precipitation

    respond_to do |format|
      format.js
      end
    end
  end
end
