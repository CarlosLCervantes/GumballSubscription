class UsersController < ApplicationController
   skip_before_filter :verify_authenticity_token, :only => [:new_access]

  def access
    
  end

  def new_access
    email = params[:email].downcase
    @lead = Lead.new(email: email)

    respond_to do |format|
      @lead.save
      format.js #@lead
    end
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(email: params[:user][:email].downcase, password: params[:user][:password])
    if @user.save
      create_user_session(@user)
      redirect_to '/', :notice => "Signed up!"
    else
      render "new"
    end
  end

  def forgot_password
  end

  def reset_password
    @user = User.find_by_email(params[:email].downcase)
    if @user
      @user.send_password_reset
      @quick_message = "Check your e-mail for a password reset link!"
      render "quick_message"
    else
      @errors = [ "That e-mail doesn't exist here!" ]
      render "forgot_password"
    end
  end

  def edit_password
    if session[:user_id]
      @user = current_user
    elsif params[:reset_token]
      @reset_token = params[:reset_token]
      @user = User.find_by_password_reset_token(params[:reset_token])
      if @user.nil?
        @errors = [ "Invalid reset token." ]
      elsif @user.password_reset_sent_at < 2.hours.ago
        @errors = [ "Reset token expired." ]
      end
    else
      redirect_to '/'
    end
  end

  def save_password
    if session[:user_id]
      @user = current_user
    elsif params[:reset_token]
      @user = User.find_by_password_reset_token(params[:reset_token])
    end
    @errors = ["Password can't be blank"] if params[:password].blank? || params[:password_confirmation].blank?
    @errors = ["Passwords don't match."] if params[:password] != params[:password_confirmation]
    @errors = ["Reset token expired."] if !@user || @user.password_reset_sent_at < 2.hours.ago
    if !@errors
      @user.password=params[:password]
      @user.save!
      create_user_session(@user)
      redirect_to '/'
    else
      render "edit_password"
    end
  end

end