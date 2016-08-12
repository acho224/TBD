class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to '/weather'
    else
      redirect_to '/signup'
    end
  end


  private
  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password, :hottemp, :coldtemp, :gender)
  end

  def index
  end

  def show
  end
end
