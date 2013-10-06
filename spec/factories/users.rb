# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:username) { |n| "buns#{n}" }
    email { "#{username}@example.com" }
    password "abc12345"
  end
end
