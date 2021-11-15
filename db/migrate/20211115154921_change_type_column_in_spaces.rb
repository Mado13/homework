class ChangeTypeColumnInSpaces < ActiveRecord::Migration[6.1]
  def change
    rename_column :spaces, :type, :workspace_type
    change_column :spaces, :availability, :boolean, default: true
  end
end
