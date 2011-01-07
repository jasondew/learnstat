Feature: announcements
  As an instructor I should be able to post announcements
  and the students in the class should see them.

  Background:
    Given a course with the following students:
      | first_name | last_name |
      | John       | Doe       |
    And I am logged in as an instructor

  Scenario: an instructor adding an announcement and a student viewing
    When I go to the announcements page
    And I follow "Add an announcement"
    And I fill in the following:
      | announcement[title] | Some announcement  |
      | announcement[body]  | This is important! |
    And I press "Create"
    Then I should see a success message
    And I should see "Some announcement"
    When I am logged in as a student in the course
    Then I should see "Some announcement"
