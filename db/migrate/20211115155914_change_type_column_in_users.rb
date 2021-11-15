class ChangeTypeColumnInUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :owner, :boolean, default: false
  end
end
