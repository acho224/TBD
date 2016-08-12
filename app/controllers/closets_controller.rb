class ClosetsController < ApplicationController

  def index
    @my_tops = Top.where(user_id: session[:user_id]).pluck(:url)
    @my_bottoms = Bottom.where(user_id: session[:user_id]).pluck(:url)
    # puts @my_tops
    # puts @my_bottoms
  end

  def create
    item = {user_id: session[:user_id], url: params[:url], length: params[:length], weather: params[:weather]}
    if params[:table] == "Top"
      Top.create item
      render :json => Top.last
    else
      Bottom.create item
      render :json => Top.last
    end
  end

  def destroy
    @top.destroy

  end

end
