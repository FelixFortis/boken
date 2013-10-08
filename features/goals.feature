Feature: managing the goals list

  As a user with many goals
  I want to be able to list and manage my goals
  So that I can track my progress and plan for the future

  Scenario: List all goals
    Given the following goals exist:
      | name   | description   | complete |
      | goal 1 | description 1 | true     |
      | goal 2 | description 2 | false    |
      | goal 3 | description 3 | true     |
    When I go to the Goals page
    Then I should see the following goals:
      | Name   | Description   | Complete |
      | goal 1 | description 1 | true     |
      | goal 2 | description 2 | false    |
      | goal 3 | description 3 | true     |
    And the title should be "Global goals"
    And the heading should be "Global goals"