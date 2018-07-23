FactoryBot.define do
  factory :transaction do
    association :account
    amount "9.99"
    transaction_code "MyString"
    type_of_transaction ""
  end
end
