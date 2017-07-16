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
    sequence(:email) { |n| Faker::Internet.email("sample#{n}") }
    password_digest "some_password"
  end
end
