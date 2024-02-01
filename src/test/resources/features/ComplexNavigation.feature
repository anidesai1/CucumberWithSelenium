Feature: Complex Navigation

  Scenario: Navigating to test site
    Given I have a browser open to "https://www.thetestroom.com/webapp/index.html"
    When Find the element by id "adoption_link"
    Then I see the test "Adoption" page
    Then I close the complex browser