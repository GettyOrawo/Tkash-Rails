Feature: 
  As a  user
  So that I can manage my finances
  I want to access my account

  Scenario: listing all accounts
  Given the following accounts exist
    | accountnumber | balance | pin  |
    | 254711903303  | 2000    | 1234 |
    | 254662244222  | 1500    | 5522 |
    | 254330099773  | 1100    | 3044 |
    | 254008899228  | 2989    | 6633 |
    | 254782373837  | 1456    | 7272 |
  And I am on the accounts Page
  Then I should see "balance"
  And I should see "pin"
  And I should see "accountnumber"
  And I should see "254711903303"
  And I should see "2000"
  And I should see "1234"

