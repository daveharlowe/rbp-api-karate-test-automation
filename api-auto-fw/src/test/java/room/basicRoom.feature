Feature: Exercise Room endpoint on restful booker platform

Background:
* url demoBaseUrl

Scenario: upload file
    Given path 'files'
    # refer to the second scenario in this file for how to set the upload filename using the 'multipart file' syntax
    And multipart file myFile = { read: 'test.pdf' }
    And multipart field message = 'hello world'
    When method post
    Then status 200
    And match response == { id: '#uuid', filename: 'test.pdf', message: 'hello world', contentType: 'application/pdf' }
    And def id = response.id