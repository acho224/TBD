class ClosetsController < ApplicationController

  def index
    # @my_tops = Top.where(user_id: session[:user_id]).pluck(:url)
    # @my_bottoms = Bottom.where(user_id: session[:user_id]).pluck(:url)

    @my_tops = Top.where(user_id: session[:user_id])
    @my_bottoms = Bottom.where(user_id: session[:user_id])
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
      render :json => Bottom.last
    end
  end

  def destroy
    puts params

    @top = Top.find(params[:id])
    # @bottom = Bottom.find(params[:id])
    @top.destroy
    # @bottom.destroy
    redirect_to '/closet'
  end

end
