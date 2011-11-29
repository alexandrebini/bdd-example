Feature:  check bank statement online
  In order to reduce the time I spend going to the bank
  As a bank customer
  I want to check my bank statement online

  Scenario: check statement
    Given I'm a bank customer 
    And I have 5 bank releases
    When I get my bank statement
    Then I should have my 5 releases sorted by date