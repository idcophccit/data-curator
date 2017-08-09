Feature: Validate Column
  As a Data Packager
  I want to validate the data in a single column against the schema defined by the column properties
  So that I can focus on correcting errors a column at a time and not be confused by multiple error across multiple columns

  Schema validation checks include the:
  - data is the same 'type' and 'format' as defined in the column properties, ignoring 'missing values'
  - data conforms with the 'contraints'
  - 'foreign key' relationships to other tables have valid links

  See
  - Validation code https://github.com/frictionlessdata/tableschema-js
  - Validation errors messages (soon) https://github.com/frictionlessdata/data-quality-spec
  - soon... https://github.com/frictionlessdata/tableschema-js/issues/77

  Background:
    Given I have opened Data Curator
    And I have 1 data tab open
    And the cursor is in a column
    And column properties may have been entered for that column

  Scenario: Use the menu to validate a column
    When I select "Validate Column" from the menu
    Then assemble the Schema from the Column Properties
    And validate the column data against the available schema
    And display error messages
    And highlight errors in the relevant cells

  Scenario: Use the panel button to validate a column
    When I select "Validate" from the Column Properties panel
    Then assemble the Schema from the Column Properties
    And validate the column data against the available schema
    And display error messages
    And highlight errors in the relevant cells
