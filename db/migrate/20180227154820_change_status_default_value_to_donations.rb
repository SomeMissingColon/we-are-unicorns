class ChangeStatusDefaultValueToDonations < ActiveRecord::Migration[5.1]
  def change
    change_column_default :donations, :status, 'pending'
  end
end
