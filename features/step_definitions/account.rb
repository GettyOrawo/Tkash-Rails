Given("I am on the accounts Page") do
  visit '/accounts'
end

Then("I should see {string}") do |value|
  expect(page).to have_content value
end

