Feature: Service client Post
  As QA Automation
  I want to create a pet
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: Check the service POST method
    * def requestLogin = read('classpath:karate/request/login/LoginBody.json')
    * def responseLogin = read('classpath:karate/request/login/ResponseLogin.json')

    Given path 'login'
    And request requestLogin
    When  method post
    Then status 200
    And match response == responseLogin

  Scenario: Check the service POST method
    * def requestLogin = read('classpath:karate/request/login/LoginBody.json')
    * set requestLogin.password = ""
    * def responseLogin = read('classpath:karate/request/login/ResponseLogin.json')

    Given path 'login'
    And request requestLogin
    When  method post
    Then status 400
