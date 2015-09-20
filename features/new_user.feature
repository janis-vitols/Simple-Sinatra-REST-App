Feature: New user
  In ortder to create new user
  I need to call POST on /new
  And should provide parameters: login & password

  Scenario: Sucessful new user creation
    When the client requests POST /new with params:
      | login | password |
      | user  | password |
    Then the response status should be 200

