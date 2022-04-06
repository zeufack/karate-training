Feature: authentication

  Background:
    * url baseUrl

  @706
  Scenario Outline: test login api call with invalid required request body

    * def user = 
    """
      {
        "email": "test@test.com",
        "password": "dklsjdfl"
      }
    """
    Given path '/auth/login'
    And request {"email": <email>, "password": <password>} 
    When method post
    Then status <port>
  Examples:
    | email           | password       | port |
    | "test@test.com" | "23opujlllkjh" | 401  |
    | "test@test.com" | "hddj"         | 400  |
    | "te@test.com"   | "hddj"         | 400  |

  @OF-726
  Scenario: try to register a user with and already used email address
    * def user = 
    """
      {
        "email": "test@test.com",
        "password": "password",
        "adress":"douala bassong",
        "age": 10
      }
    """
    Given path '/user/register'
    And request user
    When method post
    Then status 400


  @705
  Scenario: request failure when HTTP headers are invalid 
    * def user =
      """
      {
        "password": "12345678",
        "email": "test@test.com",
      }
      """

    Given path "/auth/login"
    And request user
    When method post
    Then status 201

  
  

    
  