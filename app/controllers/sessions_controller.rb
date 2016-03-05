class SessionsController < ApplicationController

  before_action :require_session, :only => [:destroy]

  def new
  end

  def create
    if user = User.find_by(:email => params[:email])
      if user.authenticate(params[:password])
        log_in_user(user)
        redirect_to root_url, :notice => "Welcome back #{user.name}."
      else
        flash[:error] = 'Password incorrect.'
        render :new
      end
    else
      flash[:error] = 'Email address not found.'
      render :new
    end
  end

  def destroy
    log_out_user
    redirect_to root_url, :notice => "You've been logged out."
  end

end
