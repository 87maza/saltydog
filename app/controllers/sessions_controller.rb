class SessionsController < ApplicationController

  #return a new user for our form inside the 'new' view
  def new
    @user = User.new
  end

  # def create
  #   user = User.where( email: user_params[:email]).first
  #
  #   if user && user.authenticate(user_params[:password])
  #     session[:user_id] = user.id
  #
  #     flash[:success] = 'you are signed in!'
  #     redirect_to users_path
  #   else
  #     #redirect back to the page
  #     flash[:error] = 'unable to sign you in'
  #
  #     redirect_to new_session_path
  #   end
  # end
  def create
    user = User.where( email: params[:user][:email] ).first
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      flash["alert-success"] = "Feel a disturbance in the Force, you have been logged in."
      redirect_to users_path(user)
    else
      flash["alert-warning"] = "Improper login, please try again"
      redirect_to new_session_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:error] = 'You have been logged out'
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:email,:password)
  end



end