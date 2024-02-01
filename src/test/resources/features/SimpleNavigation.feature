Feature: Simple Navigation

  Scenario: Navigate to Barclays
    Given I have a browser open
    When I navigate to "https://home.barclays/"
    Then I see the "Barclays" page