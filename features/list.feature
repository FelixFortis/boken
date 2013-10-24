Feature: A place for every goal. Every goal in it's place.

  In order to keep all my goals in one place
  As a user with many goals
  I want to have a goals list as soon as I have an account

  Scenario: Creating a list alongside a user
    Given I am on the sign up page
    When I create an account
    Then I should be able to visit my list page

  Scenario: Listing goals on a user's list
    Given I am currently signed in
    When I visit my list page
    Then I should see my goals listed out