Feature: Save As Tab separated value file
  As an Data Packager
  I want to save the data changes in the active data tab as a comma separated value file
  In order to save the data to a different filename, location or CSV dialect.

  - The file extension of the saved file must be .tsv
  - The Save As Tab separated command can be invoked by a menu item

  Scenario: Save As Comma separated value file
    Given I have opened Data Curator
    And I have opened 1 data tab
    When I invoke the "Save As Tab separated" command
    Then a prompt, requesting the filename and location is displayed
    And the data is saved at the filename.tsv and location
    And set the 'delimiter' to '\t' in the Table CSV Dialect
