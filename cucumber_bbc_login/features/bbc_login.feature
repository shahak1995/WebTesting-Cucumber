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

  Scenario: Putting a invalid password
    Given I access the bbc login page
    And I input username details
    And I input a invalid password
    When I try to login
    Then I receive an error message saying passwords invalid

  Scenario: Account details not matching with database
    Given I access the bbc login page
    And I input incorrect username details
    And I input incorrect password
    When I try to login
    Then I receive a message saying details not matching





    
