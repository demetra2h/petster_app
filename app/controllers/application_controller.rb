class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

private

helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find_find_by_id(session[:user_id]) if session[:user_id]
  end

  def authorize
    redirect_to login_path, alert: "You gotta be logged in to do that" if current_user.nil?
  end

end
