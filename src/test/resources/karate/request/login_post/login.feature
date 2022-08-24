@PossiteveFeature
Feature:
AS QA Automation
I want to log in a client
To validate the status code and response

Background: consume service
* url "https://reqres.in/"

Scenario:check the service POST method
* def requestCreate = read('classpath:karate/request/login_post/RequestPost.json')
* def responsePost =  read('classpath:karate/request/login_post/ResponsePost.json')
Given path 'api' , 'login'
And request  requestCreate
When method POST
Then status 200
And  match response == responsePost

