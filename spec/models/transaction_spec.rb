require 'rails_helper'

RSpec.describe Transaction, type: :model do
  it "has valid factories" do
    expect(FactoryBot.build(:transaction)).to be_valid
  end
  describe "validate transaction fields" do
    it{is_expected.to have_db_column(:amount)}
    it{is_expected.to have_db_column(:type)}
    it{is_expected.to have_db_column(:transaction_code)}
    it{is_expected.to have_db_column(:account_id)}
  end
  describe "validations" do
    context "Transaction transaction code" do
    it {is_expected.to validate_uniqueness_of(:transaction_code)}
    end
  end


end
