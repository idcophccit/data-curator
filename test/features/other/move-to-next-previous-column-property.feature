Feature: Move to Next / Previous Column Properties Panel
  As a Data Packager
  I want to move sequentially through each column property panel
  So that I can efficiently set all the column properties

  Hide button rules:
  - If the cursor is in the first column, the previous button should be hidden
  - If the cursor is in the last column, the next button should be hidden
  - Do not show next or previous button in Table, Provenance or Data Package panels

  Scenario: Move to the next Column Properties panel
    When I select "Next" in a Properties panel
    Then display the next column properties panel
    And display the stored properties for that column

  Scenario: Move to the previous Column Properties panel
    When I select "Previous" in a Properties panel
    Then display the next column properties panel
    And display the stored properties for that column
