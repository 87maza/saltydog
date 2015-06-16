require 'rails_helper'

RSpec.describe UsersController, :type => :controller do
  it "should return index view for index method" do

    get :index

    expect(response).to render_template(:index)
  end

  it "should return index view for new method" do

    get :index

    expect(response).to render_template(:index)
  end

  it "new creates a new user" do
    get :new

    expect(assigns(:user)).to be_a_new(User)
  end

  it "redirects to users path with params" do
    user_params = FactoryGirl.attributes_for(:matching_pw)
    post :create, user: user_params
    expect(response).to redirect_to(:users)
  end

  it "redirects to users path with params" do
    user_params = {
        email: "test@@.com",
        password: ",./!#%^&*$@",
        password_confirmation: ",./!#%^@"
    }
    post :create, user: user_params
    expect(response).to redirect_to(:new_user)
  end



end
