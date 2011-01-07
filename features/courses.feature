Feature: course management

  Background:
    Given I am logged in as an instructor

  Scenario: adding a course
    When I go to the courses page
    And I follow "Add a course"
    And I fill in the following:
      | course[department]             | STAT       |
      | course[number]                 | 110        |
      | course[section]                | 801        |
      | course[year]                   | 2010       |
      | course[registration_code]      | stats      |
    And I select "Spring I" from "course[semester_id]"
    And I press "Create"
    Then I should see "STAT 110-801, Spring I 2010"

  Scenario: updating a course
    Given a course
    When I go to the courses page
    And I follow "Edit course"
    And I fill in the following:
      | course[department]             | Statistics |
    And I press "Update"
    Then I should see "Statistics 110-801, Spring I 2010"
