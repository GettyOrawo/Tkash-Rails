Given("I am on the accounts Page") do
  visit '/accounts'
end
Given("the following accounts exist") do |table|
  # binding.pry
  table.hashes.each{|hash| FactoryBot.create(:account, hash)}
end

Then("I should see {string}") do |value|
  expect(page).to have_content value
end

When("I go to the {string} details") do |string|
  account = Account.find_by_accountnumber string
  visit "/accounts/#{account.id}"
end
Then("I should not see {string}") do |string|
 expect(page).not_to have_content string
end
When("I click on {string}") do |string|
  click_link string
end
Given("the following transactions exist") do |table|
  table.hashes.each do |hash| 
  acc=Account.find_by_accountnumber hash["account"]
  hash["account"]=acc
  FactoryBot.create(:transaction, hash)
  end
end

Given("I am on the transactions page") do
  visit '/transactions'
end
When("I am on the {string} edit details") do |string|
  account = Account.find_by_accountnumber string
  visit "/accounts/edit/#{account.id}"
end
Then("I fill in {string} with new details") do |string|
  fill_in("account_pin", :with => '1234')
  fill_in("account_balance", :with => '1190')
end

