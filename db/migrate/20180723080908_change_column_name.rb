class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :transactions, :type, :type_of_transaction
  end
end
