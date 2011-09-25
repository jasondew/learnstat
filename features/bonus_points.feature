Feature: bonus points

  Background:
    Given a course with the following students:
      | id | first_name | last_name |
      | 42 | John       | Doe       |
      | 43 | Mary       | Smith     |
    And I am logged in as an instructor

  Scenario: entering bonus points for all students
    When I go to the bonus points page
    And I fill in the following:
      | bonus_points[42] |  7 |
      | bonus_points[43] | 10 |
    And I press "Save"

    Then I should see a success message
    And the "bonus_points[42]" field should contain "7"
    And the "bonus_points[43]" field should contain "10"

    When I go to the gradebook page
    Then I should see "7"
    And I should see "10"
