@backlog

Feature: Replace in table
  As a Data Packager
  I want to replace one or more values that have been found in a column
  So that I correct data errors quickly

  Scenario: Replace in table
    Given I have opened Data Curator
    And I have found one or more of the same value in a data tab
    When I select "Replace in table" from the menu
    And provide a replacement value
    Then replace the first value found in the table after the current cursor position with the replacement value

  Scenario: Replace All in table
    Given I have opened Data Curator
    And I have found one or more of the same values in a data tab
    When I select "Replace All in table" from the menu
    And provide a replacement value
    Then replace the all found values in the table with the replacement value
