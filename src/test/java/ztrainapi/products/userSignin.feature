Feature: signin a new user and get the token
    Background:
        * def user = 
        """
            {
                "email": "test@test.com",
                "password": "12345678"
            }

        """ 
        * url baseUrl
    Scenario: signin
        Given path "/auth/login"
        And request user
        Then method post