require 'rails_helper'

RSpec.describe ApplicationController, :type => :controller do
  it "Checks that authrorize does work when there is a valid user"
  user_params = FactoryGirl.attributes_for(:matching_pw)

end
