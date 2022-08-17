Feature: Service client Get
  As QA Automation
  I want to consult a client
  To validate the status code and response

  Background: consume service
    * url url

    Scenario: Check the service get method

      * def responsesGet = read('classpath:karate/request/responseGet.json')
      Given path 'users', '2'
      When  method get
      Then status 200
      And match response == responsesGet
      And assert response.support.text == "To keep ReqRes free, contributions towards server costs are appreciated!"