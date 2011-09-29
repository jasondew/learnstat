Feature: gradebook

  Background:
    Given a course with the following students:
      | first_name | last_name |
      | John       | Doe       |

  Scenario: At the end of a course, it should show the students what they need on their final exam
    Given I am logged in as an instructor
    When I go to the gradebook page
    And I follow "Add an exam"
    And I fill in the following:
      | exam[name]                        | Exam 1 |
      | exam[grades_attributes][0][value] | 85     |
    And I press "Create"

    Given I am logged in as a student in the course

    And an closed quiz named "Quiz 1" with 5 questions
    And a response with 4 correct

    And an closed quiz named "Quiz 2" with 10 question
    And a response with 9 correct

    When I go to the gradebook page
    Then I should see "0%"
    Then I should see "16%"
    Then I should see "49%"
    Then I should see "82%"
    Then I should see "N/A"
