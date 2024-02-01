Feature: Simple Navigation

  Scenario: Navigate to Barclays
    Given I have a browser open
    When I navigate to "https://home.barclays/"
    Then I see the "Barclays" page
    Then I close the browser

  Scenario Outline: More navigation tests
    Given I have a browser open
    When I navigate to <url_address>
    Then I see the <page_title> page
    Then I close the browser

    Examples:
      |url_address                | page_title      |
      | "http://fairfieldco.com"  | "Fairfield"     |
      | "http://www.google.com"   | "Google"        |