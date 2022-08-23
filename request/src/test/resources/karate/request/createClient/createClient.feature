Feature: service client POST
  AS QA Automation
  I want to create a client
  To validate the status code and response

  Background: consume service
    * url url

  Scenario: check the service POST Method
    * def requestCreate = {"name": "#(name)", "job": "#(job)"}
    * def responsePost = read('classpath:karate/request/createClient/responsePost.json')

    Given path 'users'
    And request requestCreate
    When method post
    Then status 201
    And match response == responsePost
    And assert response.name == name
    And assert response.job == job

  Scenario Outline: validate with invalid data POST Method

    * def responsePost = read('classpath:karate/request/createClient/responsePost.json')

    Given path 'users'
    And request <job>
    When  method post
    Then status 201
    And match response == responsePost


    Examples:
      | job                                 |
      | '787*'                              |
      | 'kjoileodisoasojdasdjaisdjsidjaisd' |



