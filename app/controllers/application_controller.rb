class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  helper_method :logged_in?, :current_user

  def logged_in?
    current_user.present?
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def log_in_user(user)
    session[:user_id] = user.id
  end

  def log_out_user
    reset_session
  end

  def require_session
    unless logged_in?
      flash[:error] = 'You must be logged in to do that!'
      redirect_to new_session_url
    end
  end

end
