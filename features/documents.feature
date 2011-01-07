Feature: documents
  As an instructor I should be able to post documents
  and the students in the class should see them.

  Background:
    Given a course with the following students:
      | first_name | last_name |
      | John       | Doe       |
    And I am logged in as an instructor

  Scenario: an instructor adding a document and a student viewing
    When I go to the documents page
    And I follow "Add a document"
    And I fill in the following:
      | document[label] | Some document      |
    And I press "Create"
    Then I should see a success message
    And I should see "Some document"
    When I am logged in as a student in the course
    Then I should see "Some document"
