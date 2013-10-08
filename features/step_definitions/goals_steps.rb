Given(/^the following goals exist:$/) do |goals|
  Goal.create!(goals.hashes)
end
When(/^I go to the Global goals page$/) do
  visit goals_path
end
Then(/^I should see the following goals:$/) do |expected_table|
  actual_table = [
      ['goal 1', 'description 1', 'true'],
      ['goal 2', 'description 2', 'false'],
      ['goal 3', 'description 3', 'true']]
  expected_table.diff!(actual_table)
end
Then(/^the title should be "([^"]*)"$/) do |page_name|
  find('title').should have_content page_name
end
Then(/^the heading should be "([^"]*)"$/) do |page_name|
  find('h1').should have_content page_name
end