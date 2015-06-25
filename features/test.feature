#EPIC - I can search on google

#Story = Feature
Feature: "search on google is successful"

#Acceptance Criteria
  Background:
    Given I open my browser
    And i enter "www.google.com.au"

  Scenario: When search is successful
    When I search for "cucumber ruby"
    Then I get a list of results about "cucumber"

  Scenario: When search is unsuccessful
    When I search for "zpakdsfsfdaodhebwk12345"
    Then I get an error message that "zpakdsfsfdaodhebwk12345" did not match anywhere

  Scenario Outline: I want to translate a list of criterias
    When I search for "<criteria> to <lenguage>"
    Then It translates to "<translation>"
  Examples:
    |criteria|lenguage|translation|
    |hello   |spanish |hola       |
    |hello   |german  |hall0      |
    |hello   |italian |ciao       |
