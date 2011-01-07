Feature: quizzes
  As an instructor, I should be able to generate quizzes
  for the students to take.  After the closing date, they
  should be graded with the grades visible to the students.

  Background:
    Given a course with the following students:
      | first_name |
      | Jason      |

  Scenario: adding a quiz
    Given I am logged in as an instructor
    When I go to the quizzes page
    And I follow "Add a quiz"
    And I fill in "Quiz 1" for "quiz[name]"
    And I select "2016" from "quiz[due_at(1i)]"
    And I press "Create"
    Then I should see "Quiz 1"

  Scenario: student taking an open quiz
    Given I am logged in as a student in the course
    When I go to the quizzes page

  Scenario: student trying to take a closed quiz
    Given I am logged in as a student in the course
    When I go to the quizzes page
