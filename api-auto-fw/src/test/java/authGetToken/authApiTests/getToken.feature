Feature: Login and Get Auth Token for use in C [R] UD REST API operations

Background:


Scenario: Login and Get Token
    Given url "http://192.168.100.114:3004/"
    Given path 'auth/login'
    And request  {  "username": "admin",   "password": "password"   }
    When method post
    Then status 200
    And print responseHeaders
    And def authToken = responseHeaders['Set-Cookie'][0]
    And print authToken
