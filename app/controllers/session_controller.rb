class SessionController < ApplicationController

  def login
    @user = User.new
  end


  def check_user
    user = User.find_by(email: params[:user][:email].downcase)
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      flash[:success] = "You have successfully logged in"
      redirect_to user_path(user)
    else
      @user = User.new(email: params[:user][:email])
      flash.now[:danger] = "Login incorrect"
      render 'login'
    end
  end

  def logout

  end

end
