Feature: Search Functionality

  Scenario: Successful Search
    Given The user is on the homepage
    When The user enters a valid search query
    Then The results should match the entered text

