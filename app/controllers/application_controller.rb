class ApplicationController < ActionController::Base


  helper_method :current_user

  protected
  #this is where we create a method that returns a logged in user. 
  #This method will at first attempt to return the current user,
  #this is the @user part. The || says: OR if the @user doesn't exist, assign the result of User.find...
  #to @user, BUT, only attempt the User.find if there is a :user_id stored in the session. 
  def current_user
    @current_user ||= User.find session[:user_id]  if session[:user_id]
  end

end