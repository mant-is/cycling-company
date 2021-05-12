class ChangeColumnTypeInRidesToLevel < ActiveRecord::Migration[6.1]
  def change
    remove_column :rides, :type
    add_column :rides, :level, :string
  end
end
