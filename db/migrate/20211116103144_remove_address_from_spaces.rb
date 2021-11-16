class RemoveAddressFromSpaces < ActiveRecord::Migration[6.1]
  def change
    remove_column :spaces, :address
  end
end
