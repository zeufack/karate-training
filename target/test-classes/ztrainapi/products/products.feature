Feature: manage product in the database 
    Background: 
        * url baseUrl
        * def signIn = call read('userSignin.feature')
        * def authToken = 'Bearer ' + signIn.response.token
        * def user_id = signIn.response.user._id
        # * print authToken
    Scenario: delete of non-existing products
        Given path "/cart/delete"
        And header Authorization = authToken
        When request {"product": "jldsjfkjsoeibsle",   "user_id": "ljdsfkljdsjfoel"}
        And method delete
        Then match response != {"message": "product remove cart successfully"}
    
    
    Scenario: get all product user to cart api call with invalid user_id
        Given path "/cart/"
        And param id = "lsfjldjfldf"
        And header Authorization = authToken
        When method post 
        Then status 404 
    
    @760
    Scenario: get all product user to cart api call with invalid Token
        Given path "/cart/"
        And param id = user_id
        And header Authorization = "lorem ipsun dollor set"
        When method get 
        Then status 404
    
    @756
    Scenario: call delete specific product to cart with invalid body and headers
        Given path "/cart/delete"
        And header Authorization = authToken
        When request {"product": "product_id", "user_id": "user_id"}
        And method delete
        Then status 404
    
