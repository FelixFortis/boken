Given(/^I am currently signed in$/) do
  visit new_user_session_path
  fill_in 'Username', with: 'ininitehorses'
  fill_in 'Password', with: 'abc12345'
  click_button 'Login'
end

When(/^I create a goal with the title "([^"]*)" and the description "([^"]*)"$/) do |title, desc|
  GlobalGoal.create!(title: "#{title}", description: "#{desc}")
end

When(/^I visit my list page$/) do
  visit profile_user_goals_path(profile)
end

Then(/^I should see that goal listed$/) do |expected_table|
  # save_and_open_page
  actual_table = [
      ['Title', 'Test 1 name'],
      ['Description', 'Test 1 description']]
  expected_table.diff!(actual_table)
end