class RemoveFieldNameFromPayment < ActiveRecord::Migration[5.1]
  def change
    remove_column :payments, :user_id, :integer
  end
end
