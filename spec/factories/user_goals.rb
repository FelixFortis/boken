# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user_goal do
    user_id 1
    goal_id 1
    notes "MyText"
    deadline "2013-10-27"
    percent_complete 1
    complete false
  end
end
