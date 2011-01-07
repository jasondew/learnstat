Feature: user authentication
  Users should be able to register, log in, or log out.

  Background:
    Given a course with registration code "stat110sp11"

  Scenario: user registration with a valid registration code
    When I go to the home page
    And I follow "Create an account"
    And I fill in the following:
      | user[first_name]            | John                    |
      | user[last_name]             | Doe                     |
      | user[email]                 | john.doe@email.com      |
      | user[blackboard_username]   | johndoe                 |
      | user[password]              | Password!               |
      | user[password_confirmation] | Password!               |
      | user[registration_code]     | stat110sp11             |
    And I press "Register"
    Then I should see a success message

  Scenario: user registration with an invalid registration code
    When I go to the home page
    And I follow "Create an account"
    And I fill in the following:
      | user[first_name]            | John                    |
      | user[last_name]             | Doe                     |
      | user[email]                 | john.doe@email.com      |
      | user[blackboard_username]   | johndoe                 |
      | user[password]              | Password!               |
      | user[password_confirmation] | Password!               |
      | user[registration_code]     | il33th4x0r              |
    And I press "Register"
    Then I should see "is invalid"

  Scenario: a user changing their account details
    Given I am logged in
    When I go to the edit account page
    And I fill in the following:
      | user[first_name]            | John         |
      | user[password]              | NewPassword! |
      | user[password_confirmation] | NewPassword! |
    And I press "Update"
    Then I should see a success message
    And I should be able to reauthenticate with "NewPassword!"
