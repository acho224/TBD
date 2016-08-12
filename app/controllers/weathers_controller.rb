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

      if current_user
        @top_img_path = dress_top(@weather_results)
        @bottoms_img_path = dress_bottom(@weather_results)
        Rails.logger.debug("url = #{@top_img_path}")
        Rails.logger.debug("url2 = #{@bottoms_img_path}")
      end
      # puts @weather_results['display_location']['full']
      # puts @weather_results['icon_url']
      # puts @weather_results['temp_f']
      # puts @weather_results['weather']
      # puts @precipitation
    respond_to do |format|
      format.js
      end
    end
  end

  def dress_top(weather)
    user = User.find(session[:user_id])
    ret=""
    if weather
      puts weather["feelslike_f"]
      # conditional statement for hot, middle, cool temp
      if weather["feelslike_f"].to_i >= user.hottemp
        tops = user.tops.where(weather: 'hot')[0]
        ret = tops ? tops.url : ""
        Rails.logger.debug("tops = #{tops.inspect}")
      elsif weather["feelslike_f"].to_i <= user.coldtemp
        tops = user.tops.where(weather: 'cold')[0]
        ret = tops ? tops.url : ""
        Rails.logger.debug("tops= #{tops.inspect}")
      else tops = user.tops.where(weather: 'comfortable')[0]
        ret = tops ? tops.url : ""
        Rails.logger.debug("tops= #{tops.inspect}")
      end
    end
    ret
  end

  def dress_bottom(weather)
    user = User.find(session[:user_id])
    ret=""
    if weather
      puts weather["feelslike_f"]
      # conditional statement for hot, middle, cool temp
      if weather["feelslike_f"].to_i >= user.hottemp
        bottoms = user.bottoms.where(weather: 'hot')[3]
        ret = bottoms ? bottoms.url : ""
        Rails.logger.debug("bottoms = #{bottoms.inspect}")
      elsif weather["feelslike_f"].to_i <= user.coldtemp
        bottoms = user.bottoms.where(weather: 'cold')[0]
        ret = bottoms ? bottoms.url : ""
        Rails.logger.debug("bottoms = #{bottoms.inspect}")
      else bottoms = user.bottoms.where(weather: 'comfortable')[0]
        ret = bottoms ? bottoms.url : ""
        Rails.logger.debug("bottoms = #{bottoms.inspect}")
     end
    end
    ret
  end

end










