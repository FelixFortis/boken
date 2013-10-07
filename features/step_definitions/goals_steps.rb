Given(/^the following goals:$/) do |table|
  Goal.create!(goals.hashes)
end
When(/^I go to the Global goals page$/) do
  visit global_goals_path
end
Then(/^I should see the following goals:$/) do |expected_table|
  actual_table = goals.all
  expected_table.diff!(actual_table)
end
Then(/^the title should be "([^"]*)"$/) do |page_name|
  find('title').should have_content page_name
end
Then(/^the heading should be "([^"]*)"$/) do |page_name|
  find('h1').should have_content page_name
end