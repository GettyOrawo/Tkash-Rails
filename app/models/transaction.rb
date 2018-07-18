class Transaction < ApplicationRecord
  belongs_to :account
  validates :transaction_code, uniqueness: true
end
