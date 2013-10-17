Given(/^I am on the sign up page$/) do
  visit new_user_registration_path
end

When(/^I create an account$/) do
  fill_in 'Username', with: 'Test'
  fill_in 'Email', with: 'test@example.com'
  fill_in 'Password', with: 'abc12345'
  fill_in 'Password confirmation', with: 'abc12345'
  click_button 'Submit sign up'
end

Then(/^an empty list should be created for me at the same time$/) do
  pending
end