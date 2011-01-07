Feature: roster
  As an instructor I should be able to view the
  students in the class.

  Background:
    Given a course with the following students:
      | first_name | last_name |
      | John       | Doe       |
      | Jane       | Dane      |
    And I am logged in as an instructor

  Scenario:
    When I go to the roster page
    Then I should see "John Doe"
    And I should see "Jane Dane"
