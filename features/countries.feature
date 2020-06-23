@countries
Feature: Retrieving countries of the world
  Scenario: check status code of the response
    Given I call countries of the world
    Then I should get response 200
  
  
  Scenario: check countries has united kingdom
    Given I call countries of the world
    Then I should see United Kingdom of Great Britain and Northern Ireland in the response

  Scenario: validate json schema for country
    Given I call information for italy
    Then its schema should be correct
    
     

