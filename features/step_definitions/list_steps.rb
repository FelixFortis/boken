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
  visit user_list_path(user)
end