Feature: Complex Navigation

  Scenario: Navigating to test site
    Given I have a browser open to "https://www.thetestroom.com/webapp/index.html"
    When Find the element by id "adoption_link"
    Then I see the test "Adoption" page
    Then I close the complex browser


  Scenario: Navigating to github test site
    Given I have a browser open to "https://github.com/anidesai1"
#    When Find the element by id "repositories-tab"
    Then I see the test "Ani" page
    Then I close the complex browser

  Scenario Outline: Navigation to different test sites
    Given I have a browser open to <url_address>
    When Find the element by id <id>
    Then I see the test <title> page
    Then I close the complex browser

    Examples:
      |url_address                                           | title         | id    |
      | "http://fairfieldco.com"                             | "Fairfield"   | "DrpDwnMn11label" |
#      | "http://www.google.com"                              | "New Tab"     | "block"              |
      | "https://www.thetestroom.com/webapp/index.html"      |"Adoption"     | "adoption_link"             |


