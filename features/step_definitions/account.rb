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

