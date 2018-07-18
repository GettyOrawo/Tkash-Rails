class Account < ApplicationRecord
  validates :balance, numericality: {only_integer: true}
  validates :balance, numericality: {greater_than: 0, less_than: 3000}
  validates :pin, length: { minimum: 4}
  validates :pin, numericality: {only_integer: true}
  validates :accountnumber, numericality: {only_integer: true}
  validates :accountnumber, uniqueness: true
end
