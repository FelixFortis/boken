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
    When I go to the Global goals page
    Then I should see the following goals:
      | Name   | Description   | Complete |
      | goal 1 | description 1 | true     |
      | goal 2 | description 2 | false    |
      | goal 3 | description 3 | true     |
    And the title should be "adventureList | Global goals"
    And the heading should be "Global goals"

  Scenario: View a goal
    Given the following goal exists:
      | name   | description   | complete |
      | goal 1 | description 1 | true     |
    When I go to the Global goals page
    And I click the "Show" link
    Then I should see the following goal:
      | Name        | name 1        |
      | Description | description 1 |
      | Complete    | true          |
    And the title should be "adventureList | Goal details"
    And the heading should be "Goal details"
    When I click the "Back" link
    Then I should be on the Global goals page

  Scenario: Edit a goal
    Given the following goal exists:
      | name   | description   | complete |
      | goal 1 | description 1 | true     |
    When I go to the Global goals page
    And I click the "Edit" link
    Then I should see the following form fields:
      | Name        | name 1        |
      | Description | description 1 |
      | Complete    | true          |
    And the title should be "adventureList | Edit goal"
    And the heading should be "Edit goal"
