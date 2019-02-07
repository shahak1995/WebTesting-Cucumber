Feature: BBC Login

  Scenario: Inputting incorrect username and credentials shows an error
    Given I access the bbc login page
    And I input incorrect username details
    And I input incorrect password details
    When I try to login
    Then I receive an error for not finding the account

  Scenario: Inputting password credentials that are too short in character length
    Given I access the bbc login page
    And I input incorrect username details
    And I input password details that are short in character length
    When I try to login
    Then I receive an error for the password being short

  Scenario: Not inputting anything for the password field
    Given I access the bbc login page
    And I input incorrect username details
    And I input password details that are short in character length
    When I try to login
    Then I receive an error for the password being short



    
