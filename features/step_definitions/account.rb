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





