Given(/^the following goals exist:$/) do |goals|
  Goal.create!(goals.hashes)
end

Given(/^the following goal exists:$/) do |goals|
  Goal.create!(goals.hashes)
end

When(/^I go to the Global goals page$/) do
  visit goals_path
#  save_and_open_page
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

When(/^I click the "([^"]*)" link$/) do |arg|
  click_link "#{arg}"
end

Then(/^I should see the following goal:$/) do |expected_table|
  # save_and_open_page
  actual_table = [
      ['Name', 'name 1'],
      ['Description', 'description 1'],
      ['Complete', 'true']]
  expected_table.diff!(actual_table)
end

Then(/^I should be on the Global goals page$/) do
  page.should have_title 'adventureList | Global goals'
  find('h1').should have_content 'Global goals'
end