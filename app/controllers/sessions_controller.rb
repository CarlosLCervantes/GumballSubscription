class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:email].downcase, params[:password])
    if user
      create_user_session(user)
      redirect_to '/', :notice => "Logged in!"
    else
      @errors = ["Invalid email or password"]
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end