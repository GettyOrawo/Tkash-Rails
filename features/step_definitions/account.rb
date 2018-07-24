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
Then("I change {string} to {string}") do |field, value|
  fill_in field, with:value
end

Then("I submit the changes") do
  click_button 'update'
end

Then("the new pin for {string} should be {string}") do |account, pin|
  acc = Account.find_by_accountnumber account
  expect("#{acc.pin}").to eq pin
end
Then("pin for {string} should remain {string}") do |account, pin|
  acc = Account.find_by_accountnumber account
  expect("#{acc.pin}").to eq pin
end
When("I am on the new accounts page") do
  visit '/accounts/new'
end

Then("I fill in {string} with {string}") do |field, value|
  fill_in field, with:value
end
Then("I submit the details") do
  click_button 'create new account'
end
When("I click on the {string}") do |string|
  click_link string
end
