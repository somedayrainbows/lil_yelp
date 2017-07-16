FactoryGirl.define do
  factory :restaurant do
    name "MyString"
    cuisine "MyString"
    city "MyString"
    state "MyString"
    zip 1
    user nil
  end
  factory :user do
    email "MyString"
    password_digest "MyString"
  end
end