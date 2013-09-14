class ApplicationController < ActionController::Base
  layout 'landing'
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def create_user_session(a_user)
    session[:user_id] = a_user.id
    #add any logic on login
  end
end
