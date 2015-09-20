Feature: User list
  In order to see system users
  I need some users.

  Scenario: List users
    Given system have such users:
      | login | password  |
      | user1 | password1 |
      | user2 | password2 |
    When the client requests GET /users
    Then the response should be JSON from all users

