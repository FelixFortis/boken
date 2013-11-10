Given(/^I am currently logged in$/) do
  visit new_user_registration_path
  fill_in 'Username', with: 'Test'
  fill_in 'Email', with: 'test@example.com'
  fill_in 'user_password', with: 'abc12345'
  fill_in 'user_password_confirmation', with: 'abc12345'
  click_button 'Submit sign up'
end

When(/^I create a goal with the title "([^"]*)" and the description "([^"]*)"$/) do |title, desc|
  GlobalGoal.create!(title: "#{title}", description: "#{desc}")
end

When(/^I visit my list page$/) do
  # save_and_open_page
  click_link 'My goals'
end

Then(/^I should see that goal listed$/) do |expected_table|
  # save_and_open_page
  actual_table = [
      ['Title', 'Test 1 name'],
      ['Description', 'Test 1 description']]
  expected_table.diff!(actual_table)
end