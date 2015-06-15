require 'rails_helper'

RSpec.describe User, :type => :model do



  context "email" do

      it "must be unique" do
        user1 = FactoryGirl.create(:valid_email)
        user2 = FactoryGirl.build(:valid_email)

        expect(user2.save).to be false
      end

      it "must be present" do
        expect(FactoryGirl.build(:null_email).save).to be false
      end

      it "has a 100 max character limit" do
        expect(FactoryGirl.build(:max_char_email).save).to be false
      end

      it "must be a valid email" do
        expect(FactoryGirl.build(:valid_email).save).to be true
      end
  end

  context "password" do
      it "must be present" do
        expect(FactoryGirl.build(:null_pw).save).to be false
      end

      it "has a 100 max character limit" do
        expect(FactoryGirl.build(:max_char_pw).save).to be false
      end

      it "has at least 6 characters" do
        expect(FactoryGirl.build(:at_least_6_pw).save).to be true
      end

      it "has at least 1 special character" do
        expect(FactoryGirl.build(:one_spec_char).save).to be true
      end

      it "matches password confirmation" do
        expect(FactoryGirl.build(:matching_pw).save).to be true
      end

      it "errors for mismatched passwords" do
        expect(FactoryGirl.build(:mismatch_pw).save).to be false
      end
  end


  end

