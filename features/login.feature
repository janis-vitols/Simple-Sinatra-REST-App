Feature: Login
  In order to login into system
  I need some users
  And should provide login & password.

  Scenario: Successful login
    Given system have such users:
      | login | password |
      | user  | password |
    When the client requests POST /login with params:
      | login | password |
      | user  | password |
    Then the response status should be 200

  Scenario: Unsuccessful login
    Given system have such users:
      | login | password  |
      | user  | password  |
    When the client requests POST /login with params:
      | login | password       |
      | user  | wrong_password |
    Then the response status should be 400

