Feature: A place for every goal. Every goal in it's place.

  In order to keep all my goals in one place
  As a user with many goals
  I want to have a goals list as soon as I have an account

  Scenario: Creating a list alongside a user
    Given I am on the sign up page
    When I create an account
    Then I should be able to visit my list page

  Scenario: Adding goals to my list via goal creation
    Given I am currently signed in
    When I create a goal with the name "Test 1 name" and the description "Test 1 description"
    Then I should see that goal on my list page

#  Scenario: Adding goals to my list via button click
#    Given I am currently signed in
#    When I visit the global goals page
#    And I click the "Add goal" link on the first goal
#    Then I should see that goal on my list page

#  Scenario: Listing goals on a user's list
#    Given I am currently signed in
#    When I visit my list page
#    Then I should see my goals listed out