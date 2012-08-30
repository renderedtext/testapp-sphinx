Feature: Doing things with products

  Scenario: Searching for products
    Given I am on the products page
    And there is a product "Smoki"
    And there is a product "Zele Zeka"
    And my indexes are up to date
    When I search for "smoki"
    Then I should see "Smoki"
    And I shouldn't see "Zele Zeka"
