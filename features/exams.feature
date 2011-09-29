Feature: exams
  As an instructor I should be able to add exams
  and the students grades.  The students should be
  able to view information about the exam along
  with their score.

  Background:
    Given a course with the following students:
      | first_name | last_name |
      | John       | Doe       |
      | Jane       | Dane      |
    And I am logged in as an instructor

  Scenario:
    When I go to the gradebook page
    And I follow "Add an exam"
    And I fill in the following:
      | exam[name]                        | Exam 1 |
      | exam[grades_attributes][0][value] | 85     |
      | exam[grades_attributes][1][value] | 95     |
    And I press "Create"
    Then I should see "85%"
    And I should see "95%"
