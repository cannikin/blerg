class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  helper_method :logged_in?, :current_user

  def logged_in?
    false
  end

  def current_user
    User.first
  end

  def require_session
    unless logged_in?
      flash[:error] = 'You must be logged in to do that!'
      redirect_to new_session_url
    end
  end

end
