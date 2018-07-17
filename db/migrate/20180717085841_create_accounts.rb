class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.integer :balance
      t.integer :pin
      t.integer :accountnumber

      t.timestamps
    end
  end
end
