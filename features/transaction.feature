Feature: 
  As a  user
  So that I can manage my transactions
  I want to access my transactions
  Background:
    Given the following accounts exist
      | accountnumber | balance | pin  |
      | 254711903303  | 2000    | 1234 |
      | 254662244222  | 1500    | 5522 |
      | 254330099773  | 1100    | 3044 |
      | 254008899228  | 2989    | 6633 |
      | 254782373837  | 1456    | 7272 |

    And the following transactions exist
      | transaction_code | type_of_transaction| amount  | account      |
      | 1LE711A03303     | withdraw     | 1834.00 | 254711903303 |
      | 1RP66E244222     | checkbalance | 5572.50 | 254662244222 |
      | QY4330RT9773     | deposit      | 3004.75 | 254330099773 |
      | 15RZ0889RW28     | sendcash     | 6653.40 | 254008899228 |
      | 1RW7823738RQ     | withdraw     | 7292.00 | 254782373837 |

  Scenario: listing all transactions
    Given I am on the transactions page
    Then I should see "transaction_code"
    And I should see "type_of_transaction"
    And I should see "amount"
    And I should see "1LE711A03303"
    And I should see "withdraw"
    And I should see "1834.00"

