Feature: A place for every goal. Every goal in it's place.

  As a user with many goals
  In order to keep all my goals in one place
  I want to have a goals list

  Scenario:
    Given I am not logged in
    When I create an account
    Then an empty list should be created for me at the same time