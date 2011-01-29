Feature: quizzes
  As an instructor, I should be able to generate quizzes
  for the students to take.  After the closing date, they
  should be graded with the grades visible to the students.

  Background:
    Given a course with the following students:
      | first_name |
      | Jason      |
      | Patricia   |

  Scenario: adding a quiz
    Given I am logged in as an instructor
    And a question with the following choices:
      | right answer   |
      | wrong answer 1 |
      | wrong answer 2 |
    When I go to the quizzes page
    And I follow "Add a quiz"
    And I fill in "Quiz 1" for "quiz[name]"
    And I select "2016" from "quiz[viewable_at(1i)]"
    And I select "2016" from "quiz[due_at(1i)]"
    And I press "Create"
    And I follow "Add question"
    And I press "Add to quiz"
    Then I should see a success message
    And I should see "Questions: 1"

  Scenario: student taking an open quiz
    Given I am logged in as a student in the course
    And an open quiz named "Quiz 1" with 1 question
    When I go to the quizzes page
    Then I should see "Quiz 1"
    When I follow "Take quiz"
    And I choose "quiz_response_quiz_question_responses_attributes_0_question_choice_id_1"
    And I press "Submit answers"
    Then I should see "1 of 1 questions attempted"

  Scenario: student trying to take a closed quiz
    Given I am logged in as a student in the course
    And a closed quiz named "Quiz 1"
    When I go to the quizzes page
    Then I should see "Quiz 1"
    And I should not see "Take quiz"

  Scenario: student trying to view a hidden quiz
    Given I am logged in as a student in the course
    And a hidden quiz named "Quiz 1"
    When I go to the quizzes page
    Then I should not see "Quiz 1"

  Scenario: a student retaking a quiz
    Given I am logged in as a student in the course
    And an open quiz named "Quiz 1" with 2 questions
    When I go to the quizzes page
    And I follow "Take quiz"
    And I choose "quiz_response_quiz_question_responses_attributes_0_question_choice_id_1"
    And I press "Submit answers"
    Then I should see "1 of 2 questions attempted"
    When I go to the quizzes page
    And I follow "Change quiz answers"
    And I choose "quiz_response_quiz_question_responses_attributes_0_question_choice_id_1"
    And I choose "quiz_response_quiz_question_responses_attributes_1_question_choice_id_4"
    And I press "Submit answers"
    Then I should see "2 of 2 questions attempted"

  Scenario: a student viewing a closed quiz
    Given I am logged in as a student in the course
    And an closed quiz named "Quiz 1" with 2 questions
    And a response with 1 correct
    When I go to the quizzes page
    And I follow "Quiz 1"
    Then I should see "answer" within ".correct"
    And I should see "answer" within ".incorrect"
