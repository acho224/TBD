class ClosetsController < ApplicationController

  def index
    @my_tops = Top.where(user_id: session[:user_id]).pluck(:url)
    @my_bottoms = Bottom.where(user_id: session[:user_id]).pluck(:url)
    # puts @my_tops
    # puts @my_bottoms
  end


  def destroy
    @top.destroy

  end

end
