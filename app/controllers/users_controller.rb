class UsersController < ApplicationController

    def new
      @user = User.new
    end

    def create
      user = User.create(user_params)
      if user.valid?
        #User.create creates new user, and saves to db
        flash[:success] = "There's a disturbance in the force, welcome #{user.email}"
        #flash is a way to show the user a successful login message
        redirect_to users_path
      else
        flash[:error] = 'unable to sign you in'
        redirect_to new_user_path
      end
    end


    private

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
      #permitting only email pw, pw, confirmation, aka WHITELISTING, specifying what parameters needed
      #do not assign direct
    end
  end
