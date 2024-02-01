Feature: Test the contact form alert

  Scenario: Alert appears when no name is entered
    Given I am on the zoo website
    When I click on the contact link
    And I click on the submit button
    Then an alert window appears
    Then I close the alert