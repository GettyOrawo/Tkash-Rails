Feature: 
  As a  user
  So that I can manage my finances
  I want to access my account
  Background:
    Given the following accounts exist
      | accountnumber | balance | pin  |
      | 254712345     | 2000    | 1234 |
      | 254662244222  | 1500    | 5522 |
      | 254330099773  | 1100    | 3044 |
      | 254008899228  | 2989    | 6633 |
      | 254782373837  | 1456    | 7272 |

  Scenario: listing all accounts
    And I am on the accounts Page
    Then I should see "balance"
    And I should see "pin"
    And I should see "accountnumber"
    And I should see "254712345"
    And I should see "2000"
    And I should see "1234"

  Scenario: show a single account
    When I go to the "254712345" details
    Then I should see "254712345"
    And I should see "2000"
    And I should see "1234"
    When I go to the "254662244222" details
    Then I should see "254662244222"
    And I should see "5522"
    And I should see "1500"
    And I should not see "254712345"

  Scenario: Access account details from index
    Given I am on the accounts Page
    When I click on "254712345"
    Then I should see "254712345"
    And I should not see "254662244222"

  Scenario: Edit account details
    Given I am on the accounts Page
    Then I should see "254712345"
    Then I click on "254712345"
    And I should see "edit"
    Then I click on "edit"
    When I am on the "254712345" edit details
    Then I should see "accountnumber"
    And I should see "pin"
    And I should see "balance"

  Scenario: Edit account successfully
    Given I am on the "254712345" edit details
    Then I change "account_pin" to "3333"
    And I submit the changes
    Then the new pin for "254712345" should be "3333"

  Scenario: Edit with wrong details
    Given I am on the "254712345" edit details
    Then I change "account_pin" to ""
    And I submit the changes
    Then I should see "Pin can't be blank"
    And I should see "Pin is too short (minimum is 4 characters)"
    And pin for "254712345" should remain "1234" 

  Scenario: Successfully create a new account
    Given I am on the accounts Page
    When I click on the "create new account"
    And I am on the new accounts page
    Then I should see "balance"
    And I should see "pin"
    And I should see "accountnumber"
    Then I fill in "account_accountnumber" with "254711904404"
    And I fill in "account_pin" with "6666"
    And I fill in "account_balance" with "1212"
    And I submit the details
    When I go to the "254711904404" details
    And I should see "254711904404"
    And I should see "1212"
    And I should see "6666"


