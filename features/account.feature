Feature: 
  As a  user
  So that I can manage my finances
  I want to access my account
  Background:
    Given the following accounts exist
      | accountnumber | balance | pin  |
      | 254711903303  | 2000    | 1234 |
      | 254662244222  | 1500    | 5522 |
      | 254330099773  | 1100    | 3044 |
      | 254008899228  | 2989    | 6633 |
      | 254782373837  | 1456    | 7272 |

  Scenario: listing all accounts
    And I am on the accounts Page
    Then I should see "balance"
    And I should see "pin"
    And I should see "accountnumber"
    And I should see "254711903303"
    And I should see "2000"
    And I should see "1234"

  Scenario: show a single account
    When I go to the "254711903303" details
    Then I should see "254711903303"
    And I should see "2000"
    And I should see "1234"
    When I go to the "254662244222" details
    Then I should see "254662244222"
    And I should see "5522"
    And I should see "1500"
    And I should not see "254711903303"

  Scenario: Access account details from index
    Given I am on the accounts Page
    When I click on "254711903303"
    Then I should see "254711903303"
    And I should not see "254662244222"

  Scenario: Edit account details
    Given I am on the accounts Page
    Then I should see "254711903303"
    Then I click on "254711903303"
    And I should see "edit"
    Then I click on "edit"
    When I go to the "254711903303" edit details
    Then I should see "accountnumber"
    And I should see "pin"
    And I should see "balance"

