Given(/^I am on the sign up page$/) do
  visit new_user_registration_path
end

When(/^I create an account$/) do
  fill_in 'Username', with: 'Test'
  fill_in 'Email', with: 'test@example.com'
  fill_in 'user_password', with: 'abc12345'
  fill_in 'user_password_confirmation', with: 'abc12345'
  click_button 'Submit sign up'
end

Then(/^I should be able to visit my list page$/) do
  visit user_list_path(current_user)
end

Given(/^I am currently signed in$/) do
  visit new_user_session_path
  fill_in 'Username', with: 'ininitehorses'
  fill_in 'Password', with: 'abc12345'
  click_button 'Login'
end

When(/^I visit my list page$/) do
  pending
end
Then(/^I should see my goals listed out$/) do
  pending
end
When(/^I create a goal with the name "([^"]*)" and the description "([^"]*)"$/) do |name, desc|
  Goal.create!(name: "#{name}", description: "#{desc}", complete: false)
end
Then(/^I should see that goal on my list page$/) do |expected_table|
  visit user_list_path(current_user)
  # save_and_open_page
  actual_table = [
      ['Name', 'Test 1 name'],
      ['Description', 'Test 1 description'],
      ['Complete', 'false']]
  expected_table.diff!(actual_table)
end
