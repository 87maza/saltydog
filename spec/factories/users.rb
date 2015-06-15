FactoryGirl.define do

##GENERAL

#   FactoryGirl.define do
#     sequence :email do |n|
#       "person#{n}@example.com"
#     end
#   end
#
#   generate :email
# # => "person1@example.com"
#
#   generate :email
# # => "person2@example.com"


  factory :null_email, class: User do

    email nil
    password "password"

  end

  factory :valid_email, class: User do

    email "test@test.com"
    password "password"

  end

  factory :max_char_email, class: User do

    email "asklaasdfasdasfasdasdfasfdasdfasdfasdfasdfasfdasdfasdfasdfasdfasdfasdfaweawfawefawefawefasdfasfdasdfasdfasdfasdfasfasdfasdfasdfasdfasdfasdaweFAWfasdfasdfasfdaasdfaewaefawefawegawefasawegafeawesdfawe"
    password "password"

  end

  factory :null_pw, class: User do
    email "test@test.com"
    password nil
  end
  factory :max_char_pw, class: User do
    email "test@test.com"
  password "asklaasdfasdasfasdasdfasfdasdfasdfasdfasdfasfdasdfasdfasdfasdfasdfasdfaweawfawefawefawefasdfasfdasdfasdfasdfasdfasfasdfasdfasdfasdfasdfasdaweFAWfasdfasdfasfdaasdfaewaefawefawegawefasawegafeawesdfawe"
  end

  factory :at_least_6_pw, class: User do
    email "test@test.com"
    password "123456$"
  end

  factory :one_spec_char, class:User do
    email "test@test.com"
    password ",./!#%^&*$@"

  end

  factory :matching_pw, class: User do
    email "test@test.com"
    password ",./!#%^&*$@"
    password_confirmation ",./!#%^&*$@"
  end

  factory :mismatch_pw, class: User do
    email "test@test.com"
    password ",./!#%^&*$@"
    password_confirmation ",./!#%^&*$@111"
  end

 end