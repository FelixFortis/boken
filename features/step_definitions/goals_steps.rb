Given(/^the following goals exist:$/) do |goals|
  Goal.create!(goals.hashes)
end

When(/^I go to the Goals page$/) do
  visit goals_path
end

Then(/^I should see the following goals:$/) do |expected_table|
  actual_table = [
      ['Name', 'Description', 'Complete'],
      ['goal 1', 'description 1', 'true'],
      ['goal 2', 'description 2', 'false'],
      ['goal 3', 'description 3', 'true']]
  expected_table.diff!(actual_table)
end

Then(/^the title should be "([^"]*)"$/) do |page_name|
  page.should have_title page_name
end

Then(/^the heading should be "([^"]*)"$/) do |page_name|
  find('h1').should have_content page_name
end

When(/^I click the "([^"]*)" link in the third row$/) do |arg|
  click_link('Show')[2]
end

Then(/^I should see the following goal:$/) do |expected_table|
  actual_table = [
      ['Name', 'name 3'],
      ['Description', 'description 3'],
      ['Complete', 'true']]
  expected_table.diff!(actual_table)
end

When(/^I click the 'Back' link$/) do
  click_link 'Back'
end

Then(/^I should be on the goals page$/) do
  page.should have_title 'adventureList | Gobal goals'
  find('h1').should have_content 'Global goals'
end