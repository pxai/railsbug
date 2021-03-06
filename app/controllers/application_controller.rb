class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  def current_user
    # Go to DB just once, if @current_user is not set
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  
  def logged_in?
    !!current_user  # !! bang-bang, converts anything to boolean
  end


  def require_user
    if !logged_in?
      flash[:danger] = "You must be logged in to perform that action"
      redirect_to root_path
    end
  end

  def require_admin
    if !logged_in?
      flash[:danger] = "You must be admin to perform that action"
      redirect_to root_path
    end
  end

end
