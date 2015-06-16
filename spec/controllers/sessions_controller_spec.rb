require 'rails_helper'

RSpec.describe SessionsController, :type => :controller do
  it "should return new view for new method" do
    get :new
    expect(response).to render_template(:new)
  end

  it "new creates a new user" do
    get :new

    expect(assigns(:user)).to be_a_new(User)
  end


  it "logs in user with correct user name and password" do
    get :new

    expect(assigns(:user)).to be_a_new(User)
  end

  it "does NOT log in user with incorrect user name and password" do
    user_params = FactoryGirl.attributes_for(:matching_pw, email: "")
    post :create, user: user_params
    expect(response).to redirect_to(:new_session)
  end

  it "destroys the session when logging a user out" do
    delete :destroy
  expect(assigns(:user)).to be_nil
  end

  it "Should redirect to users page when logging a user out" do
    delete :destroy
    expect(response).to redirect_to(:users)
  end
end
