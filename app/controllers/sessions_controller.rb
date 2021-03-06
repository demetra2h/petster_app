class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "You're in!"
    else
      flash.now.alert = "You gotta try again"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:message] = "You logged out"
    redirect_to root_path
  end


end
