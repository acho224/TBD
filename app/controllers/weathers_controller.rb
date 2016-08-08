class WeathersController < ApplicationController
    # API_KEY = ENV["WUNDER_KEY"]

  def index
    url = "http://api.wunderground.com/api/799d1ab37e740ec2/conditions/q/90210.json"
    response = HTTParty.get(url)
    # puts response
    @weather_results = response['current_observation']
    # puts @weather_results
    puts @weather_results['display_location']['full']
    puts @weather_results['display_location']['zip']
    puts @weather_results['temp_f']
  end

end
