Feature: managing the goals list

  As a user with many goals
  I want to be able to list and manage my goals
  So that I can track my progress and plan for the future

  Scenario: List all goals
    Given the following goals exist:
      | title   | description   |
      | goal 1 | description 1 |
      | goal 2 | description 2 |
      | goal 3 | description 3 |
    When I go to the Global goals page
    Then I should see the following goals:
      | Title   | Description   |
      | goal 1 | description 1 |
      | goal 2 | description 2 |
      | goal 3 | description 3 |
    And the title should be "adventureList | Global goals"
    And the heading should be "Global goals"

  Scenario: View a goal
    Given the following goal exists:
      | title   | description   |
      | goal 1  | description 1 |
    When I go to the Global goals page
    And I click the "Show" link
    Then I should see the following goal:
      | Title        | name 1        |
      | Description  | description 1 |
    And the title should be "adventureList | Global goal details"
    And the heading should be "Global goal details"
    When I click the "Back" link
    Then I should be on the Global goals page

  Scenario: Edit a goal
    Given the following goal exists:
      | title   | description   |
      | goal 1  | description 1 |
    When I go to the Global goals page
    And I click the "Edit" link
    Then I should see the following form fields:
      | Title        | name 1        |
      | Description  | description 1 |
    And the title should be "adventureList | Edit global goal"
    And the heading should be "Edit global goal"
