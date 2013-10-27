Feature: Additional user info shared with other users

  In order to keep all my public user information in one place
  As a user
  I want to have a profile page

  Scenario: Creating a profile alongside a user
    Given I am on the sign up page
    When I create an account
    Then I should be able to visit my profile page