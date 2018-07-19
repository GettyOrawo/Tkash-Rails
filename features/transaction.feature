Feature: 
  As a  user
  So that I can manage my transactions
  I want to access my transactions
  Background:
    Given the following transactions exist
      | transaction_code | type         | amount    |
      | 1LE711A03303     | withdraw     | 1834.00   |
      | 1RP66E244222     | checkbalance | 5572.50   |
      | QY4330RT9773     | deposit      | 3004.75   |
      | 15RZ0889RW28     | sendcash     | 6653.40   |
      | 1RW7823738RQ     | withdraw     | 7292.00   |

  Scenario: listing all transactions
    Given I am on the transactions page
    Then I should see "transaction_code"
    And I should see "type"
    And I should see "amount"
    And I should see "1LE711A03303"
    And I should see "withdraw"
    And I should see "1834.00"

