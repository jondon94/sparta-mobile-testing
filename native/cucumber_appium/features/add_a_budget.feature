Feature: I am able to add a budget
  As a user, I am able to adda budget

  Scenario: I am able to open the app
    Given I can open the app
    When I click on budget
    Then the budget page opens

  Scenario: I am able to add a budget
    Given I can open the app
    When I enter a budget
    And I save the budget
    Then the budget is saved
    And can be seen on the homepage
