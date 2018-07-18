require 'rails_helper'
RSpec.describe Account, type: :model do
  describe "db structure" do
    it {is_expected.to have_db_column(:balance)}
    it {is_expected.to have_db_column(:pin)}
    it {is_expected.to have_db_column(:accountnumber)}
    it {is_expected.to have_db_column(:id)}
  end
  it "has valid factories" do
    expect(FactoryBot.build(:account)).to be_valid
  end
  describe "validations" do
    context "account balance" do
    it {is_expected.to validate_numericality_of(:balance).only_integer}
    it {is_expected.to validate_numericality_of(:balance).is_less_than(3000)}
    it {is_expected.to validate_numericality_of(:balance).is_greater_than(0)}
    end

    context "account pin" do
    it {is_expected.to validate_numericality_of(:pin).only_integer}
    end
    
    context "account number" do
    it {is_expected.to validate_numericality_of(:accountnumber).only_integer}
    it {is_expected.to validate_uniqueness_of(:accountnumber)}
    end
  end
end
